# Trebuchet 去抽屉版（非官方修改版 · 完整反编译工程）

基于 [LineageOS Trebuchet](https://github.com/LineageOS/android_packages_apps_Trebuchet) `lineage-21.0` 分支（Android 14 Launcher3）修改的第三方桌面启动器。**与 LineageOS 项目无官方关联。**

本仓库包含**完整的 apktool 反编译工程**——无需原版 APK，clone 后运行一条脚本即可重建可安装的 APK。

## 功能改动

- 移除应用抽屉，全部应用图标直接平铺在桌面
- 文件夹「添加应用」界面重构：取消勾选的图标可移出文件夹回到桌面
  - 桌面自动寻找空位放置（当前页满时自动放到其他有空的页面）
  - 所有页面都满时图标保留在文件夹内，不会叠加或丢失
  - 数据库与内存模型同步写入，重启后状态保持
- 内置看门狗取证与分级日志（运行时写入 `Android/data/com.android.launcher/files/`）

修改内容详见 [MODIFICATIONS.md](MODIFICATIONS.md)。

## 一键重建

依赖：JDK 17+（keytool）、apktool 2.9+、Android build-tools（zipalign、apksigner），均在 PATH 中。

```bash
./build.sh        # Linux / macOS
build.bat         # Windows
```

脚本会自动：`apktool b` 构建 → `zipalign` 对齐 → 无签名密钥时自动生成本地 debug keystore → `apksigner` 签名 → 验签。产物为 `Launcher-nodrawer.apk`。

手动构建：

```bash
apktool b --use-aapt2 -f -o out.apk .
zipalign -f -p 4 out.apk out-aligned.apk
apksigner sign --ks 你的keystore --out Launcher-nodrawer.apk out-aligned.apk
```

## 适用环境

- LineageOS 21（Android 14），在 Xiaomi MIX 2S (polaris) 上开发测试
- 包名 `com.android.launcher`（替换/覆盖系统桌面需要匹配签名；作为普通用户应用安装亦可）

## 许可证

原作品与本项目均以 **Apache License 2.0** 授权：

- 上游版权：Copyright (C) 2008 The Android Open Source Project（各源文件头保留，见 `Android.bp` 的 `Android-Apache-2.0` 声明）
- 本仓库的全部修改同样以 Apache License 2.0 发布，详见 [LICENSE](LICENSE)
- 修改清单见 [MODIFICATIONS.md](MODIFICATIONS.md)（Apache 2.0 第 4(b) 条要求的修改声明）

> 免责声明：本项目按「现状」提供，不附带任何担保。替换系统桌面应用前请自行备份数据。
