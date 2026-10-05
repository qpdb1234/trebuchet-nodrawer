.class public Lcom/android/launcher3/widget/picker/WidgetRecommendationCategoryProvider;
.super Ljava/lang/Object;
.source "WidgetRecommendationCategoryProvider.java"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetRecommendationCategoryProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCategoryFromApplicationCategory(Landroid/content/Context;ILjava/lang/String;)Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationCategory"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$array;->weather_recommendations:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "weatherRecommendationAllowlist":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 88
    .local v5, "allowedWeatherComponentName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v2, Lcom/android/launcher3/R$string;->weather_widget_recommendation_category_label:I

    invoke-direct {v1, v2, v4}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v1

    .line 87
    .end local v5    # "allowedWeatherComponentName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    nop

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$array;->fitness_recommendations:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "fitnessRecommendationAllowlist":[Ljava/lang/String;
    array-length v3, v1

    move v5, v2

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v3, :cond_3

    aget-object v7, v1, v5

    .line 99
    .local v7, "allowedFitnessComponentName":Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 100
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v3, Lcom/android/launcher3/R$string;->fitness_widget_recommendation_category_label:I

    invoke-direct {v2, v3, v6}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v2

    .line 98
    .end local v7    # "allowedFitnessComponentName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    :cond_3
    const/4 v3, 0x7

    if-ne p1, v3, :cond_4

    .line 106
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v4, Lcom/android/launcher3/R$string;->productivity_widget_recommendation_category_label:I

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v3

    .line 110
    :cond_4
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_5

    .line 111
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v4, Lcom/android/launcher3/R$string;->news_widget_recommendation_category_label:I

    invoke-direct {v2, v4, v3}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v2

    .line 115
    :cond_5
    const/4 v5, 0x4

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_7

    if-eq p1, v6, :cond_7

    if-ne p1, v4, :cond_6

    goto :goto_2

    .line 124
    :cond_6
    new-instance v3, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v4, Lcom/android/launcher3/R$string;->others_widget_recommendation_category_label:I

    invoke-direct {v3, v4, v2}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v3

    .line 119
    :cond_7
    :goto_2
    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    sget v3, Lcom/android/launcher3/R$string;->social_and_entertainment_widget_recommendation_category_label:I

    invoke-direct {v2, v3, v5}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;-><init>(II)V

    return-object v2
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/picker/WidgetRecommendationCategoryProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->widget_recommendation_category_provider_class:I

    .line 47
    const-class v2, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategoryProvider;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategoryProvider;

    return-object v0
.end method


# virtual methods
.method public getWidgetRecommendationCategory(Landroid/content/Context;Lcom/android/launcher3/model/WidgetItem;)Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 63
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "widgetComponentName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 69
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->category:I

    .line 70
    .local v2, "predictionCategory":I
    invoke-static {p1, v2, v1}, Lcom/android/launcher3/widget/picker/WidgetRecommendationCategoryProvider;->getCategoryFromApplicationCategory(Landroid/content/Context;ILjava/lang/String;)Lcom/android/launcher3/widget/picker/WidgetRecommendationCategory;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 72
    .end local v2    # "predictionCategory":I
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve application category when determining the widget category for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WidgetRecommendationCategoryProvider"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v1    # "widgetComponentName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
