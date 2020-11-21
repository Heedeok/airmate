.class public Lorg/ros/android/OrientationPublisher;
.super Lorg/ros/node/AbstractNodeMain;
.source "OrientationPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/android/OrientationPublisher$OrientationListener;
    }
.end annotation


# instance fields
.field private orientationListener:Lorg/ros/android/OrientationPublisher$OrientationListener;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 69
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/ros/android/OrientationPublisher;->sensorManager:Landroid/hardware/SensorManager;

    .line 71
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 75
    const-string v0, "android/orientiation_sensor"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 7
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 81
    :try_start_0
    const-string v0, "android/orientation"

    const-string v1, "geometry_msgs/PoseStamped"

    .line 82
    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v0

    .line 83
    .local v0, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<Lgeometry_msgs/PoseStamped;>;"
    new-instance v1, Lorg/ros/android/OrientationPublisher$OrientationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/ros/android/OrientationPublisher$OrientationListener;-><init>(Lorg/ros/android/OrientationPublisher;Lorg/ros/node/topic/Publisher;Lorg/ros/android/OrientationPublisher$1;)V

    iput-object v1, p0, Lorg/ros/android/OrientationPublisher;->orientationListener:Lorg/ros/android/OrientationPublisher$OrientationListener;

    .line 84
    iget-object v1, p0, Lorg/ros/android/OrientationPublisher;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 86
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lorg/ros/android/OrientationPublisher;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lorg/ros/android/OrientationPublisher;->orientationListener:Lorg/ros/android/OrientationPublisher$OrientationListener;

    const v4, 0x7a120

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 89
    .end local v0    # "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<Lgeometry_msgs/PoseStamped;>;"
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    goto :goto_2b

    .line 87
    :catch_23
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->fatal(Ljava/lang/Object;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
