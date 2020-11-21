.class public Lorg/ros/rosjava_geometry/LazyFrameTransform;
.super Ljava/lang/Object;
.source "LazyFrameTransform.java"


# instance fields
.field private frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

.field private final message:Lgeometry_msgs/TransformStamped;

.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgeometry_msgs/TransformStamped;)V
    .registers 3
    .param p1, "message"    # Lgeometry_msgs/TransformStamped;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->mutex:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->message:Lgeometry_msgs/TransformStamped;

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/ros/rosjava_geometry/FrameTransform;)V
    .registers 3
    .param p1, "frameTransform"    # Lorg/ros/rosjava_geometry/FrameTransform;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->mutex:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->message:Lgeometry_msgs/TransformStamped;

    .line 45
    iput-object p1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

    .line 46
    return-void
.end method


# virtual methods
.method public get()Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 3

    .line 53
    iget-object v0, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

    if-eqz v1, :cond_b

    .line 55
    iget-object v1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

    monitor-exit v0

    return-object v1

    .line 57
    :cond_b
    iget-object v1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->message:Lgeometry_msgs/TransformStamped;

    invoke-static {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->fromTransformStampedMessage(Lgeometry_msgs/TransformStamped;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

    .line 58
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    .line 59
    iget-object v0, p0, Lorg/ros/rosjava_geometry/LazyFrameTransform;->frameTransform:Lorg/ros/rosjava_geometry/FrameTransform;

    return-object v0

    .line 58
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method
