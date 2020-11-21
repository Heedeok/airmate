.class final Lorg/ros/android/OrientationPublisher$OrientationListener;
.super Ljava/lang/Object;
.source "OrientationPublisher.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/OrientationPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OrientationListener"
.end annotation


# instance fields
.field private final publisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/PoseStamped;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/ros/android/OrientationPublisher;


# direct methods
.method private constructor <init>(Lorg/ros/android/OrientationPublisher;Lorg/ros/node/topic/Publisher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "Lgeometry_msgs/PoseStamped;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<Lgeometry_msgs/PoseStamped;>;"
    iput-object p1, p0, Lorg/ros/android/OrientationPublisher$OrientationListener;->this$0:Lorg/ros/android/OrientationPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lorg/ros/android/OrientationPublisher$OrientationListener;->publisher:Lorg/ros/node/topic/Publisher;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lorg/ros/android/OrientationPublisher;Lorg/ros/node/topic/Publisher;Lorg/ros/android/OrientationPublisher$1;)V
    .registers 4
    .param p1, "x0"    # Lorg/ros/android/OrientationPublisher;
    .param p2, "x1"    # Lorg/ros/node/topic/Publisher;
    .param p3, "x2"    # Lorg/ros/android/OrientationPublisher$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/ros/android/OrientationPublisher$OrientationListener;-><init>(Lorg/ros/android/OrientationPublisher;Lorg/ros/node/topic/Publisher;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 49
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 53
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_73

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 55
    .local v0, "quaternion":[F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 56
    iget-object v1, p0, Lorg/ros/android/OrientationPublisher$OrientationListener;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v1}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeometry_msgs/PoseStamped;

    .line 57
    .local v1, "pose":Lgeometry_msgs/PoseStamped;
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v2

    const-string v3, "/map"

    invoke-interface {v2, v3}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 59
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getHeader()Lstd_msgs/Header;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/ros/message/Time;->fromMillis(J)Lorg/ros/message/Time;

    move-result-object v3

    invoke-interface {v2, v3}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 60
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    float-to-double v3, v3

    invoke-interface {v2, v3, v4}, Lgeometry_msgs/Quaternion;->setW(D)V

    .line 61
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-double v3, v3

    invoke-interface {v2, v3, v4}, Lgeometry_msgs/Quaternion;->setX(D)V

    .line 62
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v0, v3

    float-to-double v3, v3

    invoke-interface {v2, v3, v4}, Lgeometry_msgs/Quaternion;->setY(D)V

    .line 63
    invoke-interface {v1}, Lgeometry_msgs/PoseStamped;->getPose()Lgeometry_msgs/Pose;

    move-result-object v2

    invoke-interface {v2}, Lgeometry_msgs/Pose;->getOrientation()Lgeometry_msgs/Quaternion;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, v0, v3

    float-to-double v3, v3

    invoke-interface {v2, v3, v4}, Lgeometry_msgs/Quaternion;->setZ(D)V

    .line 64
    iget-object v2, p0, Lorg/ros/android/OrientationPublisher$OrientationListener;->publisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v2, v1}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "quaternion":[F
    .end local v1    # "pose":Lgeometry_msgs/PoseStamped;
    :cond_73
    return-void
.end method
