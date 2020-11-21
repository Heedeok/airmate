.class public Lcom/github/rosjava/android_apps/map_nav/MainActivity;
.super Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;
.source "MainActivity.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "ydmm"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private cameraView:Lorg/ros/android/view/RosImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/android/view/RosImageView<",
            "Lsensor_msgs/CompressedImage;",
            ">;"
        }
    .end annotation
.end field

.field private chooseMapButton:Landroid/widget/Button;

.field public chooseMapDialog:Landroid/app/AlertDialog;

.field private mainLayout:Landroid/view/ViewGroup;

.field private mapPosePublisherLayer:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

.field private mapView:Lorg/ros/android/view/visualization/VisualizationView;

.field private nodeConfiguration:Lorg/ros/node/NodeConfiguration;

.field private nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

.field private rosTextView:Lorg/ros/android/view/RosTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/android/view/RosTextView<",
            "Lstd_msgs/Float32;",
            ">;"
        }
    .end annotation
.end field

.field private sideLayout:Landroid/view/ViewGroup;

.field private virtualJoystickView:Lorg/ros/android/view/VirtualJoystickView;

.field private waitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    const-string v0, "Map nav"

    const-string v1, "Map nav"

    invoke-direct {p0, v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private createNotificationChannel()V
    .registers 6

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    .line 356
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "name":Ljava/lang/CharSequence;
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x3

    .line 359
    .local v2, "importance":I
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "ydmm"

    invoke-direct {v3, v4, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 360
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 363
    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 364
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 366
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "importance":I
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2a
    return-void
.end method

.method private readAvailableMapList()V
    .registers 5

    .line 218
    const-string v0, "Waiting..."

    const-string v1, "Waiting for map list"

    invoke-direct {p0, v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeShowWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 219
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MapManager;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;-><init>(Landroid/content/Context;Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;)V

    .line 220
    .local v0, "mapManager":Lcom/github/rosjava/android_apps/map_nav/MapManager;
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getMasterNameSpace()Lorg/ros/namespace/NameResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setNameResolver(Lorg/ros/namespace/NameResolver;)V

    .line 221
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setFunction(Ljava/lang/String;)V

    .line 222
    const-string v1, "Waiting..."

    const-string v2, "Waiting for map list"

    invoke-direct {p0, v1, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeShowWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 223
    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$6;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setListService(Lorg/ros/node/service/ServiceResponseListener;)V

    .line 235
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v3, "android/list_maps"

    invoke-virtual {v2, v3}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 236
    return-void
.end method

.method private safeDismissChooseMapDialog()V
    .registers 2

    .line 294
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$9;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private safeShowWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 320
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$10;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private setGoal()V
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapPosePublisherLayer:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->setGoalMode()V

    .line 215
    return-void
.end method

.method private setPose()V
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapPosePublisherLayer:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    invoke-virtual {v0}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;->setPoseMode()V

    .line 211
    return-void
.end method


# virtual methods
.method public dismissWaitingDialog()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->waitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 314
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->waitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->waitingDialog:Landroid/app/ProgressDialog;

    .line 317
    :cond_c
    return-void
.end method

.method public init(Lorg/ros/node/NodeMainExecutor;)V
    .registers 20
    .param p1, "nodeMainExecutor2"    # Lorg/ros/node/NodeMainExecutor;

    .line 140
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->init(Lorg/ros/node/NodeMainExecutor;)V

    .line 142
    iput-object v9, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    .line 143
    invoke-static {}, Lorg/ros/address/InetAddressFactory;->newNonLoopback()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getMasterUri()Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    move-result-object v0

    iput-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    .line 144
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v1, 0x7f0c0028

    invoke-virtual {v8, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 145
    .local v10, "joyTopic":Ljava/lang/String;
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v1, 0x7f0c001e

    invoke-virtual {v8, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "camTopic":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getMasterNameSpace()Lorg/ros/namespace/NameResolver;

    move-result-object v12

    .line 147
    .local v12, "appNameSpace":Lorg/ros/namespace/NameResolver;
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    invoke-virtual {v12, v11}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/view/RosImageView;->setTopicName(Ljava/lang/String;)V

    .line 148
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->virtualJoystickView:Lorg/ros/android/view/VirtualJoystickView;

    invoke-virtual {v12, v10}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/android/view/VirtualJoystickView;->setTopicName(Ljava/lang/String;)V

    .line 149
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    iget-object v1, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v2, "android/camera_view"

    invoke-virtual {v1, v2}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 150
    iget-object v0, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->virtualJoystickView:Lorg/ros/android/view/VirtualJoystickView;

    iget-object v1, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v2, "android/virtual_joystick"

    invoke-virtual {v1, v2}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 151
    new-instance v13, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;

    invoke-interface/range {p1 .. p1}, Lorg/ros/node/NodeMainExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    iget-object v4, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    iget-object v5, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mainLayout:Landroid/view/ViewGroup;

    iget-object v6, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->sideLayout:Landroid/view/ViewGroup;

    iget-object v7, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lorg/ros/android/view/RosImageView;Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;)V

    .line 152
    .local v0, "viewControlLayer":Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;
    iget-object v1, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v2, 0x7f0c002b

    invoke-virtual {v8, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "mapTopic":Ljava/lang/String;
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v3, 0x7f0c0033

    invoke-virtual {v8, v3}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "scanTopic":Ljava/lang/String;
    iget-object v3, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v4, 0x7f0c0026

    invoke-virtual {v8, v4}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "planTopic":Ljava/lang/String;
    iget-object v4, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    const v5, 0x7f0c0027

    invoke-virtual {v8, v5}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "initTopic":Ljava/lang/String;
    new-instance v5, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;

    invoke-virtual {v12, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "occupancyGridLayer":Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;
    new-instance v6, Lorg/ros/android/view/visualization/layer/LaserScanLayer;

    invoke-virtual {v12, v2}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/ros/android/view/visualization/layer/LaserScanLayer;-><init>(Ljava/lang/String;)V

    .line 161
    .local v6, "laserScanLayer":Lorg/ros/android/view/visualization/layer/LaserScanLayer;
    new-instance v7, Lorg/ros/android/view/visualization/layer/PathLayer;

    invoke-virtual {v12, v3}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v13

    invoke-virtual {v13}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/ros/android/view/visualization/layer/PathLayer;-><init>(Ljava/lang/String;)V

    .line 162
    .local v7, "pathLayer":Lorg/ros/android/view/visualization/layer/PathLayer;
    new-instance v13, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    iget-object v14, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    iget-object v15, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    invoke-direct {v13, v8, v12, v14, v15}, Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;-><init>(Landroid/content/Context;Lorg/ros/namespace/NameResolver;Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;)V

    iput-object v13, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapPosePublisherLayer:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    .line 163
    new-instance v13, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;

    invoke-virtual {v12, v4}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v14

    invoke-virtual {v14}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    move-object/from16 v16, v1

    .end local v1    # "mapTopic":Ljava/lang/String;
    .local v16, "mapTopic":Ljava/lang/String;
    const-string v1, "robot_frame"

    move-object/from16 v17, v2

    .end local v2    # "scanTopic":Ljava/lang/String;
    .local v17, "scanTopic":Ljava/lang/String;
    const v2, 0x7f0c0032

    invoke-virtual {v8, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v13, v14, v1}, Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v13

    .line 164
    .local v1, "initialPoseSubscriberLayer":Lcom/github/rosjava/android_apps/map_nav/InitialPoseSubscriberLayer;
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v0}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 165
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v5}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 167
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v6}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 168
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v7}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 169
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    iget-object v13, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapPosePublisherLayer:Lcom/github/rosjava/android_apps/map_nav/MapPosePublisherLayer;

    invoke-virtual {v2, v13}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 170
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v1}, Lorg/ros/android/view/visualization/VisualizationView;->addLayer(Lorg/ros/android/view/visualization/layer/Layer;)V

    .line 171
    iget-object v2, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2, v9}, Lorg/ros/android/view/visualization/VisualizationView;->init(Lorg/ros/node/NodeMainExecutor;)V

    .line 172
    new-instance v2, Lcom/github/rosjava/android_apps/map_nav/MainActivity$5;

    invoke-direct {v2, v8}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$5;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;->addListener(Lorg/ros/android/view/visualization/layer/CameraControlListener;)V

    .line 185
    new-instance v2, Lorg/ros/time/NtpTimeProvider;

    const-string v13, "pool.ntp.org"

    invoke-static {v13}, Lorg/ros/address/InetAddressFactory;->newFromHostString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/ros/node/NodeMainExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v14

    invoke-direct {v2, v13, v14}, Lorg/ros/time/NtpTimeProvider;-><init>(Ljava/net/InetAddress;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 186
    .local v2, "ntpTimeProvider":Lorg/ros/time/NtpTimeProvider;
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1

    invoke-virtual {v2, v14, v15, v13}, Lorg/ros/time/NtpTimeProvider;->startPeriodicUpdates(JLjava/util/concurrent/TimeUnit;)V

    .line 187
    iget-object v13, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    invoke-virtual {v13, v2}, Lorg/ros/node/NodeConfiguration;->setTimeProvider(Lorg/ros/time/TimeProvider;)Lorg/ros/node/NodeConfiguration;

    .line 188
    iget-object v13, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    iget-object v14, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v15, "android/map_view"

    invoke-virtual {v14, v15}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getRosHostname()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/ros/node/NodeConfiguration;->newPublic(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v13

    .line 191
    .local v13, "nodeConfiguration3":Lorg/ros/node/NodeConfiguration;
    invoke-virtual/range {p0 .. p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getMasterUri()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/ros/node/NodeConfiguration;->setMasterUri(Ljava/net/URI;)Lorg/ros/node/NodeConfiguration;

    .line 193
    iget-object v14, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    iget-object v15, v8, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->rosTextView:Lorg/ros/android/view/RosTextView;

    invoke-interface {v14, v15, v13}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 194
    return-void
.end method

.method public loadMap(Lworld_canvas_msgs/MapListEntry;)V
    .registers 6
    .param p1, "mapListEntry"    # Lworld_canvas_msgs/MapListEntry;

    .line 269
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MapManager;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->remaps:Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    invoke-direct {v0, p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;-><init>(Landroid/content/Context;Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;)V

    .line 270
    .local v0, "mapManager":Lcom/github/rosjava/android_apps/map_nav/MapManager;
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getMasterNameSpace()Lorg/ros/namespace/NameResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setNameResolver(Lorg/ros/namespace/NameResolver;)V

    .line 271
    const-string v1, "publish"

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setFunction(Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Lworld_canvas_msgs/MapListEntry;->getMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setMapId(Ljava/lang/String;)V

    .line 273
    const-string v1, "Waiting..."

    const-string v2, "Loading map"

    invoke-direct {p0, v1, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeShowWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 275
    :try_start_21
    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$8;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->setPublishService(Lorg/ros/node/service/ServiceResponseListener;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_2a

    .line 289
    goto :goto_35

    .line 286
    :catch_2a
    move-exception v1

    .line 287
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "MapNav"

    const-string v3, "loadMap() caught exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->safeDismissWaitingDialog()V

    .line 290
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_35
    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->nodeConfiguration:Lorg/ros/node/NodeConfiguration;

    const-string v3, "android/publish_map"

    invoke-virtual {v2, v3}, Lorg/ros/node/NodeConfiguration;->setNodeName(Ljava/lang/String;)Lorg/ros/node/NodeConfiguration;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V

    .line 291
    return-void
.end method

.method public onChooseMapButtonPressed()V
    .registers 1

    .line 198
    invoke-direct {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->readAvailableMapList()V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "defaultRobotName":Ljava/lang/String;
    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "defaultAppName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setDefaultMasterName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setDefaultAppName(Ljava/lang/String;)V

    .line 84
    const v2, 0x7f0800d0

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setDashboardResource(I)V

    .line 85
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setMainWindowResource(I)V

    .line 86
    invoke-super {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v3, 0x7f0800b5

    invoke-virtual {p0, v3}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, "textView1":Landroid/widget/TextView;
    const-string v4, "\ubbf8\uc138 \uba3c\uc9c0 \ub18d\ub3c4\ub294"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setContentView(I)V

    .line 95
    const v2, 0x7f0800b6

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/ros/android/view/RosTextView;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->rosTextView:Lorg/ros/android/view/RosTextView;

    .line 96
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->rosTextView:Lorg/ros/android/view/RosTextView;

    const-string v4, "dust_density"

    invoke-virtual {v2, v4}, Lorg/ros/android/view/RosTextView;->setTopicName(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->rosTextView:Lorg/ros/android/view/RosTextView;

    const-string v4, "std_msgs/Float32"

    invoke-virtual {v2, v4}, Lorg/ros/android/view/RosTextView;->setMessageType(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->rosTextView:Lorg/ros/android/view/RosTextView;

    new-instance v4, Lcom/github/rosjava/android_apps/map_nav/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$1;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v2, v4}, Lorg/ros/android/view/RosTextView;->setMessageToStringCallable(Lorg/ros/android/MessageCallable;)V

    .line 106
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/ros/android/view/RosImageView;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    .line 107
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    const-string v4, "sensor_msgs/CompressedImage"

    invoke-virtual {v2, v4}, Lorg/ros/android/view/RosImageView;->setMessageType(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->cameraView:Lorg/ros/android/view/RosImageView;

    new-instance v4, Lorg/ros/android/BitmapFromCompressedImage;

    invoke-direct {v4}, Lorg/ros/android/BitmapFromCompressedImage;-><init>()V

    invoke-virtual {v2, v4}, Lorg/ros/android/view/RosImageView;->setMessageToBitmapCallable(Lorg/ros/android/MessageCallable;)V

    .line 109
    const v2, 0x7f0800d5

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/ros/android/view/VirtualJoystickView;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->virtualJoystickView:Lorg/ros/android/view/VirtualJoystickView;

    .line 110
    const v2, 0x7f080021

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->backButton:Landroid/widget/Button;

    .line 111
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapButton:Landroid/widget/Button;

    .line 112
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/ros/android/view/visualization/VisualizationView;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    .line 113
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/ros/android/view/visualization/VisualizationView;->onCreate(Ljava/util/List;)V

    .line 114
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->backButton:Landroid/widget/Button;

    new-instance v4, Lcom/github/rosjava/android_apps/map_nav/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$2;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->chooseMapButton:Landroid/widget/Button;

    new-instance v4, Lcom/github/rosjava/android_apps/map_nav/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$3;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mapView:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v2

    iget-object v4, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->params:Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;

    const-string v5, "map_frame"

    const v6, 0x7f0c002a

    invoke-virtual {p0, v6}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppParameters;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->jumpToFrame(Ljava/lang/String;)V

    .line 125
    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->mainLayout:Landroid/view/ViewGroup;

    .line 126
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->sideLayout:Landroid/view/ViewGroup;

    .line 128
    const v2, 0x7f080065

    invoke-virtual {p0, v2}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 130
    .local v2, "moving":Landroid/widget/Button;
    new-instance v4, Lcom/github/rosjava/android_apps/map_nav/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$4;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 337
    const/4 v0, 0x0

    const v1, 0x7f0c0039

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 338
    invoke-super {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 342
    invoke-super {p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/apps/RosAppActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 348
    return v1

    .line 345
    :cond_b
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->onDestroy()V

    .line 346
    return v1
.end method

.method public safeDismissWaitingDialog()V
    .registers 2

    .line 329
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$11;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public setGoalClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 206
    invoke-direct {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setGoal()V

    .line 207
    return-void
.end method

.method public setPoseClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 202
    invoke-direct {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->setPose()V

    .line 203
    return-void
.end method

.method public showMapListDialog(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/MapListEntry;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lworld_canvas_msgs/MapListEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 242
    .local v0, "availableMapNames":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 243
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lworld_canvas_msgs/MapListEntry;

    invoke-interface {v2}, Lworld_canvas_msgs/MapListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/sql/Date;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lworld_canvas_msgs/MapListEntry;

    invoke-interface {v5}, Lworld_canvas_msgs/MapListEntry;->getDate()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "dateTime":Ljava/lang/String;
    if-eqz v2, :cond_54

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_54

    .line 248
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    .line 246
    :cond_54
    :goto_54
    move-object v4, v3

    .line 248
    .local v4, "displayString":Ljava/lang/String;
    :goto_55
    nop

    .line 250
    aput-object v4, v0, v1

    .line 242
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "dateTime":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 252
    .end local v1    # "i":I
    .end local v4    # "displayString":Ljava/lang/String;
    :cond_5b
    new-instance v1, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity$7;-><init>(Lcom/github/rosjava/android_apps/map_nav/MainActivity;[Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 306
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->dismissWaitingDialog()V

    .line 307
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->waitingDialog:Landroid/app/ProgressDialog;

    .line 308
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MainActivity;->waitingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 309
    return-void
.end method
