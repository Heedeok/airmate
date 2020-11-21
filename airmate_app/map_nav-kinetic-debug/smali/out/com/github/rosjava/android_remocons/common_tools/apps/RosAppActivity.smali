.class public abstract Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;
.super Lorg/ros/android/RosActivity;
.source "RosAppActivity.java"


# instance fields
.field private androidApplicationName:Ljava/lang/String;

.field private appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

.field private dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

.field private dashboardResourceId:I

.field private defaultMasterAppName:Ljava/lang/String;

.field private defaultMasterName:Ljava/lang/String;

.field private mainWindowId:I

.field private masterAppName:Ljava/lang/String;

.field protected masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

.field protected masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

.field private nodeConfiguration:Lorg/ros/node/NodeConfiguration;

.field private nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

.field protected params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

.field protected remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

.field private remoconActivity:Ljava/lang/String;

.field private remoconExtraData:Ljava/io/Serializable;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "notificationTicker"    # Ljava/lang/String;
    .param p2, "notificationTitle"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/ros/android/RosActivity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterAppName:Ljava/lang/String;

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconActivity:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconExtraData:Ljava/io/Serializable;

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboardResourceId:I

    .line 72
    iput v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->mainWindowId:I

    .line 73
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 80
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    invoke-direct {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    .line 81
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    invoke-direct {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    .line 105
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->androidApplicationName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)Lorg/ros/android/NodeMainExecutorService;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;

    .line 55
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    return-object v0
.end method

.method private managePairedRobotApplication()Z
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method protected getMasterNameSpace()Lorg/ros/namespace/NameResolver;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->getMasterNameSpace()Lorg/ros/namespace/NameResolver;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lorg/ros/node/NodeMainExecutor;)V
    .registers 5
    .param p1, "nodeMainExecutor"    # Lorg/ros/node/NodeMainExecutor;

    .line 246
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    .line 247
    nop

    .line 248
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getMasterUri()Ljava/net/URI;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 250
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    if-ne v0, v1, :cond_27

    .line 251
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->getMasterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->setRobotName(Ljava/lang/String;)V

    goto :goto_4a

    .line 254
    :cond_27
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->setMaster(Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;)V

    .line 255
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->setRobotName(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->PAIRED:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    if-ne v0, v1, :cond_4a

    .line 258
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->setRobotName(Ljava/lang/String;)V

    .line 263
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v2, "masterNameResolver"

    invoke-virtual {v1, v2}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 264
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->waitForResolver()V

    .line 266
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v2, "dashboard"

    invoke-virtual {v1, v2}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 267
    return-void
.end method

.method protected onAppTerminate()V
    .registers 2

    .line 274
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    if-eq v0, v1, :cond_47

    .line 344
    const-string v0, "RosApp"

    const-string v1, "app terminating and returning control to the remocon."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_app_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppChooser"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "com.github.rosjava.android_remocons.master.MasterDescription"

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconExtraData:Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->finish()V

    .line 353
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_4e

    .line 354
    :cond_47
    const-string v0, "RosApp"

    const-string v1, "backpress processing for RosAppActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_4e
    invoke-super {p0}, Lorg/ros/android/RosActivity;->onBackPressed()V

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 110
    invoke-super {p0, p1}, Lorg/ros/android/RosActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->mainWindowId:I

    if-nez v0, :cond_f

    .line 113
    const-string v0, "RosApp"

    const-string v1, "You must set the dashboard resource ID in your RosAppActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_f
    iget v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboardResourceId:I

    if-nez v0, :cond_1b

    .line 118
    const-string v0, "RosApp"

    const-string v1, "You must set the dashboard resource ID in your RosAppActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->requestWindowFeature(I)Z

    .line 124
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 126
    iget v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->mainWindowId:I

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->setContentView(I)V

    .line 128
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    invoke-direct {v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;-><init>()V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    .line 130
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterName:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 131
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;->setMasterName(Ljava/lang/String;)V

    .line 157
    :cond_3f
    invoke-static {}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->values()[Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_45
    if-ge v2, v1, :cond_73

    aget-object v3, v0, v2

    .line 159
    .local v3, "mode":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.github.rosjava.android_remocons.common_tools.rocon.Constants."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_app_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    .line 160
    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    if-eqz v4, :cond_70

    .line 161
    iput-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    .line 162
    goto :goto_73

    .line 157
    .end local v3    # "mode":Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 166
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    if-nez v0, :cond_88

    .line 168
    const-string v0, "RosApp"

    const-string v1, "We are running as standalone :("

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterAppName:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    goto/16 :goto_1cb

    .line 178
    :cond_88
    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 180
    .local v0, "yaml":Lorg/yaml/snakeyaml/Yaml;
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Parameters"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "paramsStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Remappings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "remapsStr":Ljava/lang/String;
    const-string v3, "RosApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v3, "RosApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remappings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v1, :cond_131

    :try_start_cf
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_131

    .line 188
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 189
    .local v3, "paramsList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_131

    .line 190
    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    invoke-virtual {v4, v3}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->putAll(Ljava/util/Map;)V

    .line 191
    const-string v4, "RosApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/ClassCastException; {:try_start_cf .. :try_end_f8} :catch_f9

    goto :goto_131

    .line 194
    .end local v3    # "paramsList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_f9
    move-exception v3

    .line 195
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast parameters yaml string to a hash map ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RosApp"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot cast parameters yaml string to a hash map ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_131
    :goto_131
    nop

    .line 200
    if-eqz v2, :cond_196

    :try_start_134
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_196

    .line 201
    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 202
    .local v3, "remapsList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_196

    .line 203
    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    invoke-virtual {v4, v3}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->putAll(Ljava/util/Map;)V

    .line 204
    const-string v4, "RosApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remappings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/ClassCastException; {:try_start_134 .. :try_end_15d} :catch_15e

    goto :goto_196

    .line 207
    .end local v3    # "remapsList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_15e
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast parameters yaml string to a hash map ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RosApp"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot cast parameters yaml string to a hash map ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_196
    :goto_196
    nop

    .line 212
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "RemoconActivity"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconActivity:Ljava/lang/String;

    .line 215
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 218
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    iput-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->remoconExtraData:Ljava/io/Serializable;

    .line 221
    nop

    .line 222
    :try_start_1bc
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.github.rosjava.android_remocons.master.MasterDescription"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    iput-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;
    :try_end_1ca
    .catch Ljava/lang/ClassCastException; {:try_start_1bc .. :try_end_1ca} :catch_1ea

    .line 226
    nop

    .line 235
    .end local v0    # "yaml":Lorg/yaml/snakeyaml/Yaml;
    .end local v1    # "paramsStr":Ljava/lang/String;
    .end local v2    # "remapsStr":Ljava/lang/String;
    :goto_1cb
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    if-nez v0, :cond_1e9

    .line 236
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    .line 237
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    iget v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboardResourceId:I

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->setView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_1e9
    return-void

    .line 223
    .restart local v0    # "yaml":Lorg/yaml/snakeyaml/Yaml;
    .restart local v1    # "paramsStr":Ljava/lang/String;
    .restart local v2    # "remapsStr":Ljava/lang/String;
    :catch_1ea
    move-exception v3

    .line 224
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Master description expected on intent on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RosApp"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v4, Lorg/ros/exception/RosRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Master description expected on intent on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Master description missing on intent on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RosApp"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Master description missing on intent on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onDestroy()V
    .registers 1

    .line 338
    invoke-super {p0}, Lorg/ros/android/RosActivity;->onDestroy()V

    .line 339
    return-void
.end method

.method protected releaseDashboardNode()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-interface {v0, v1}, Lorg/ros/node/NodeMainExecutor;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V

    .line 320
    return-void
.end method

.method protected releaseMasterNameResolver()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterNameResolver:Lcom/github/rosjava/android_remocons/common_tools/apps/MasterNameResolver;

    invoke-interface {v0, v1}, Lorg/ros/node/NodeMainExecutor;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V

    .line 316
    return-void
.end method

.method protected setCustomDashboardPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboard:Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;

    invoke-virtual {v0, p1}, Lcom/github/rosjava/android_remocons/common_tools/dashboards/Dashboard;->setCustomDashboardPath(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected setDashboardResource(I)V
    .registers 2
    .param p1, "resource"    # I

    .line 84
    iput p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->dashboardResourceId:I

    .line 85
    return-void
.end method

.method protected setDefaultAppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterAppName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected setDefaultMasterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->defaultMasterName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected setMainWindowResource(I)V
    .registers 2
    .param p1, "resource"    # I

    .line 88
    iput p1, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->mainWindowId:I

    .line 89
    return-void
.end method

.method public startMasterChooser()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->appMode:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    if-ne v0, v1, :cond_a

    .line 296
    invoke-super {p0}, Lorg/ros/android/RosActivity;->startMasterChooser()V

    goto :goto_26

    .line 299
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->nodeMainExecutorService:Lorg/ros/android/NodeMainExecutorService;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->masterDescription:Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;

    invoke-virtual {v2}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterDescription;->getMasterUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/ros/android/NodeMainExecutorService;->setMasterUri(Ljava/net/URI;)V

    .line 300
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;-><init>(Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 306
    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_25
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_25} :catch_27

    .line 310
    nop

    .line 312
    :goto_26
    return-void

    .line 307
    :catch_27
    move-exception v0

    .line 309
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
