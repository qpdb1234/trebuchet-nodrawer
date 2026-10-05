# 修改清单（Apache 2.0 §4(b) 修改声明）

基线：LineageOS Trebuchet `lineage-21.0`（AOSP Launcher3，Apache 2.0）。
本工程 versionCode 104（`apktool.yml`）。所有改动集中在文件夹添加界面（`FolderAddDialog`）与桌面加载路径。

## 新增类（`smali_classes16/com/android/launcher3/folder/`）

| 文件 | 职责 |
|---|---|
| `FolderAddDialog$StepMover.smali` | 移出引擎。两阶段：phase A（主线程）做空位分配（`GridOccupancy.findVacantCell`/`markCells`）+ 坐标写入 + 原版 `ModelWriter.moveItemInDatabase` 写库；phase B（`postDelayed` 16ms）逐个 inflate 并 `Workspace.addInScreenFromBind` 挂载。当前页满时走 `tryPlaceOnOtherPages` 跨页找空位；全部页面已满则图标留在文件夹。仅成功放置的图标进入 `mMoved`（文件夹移除与挂载都只处理它，杜绝叠加） |
| `FolderAddDialog$Watchdog.smali` | 取证看门狗线程。1.2 秒后转储全线程栈与 `/proc` 状态，并发 SIG3 生成全进程 trace 到 `/data/anr/`（`sSigSent` 静态门保证单次） |
| `FolderAddDialog$GlobalDedup.smali` | 分级日志。`logStage`/`reportError` 写入应用外部目录，静态缓存日志目录避免重复 binder 调用 |
| `FolderAddDialog$CrashLogger.smali` | 未捕获异常记录（线程名 + 栈），并 killProcess 兜底防止「主线程已死进程僵而不活」 |
| `FolderAddDialog$Preloader.smali` | 关键类预热，规避 ART 类验证在热路径首次触发的 freeze |

## 修改类

| 文件 | 改动 |
|---|---|
| `FolderAddDialog.smali` 及其 `$AddButtonListener`/`$ConfirmListener`/`$RemoveHelper`/`$AppsAdapter` | 确认流程接线：桌面/文件夹重复扫描、勾选变更延迟处理、RemoveHelper 去重清理、调用 StepMover |
| 去抽屉相关（workspace/all-apps 加载路径的多处 smali） | 移除应用抽屉视图层，图标平铺桌面；hotseat 与隐藏图标不去重 |

## 日志打点字典（排查用）

| 前缀 | 含义 |
|---|---|
| `confirm-enter` … `confirm-3-unchecked-done` | 确认按钮处理流程各阶段 |
| `desktopdup-scan(-done)` | 桌面重复图标扫描 |
| `rh-pre-new` / `rh-ctor-ok` / `rh-start-done` | RemoveHelper 生命周期 |
| `rd-enter0` / `rd-occ0` / `grid-WxH-nN` | phase A 进入 / 占用矩阵获取 / 网格几何 |
| `rc-get-N` / `rc-vac-0/1` / `rc-mark-N` | 逐图标：取 item / 空位查找结果 / 占位标记 |
| `rd-cell-N` / `rd-props-N` / `rd-task-N` / `rd-done` / `rd-rmall` / `rd-post` | 坐标写入 / 属性写入 / 写库 / 循环完成 / 文件夹移除 / phase B 排程 |
| `rc-xpg-0/1`、`xpg-p-N` / `xpg-hit-N` / `xpg-miss-0` | 跨页放置：结果 / 逐页尝试 / 命中页 / 全满 |
| `visual-N` / `visual-done` | phase B 逐图标挂载进度 |
| `preload-ok` / `preload-err` | 类预热结果 |
| `SIG3\|sent`、`<tag>-SIG3` | 全进程 trace 信号（单次） |
| `rd-crash` / `xpg-crash` / `visual-crash` / `uncaught-*` | 对应阶段的异常捕获点 |

## 工具

`tools/check88.py`：静态校验器。扫描全工程 smali，检查跨类/跨包的方法与字段访问是否会让 dex 验证器拒绝（`invoke-virtual/super on private`、跨包 protected 字段、跨类 private 构造等），并验证全部 in-dex 引用可解析。用法：`python3 check88.py <apktool工程目录>`。
