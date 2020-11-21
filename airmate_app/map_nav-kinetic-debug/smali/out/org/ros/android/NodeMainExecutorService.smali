.class public Lorg/ros/android/NodeMainExecutorService;
.super Landroid/app/Service;
.source "NodeMainExecutorService.java"

# interfaces
.implements Lorg/ros/node/NodeMainExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/NodeMainExecutorService$LocalBinder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "org.ros.android.ACTION_SHUTDOWN_NODE_RUNNER_SERVICE"

.field public static final ACTION_START:Ljava/lang/String; = "org.ros.android.ACTION_START_NODE_RUNNER_SERVICE"

.field public static final CHANNEL_NAME:Ljava/lang/String; = "ROS Android background service"

.field public static final EXTRA_NOTIFICATION_TICKER:Ljava/lang/String; = "org.ros.android.EXTRA_NOTIFICATION_TICKER"

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String; = "org.ros.android.EXTRA_NOTIFICATION_TITLE"

.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "org.ros.android"

.field private static final ONGOING_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NodeMainExecutorService"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private handler:Landroid/os/Handler;

.field private final listeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/android/NodeMainExecutorServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private masterUri:Ljava/net/URI;

.field private final nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

.field private rosCore:Lorg/ros/RosCore;

.field private rosHostname:Ljava/lang/String;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosHostname:Ljava/lang/String;

    .line 102
    invoke-static {}, Lorg/ros/node/DefaultNodeMainExecutor;->newDefault()Lorg/ros/node/NodeMainExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    .line 103
    new-instance v0, Lorg/ros/android/NodeMainExecutorService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/ros/android/NodeMainExecutorService$LocalBinder;-><init>(Lorg/ros/android/NodeMainExecutorService;)V

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->binder:Landroid/os/IBinder;

    .line 104
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    iget-object v1, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    .line 106
    invoke-interface {v1}, Lorg/ros/node/NodeMainExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->listeners:Lorg/ros/concurrent/ListenerGroup;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/NodeMainExecutorService;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/NodeMainExecutorService;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Lorg/ros/android/NodeMainExecutorService;->startMasterBlocking(Z)V

    return-void
.end method

.method private buildNotification(Landroid/content/Intent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    .line 319
    .local v1, "builder":Landroid/app/Notification$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v2, v3, :cond_30

    .line 320
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "org.ros.android"

    const-string v4, "ROS Android background service"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 322
    .local v2, "chan":Landroid/app/NotificationChannel;
    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 323
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 324
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lorg/ros/android/NodeMainExecutorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 325
    .local v3, "manager":Landroid/app/NotificationManager;
    nop

    .line 326
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 327
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "org.ros.android"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v4

    .line 328
    .end local v2    # "chan":Landroid/app/NotificationChannel;
    .end local v3    # "manager":Landroid/app/NotificationManager;
    goto :goto_36

    .line 329
    :cond_30
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 331
    :goto_36
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v4, Lorg/ros/android/android_core_components/R$mipmap;->icon:I

    .line 333
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "org.ros.android.EXTRA_NOTIFICATION_TICKER"

    .line 334
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "org.ros.android.EXTRA_NOTIFICATION_TITLE"

    .line 336
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "Tap to shutdown."

    .line 338
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method private signalOnShutdown()V
    .registers 3

    .line 189
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->listeners:Lorg/ros/concurrent/ListenerGroup;

    new-instance v1, Lorg/ros/android/NodeMainExecutorService$2;

    invoke-direct {v1, p0}, Lorg/ros/android/NodeMainExecutorService$2;-><init>(Lorg/ros/android/NodeMainExecutorService;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 195
    return-void
.end method

.method private startMasterBlocking(Z)V
    .registers 4
    .param p1, "isPrivate"    # Z

    .line 291
    if-eqz p1, :cond_9

    .line 292
    invoke-static {}, Lorg/ros/RosCore;->newPrivate()Lorg/ros/RosCore;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    goto :goto_1e

    .line 293
    :cond_9
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosHostname:Ljava/lang/String;

    const/16 v1, 0x2c2f

    if-eqz v0, :cond_18

    .line 294
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosHostname:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/ros/RosCore;->newPublic(Ljava/lang/String;I)Lorg/ros/RosCore;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    goto :goto_1e

    .line 296
    :cond_18
    invoke-static {v1}, Lorg/ros/RosCore;->newPublic(I)Lorg/ros/RosCore;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    .line 298
    :goto_1e
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    invoke-virtual {v0}, Lorg/ros/RosCore;->start()V

    .line 300
    :try_start_23
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    invoke-virtual {v0}, Lorg/ros/RosCore;->awaitStart()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_32

    .line 303
    nop

    .line 304
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    invoke-virtual {v0}, Lorg/ros/RosCore;->getUri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->masterUri:Ljava/net/URI;

    .line 305
    return-void

    .line 301
    :catch_32
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addListener(Lorg/ros/android/NodeMainExecutorServiceListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/android/NodeMainExecutorServiceListener;

    .line 180
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;

    .line 181
    return-void
.end method

.method public execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;)V
    .registers 4
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;
    .param p2, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ros/android/NodeMainExecutorService;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V

    .line 136
    return-void
.end method

.method public execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V
    .registers 5
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;
    .param p2, "nodeConfiguration"    # Lorg/ros/node/NodeConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeMain;",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p3, "nodeListeneners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/node/NodeListener;>;"
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/node/NodeMainExecutor;->execute(Lorg/ros/node/NodeMain;Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)V

    .line 131
    return-void
.end method

.method public forceShutdown()V
    .registers 2

    .line 174
    invoke-direct {p0}, Lorg/ros/android/NodeMainExecutorService;->signalOnShutdown()V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/android/NodeMainExecutorService;->stopForeground(Z)V

    .line 176
    invoke-virtual {p0}, Lorg/ros/android/NodeMainExecutorService;->stopSelf()V

    .line 177
    return-void
.end method

.method public getMasterUri()Ljava/net/URI;
    .registers 2

    .line 240
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->masterUri:Ljava/net/URI;

    return-object v0
.end method

.method public getRosHostname()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 140
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    invoke-interface {v0}, Lorg/ros/node/NodeMainExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->handler:Landroid/os/Handler;

    .line 112
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lorg/ros/android/NodeMainExecutorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 113
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "NodeMainExecutorService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/NodeMainExecutorService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    iget-object v1, p0, Lorg/ros/android/NodeMainExecutorService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 115
    move v1, v2

    .line 117
    .local v1, "wifiLockType":I
    :try_start_1e
    const-class v2, Landroid/net/wifi/WifiManager;

    const-string v3, "WIFI_MODE_FULL_HIGH_PERF"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2d

    move v1, v2

    .line 121
    goto :goto_35

    .line 118
    :catch_2d
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NodeMainExecutorService"

    const-string v4, "Unable to acquire high performance wifi lock."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_35
    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lorg/ros/android/NodeMainExecutorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 123
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v3, "NodeMainExecutorService"

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lorg/ros/android/NodeMainExecutorService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 124
    iget-object v3, p0, Lorg/ros/android/NodeMainExecutorService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 199
    const-string v0, "Shutting down..."

    invoke-virtual {p0, v0}, Lorg/ros/android/NodeMainExecutorService;->toast(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    invoke-interface {v0}, Lorg/ros/node/NodeMainExecutor;->shutdown()V

    .line 201
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    if-eqz v0, :cond_13

    .line 202
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->rosCore:Lorg/ros/RosCore;

    invoke-virtual {v0}, Lorg/ros/RosCore;->shutdown()V

    .line 204
    :cond_13
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 205
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 207
    :cond_20
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 208
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 210
    :cond_2d
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 211
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_8

    .line 216
    return v1

    .line 218
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.ros.android.ACTION_START_NODE_RUNNER_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 219
    const-string v0, "org.ros.android.EXTRA_NOTIFICATION_TICKER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 220
    const-string v0, "org.ros.android.EXTRA_NOTIFICATION_TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/ros/android/NodeMainExecutorService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v2, "org.ros.android.ACTION_SHUTDOWN_NODE_RUNNER_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 224
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v2}, Lorg/ros/android/NodeMainExecutorService;->buildNotification(Landroid/content/Intent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    .line 226
    .local v3, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lorg/ros/android/NodeMainExecutorService;->startForeground(ILandroid/app/Notification;)V

    .line 228
    .end local v0    # "notificationIntent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_3f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.ros.android.ACTION_SHUTDOWN_NODE_RUNNER_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 229
    invoke-virtual {p0}, Lorg/ros/android/NodeMainExecutorService;->shutdown()V

    .line 231
    :cond_4e
    return v1
.end method

.method public removeListener(Lorg/ros/android/NodeMainExecutorServiceListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/ros/android/NodeMainExecutorServiceListener;

    .line 185
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->listeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/ListenerGroup;->remove(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public setMasterUri(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 244
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService;->masterUri:Ljava/net/URI;

    .line 245
    return-void
.end method

.method public setRosHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lorg/ros/android/NodeMainExecutorService;->rosHostname:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 150
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/ros/android/NodeMainExecutorService$1;

    invoke-direct {v1, p0}, Lorg/ros/android/NodeMainExecutorService$1;-><init>(Lorg/ros/android/NodeMainExecutorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public shutdownNodeMain(Lorg/ros/node/NodeMain;)V
    .registers 3
    .param p1, "nodeMain"    # Lorg/ros/node/NodeMain;

    .line 145
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->nodeMainExecutor:Lorg/ros/node/NodeMainExecutor;

    invoke-interface {v0, p1}, Lorg/ros/node/NodeMainExecutor;->shutdownNodeMain(Lorg/ros/node/NodeMain;)V

    .line 146
    return-void
.end method

.method public startMaster()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/ros/android/NodeMainExecutorService;->startMaster(Z)V

    .line 262
    return-void
.end method

.method public startMaster(Z)V
    .registers 6
    .param p1, "isPrivate"    # Z

    .line 269
    new-instance v0, Lorg/ros/android/NodeMainExecutorService$3;

    invoke-direct {v0, p0}, Lorg/ros/android/NodeMainExecutorService$3;-><init>(Lorg/ros/android/NodeMainExecutorService;)V

    .line 276
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Boolean;Ljava/lang/Void;Ljava/net/URI;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    :try_start_12
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_15} :catch_17

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catch_17
    move-exception v1

    .line 282
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 279
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1e
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toast(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lorg/ros/android/NodeMainExecutorService;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/ros/android/NodeMainExecutorService$4;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/NodeMainExecutorService$4;-><init>(Lorg/ros/android/NodeMainExecutorService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method
