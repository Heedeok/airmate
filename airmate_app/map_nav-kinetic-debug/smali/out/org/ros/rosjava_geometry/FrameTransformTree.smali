.class public Lorg/ros/rosjava_geometry/FrameTransformTree;
.super Ljava/lang/Object;
.source "FrameTransformTree.java"


# static fields
.field private static final TRANSFORM_QUEUE_CAPACITY:I = 0x10


# instance fields
.field private final mutex:Ljava/lang/Object;

.field private final transforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/rosjava_geometry/LazyFrameTransform;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->mutex:Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private add(Lorg/ros/namespace/GraphName;Lorg/ros/rosjava_geometry/LazyFrameTransform;)V
    .registers 7
    .param p1, "source"    # Lorg/ros/namespace/GraphName;
    .param p2, "lazyFrameTransform"    # Lorg/ros/rosjava_geometry/LazyFrameTransform;

    .line 85
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 86
    .local v0, "relativeSource":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 87
    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    new-instance v2, Lorg/ros/concurrent/CircularBlockingDeque;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lorg/ros/concurrent/CircularBlockingDeque;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_18
    iget-object v1, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_1b
    iget-object v2, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-virtual {v2, p2}, Lorg/ros/concurrent/CircularBlockingDeque;->addFirst(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v2
.end method

.method private get(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 14
    .param p1, "source"    # Lorg/ros/namespace/GraphName;
    .param p2, "time"    # Lorg/ros/message/Time;

    .line 149
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/concurrent/CircularBlockingDeque;

    .line 150
    .local v0, "deque":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<Lorg/ros/rosjava_geometry/LazyFrameTransform;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 151
    return-object v1

    .line 153
    :cond_c
    const/4 v2, 0x0

    .line 154
    .local v2, "result":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    iget-object v3, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 155
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "offset":J
    :try_start_12
    invoke-virtual {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ros/rosjava_geometry/LazyFrameTransform;

    .line 157
    .local v7, "lazyFrameTransform":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    if-nez v2, :cond_3b

    .line 158
    move-object v2, v7

    .line 159
    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/LazyFrameTransform;->get()Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v8

    invoke-virtual {v8}, Lorg/ros/rosjava_geometry/FrameTransform;->getTime()Lorg/ros/message/Time;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/ros/message/Time;->subtract(Lorg/ros/message/Time;)Lorg/ros/message/Duration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/ros/message/Duration;->totalNsecs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    move-wide v4, v8

    .line 160
    goto :goto_16

    .line 162
    :cond_3b
    invoke-virtual {v7}, Lorg/ros/rosjava_geometry/LazyFrameTransform;->get()Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v8

    invoke-virtual {v8}, Lorg/ros/rosjava_geometry/FrameTransform;->getTime()Lorg/ros/message/Time;

    move-result-object v8

    invoke-virtual {p2, v8}, Lorg/ros/message/Time;->subtract(Lorg/ros/message/Time;)Lorg/ros/message/Duration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/ros/message/Duration;->totalNsecs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 163
    .local v8, "newOffset":J
    cmp-long v10, v8, v4

    if-gez v10, :cond_55

    .line 164
    move-object v2, v7

    .line 165
    move-wide v4, v8

    .line 167
    .end local v7    # "lazyFrameTransform":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    .end local v8    # "newOffset":J
    :cond_55
    goto :goto_16

    .line 168
    .end local v4    # "offset":J
    :cond_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_5f

    .line 169
    if-nez v2, :cond_5a

    .line 170
    return-object v1

    .line 172
    :cond_5a
    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/LazyFrameTransform;->get()Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    return-object v1

    .line 168
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private getLatest(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 5
    .param p1, "source"    # Lorg/ros/namespace/GraphName;

    .line 110
    iget-object v0, p0, Lorg/ros/rosjava_geometry/FrameTransformTree;->transforms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/concurrent/CircularBlockingDeque;

    .line 111
    .local v0, "deque":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<Lorg/ros/rosjava_geometry/LazyFrameTransform;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 112
    return-object v1

    .line 114
    :cond_c
    invoke-virtual {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/rosjava_geometry/LazyFrameTransform;

    .line 115
    .local v2, "lazyFrameTransform":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    if-nez v2, :cond_15

    .line 116
    return-object v1

    .line 118
    :cond_15
    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/LazyFrameTransform;->get()Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/rosjava_geometry/FrameTransformTree;->lookUp(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "time"    # Lorg/ros/message/Time;

    .line 179
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->lookUp(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    return-object v0
.end method

.method public lookUp(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 3
    .param p1, "source"    # Lorg/ros/namespace/GraphName;

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/rosjava_geometry/FrameTransformTree;->getLatest(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    return-object v0
.end method

.method public lookUp(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 4
    .param p1, "source"    # Lorg/ros/namespace/GraphName;
    .param p2, "time"    # Lorg/ros/message/Time;

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-direct {p0, p1, p2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->get(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 232
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 10
    .param p1, "source"    # Lorg/ros/namespace/GraphName;
    .param p2, "target"    # Lorg/ros/namespace/GraphName;

    .line 188
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 192
    .local v0, "relativeSource":Lorg/ros/namespace/GraphName;
    invoke-virtual {p2}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 193
    .local v1, "relativeTarget":Lorg/ros/namespace/GraphName;
    invoke-virtual {v0, v1}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 194
    new-instance v2, Lorg/ros/rosjava_geometry/FrameTransform;

    invoke-static {}, Lorg/ros/rosjava_geometry/Transform;->identity()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v4

    invoke-direct {v2, v4, v0, v1, v3}, Lorg/ros/rosjava_geometry/FrameTransform;-><init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V

    return-object v2

    .line 196
    :cond_1f
    invoke-virtual {p0, v0}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transformToRoot(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v2

    .line 197
    .local v2, "sourceToRoot":Lorg/ros/rosjava_geometry/FrameTransform;
    invoke-virtual {p0, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->transformToRoot(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v4

    .line 198
    .local v4, "targetToRoot":Lorg/ros/rosjava_geometry/FrameTransform;
    if-nez v2, :cond_2c

    if-nez v4, :cond_2c

    .line 199
    return-object v3

    .line 201
    :cond_2c
    if-nez v2, :cond_3e

    .line 202
    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 204
    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/FrameTransform;->invert()Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v3

    return-object v3

    .line 206
    :cond_3d
    return-object v3

    .line 209
    :cond_3e
    if-nez v4, :cond_4c

    .line 210
    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 212
    return-object v2

    .line 214
    :cond_4b
    return-object v3

    .line 217
    :cond_4c
    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v5

    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 220
    nop

    .line 221
    invoke-virtual {v4}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ros/rosjava_geometry/Transform;->invert()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    .line 222
    .local v3, "transform":Lorg/ros/rosjava_geometry/Transform;
    new-instance v5, Lorg/ros/rosjava_geometry/FrameTransform;

    invoke-virtual {v2}, Lorg/ros/rosjava_geometry/FrameTransform;->getTime()Lorg/ros/message/Time;

    move-result-object v6

    invoke-direct {v5, v3, v0, v1, v6}, Lorg/ros/rosjava_geometry/FrameTransform;-><init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V

    return-object v5

    .line 225
    .end local v3    # "transform":Lorg/ros/rosjava_geometry/Transform;
    :cond_75
    return-object v3
.end method

.method transformToRoot(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;
    .registers 8
    .param p1, "source"    # Lorg/ros/namespace/GraphName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->getLatest(Lorg/ros/namespace/GraphName;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v0

    .line 245
    .local v0, "result":Lorg/ros/rosjava_geometry/FrameTransform;
    if-nez v0, :cond_8

    .line 246
    const/4 v1, 0x0

    return-object v1

    .line 249
    :cond_8
    :goto_8
    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTime()Lorg/ros/message/Time;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/ros/rosjava_geometry/FrameTransformTree;->lookUp(Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)Lorg/ros/rosjava_geometry/FrameTransform;

    move-result-object v1

    .line 250
    .local v1, "resultToParent":Lorg/ros/rosjava_geometry/FrameTransform;
    if-nez v1, :cond_17

    .line 251
    return-object v0

    .line 254
    :cond_17
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/rosjava_geometry/Transform;->multiply(Lorg/ros/rosjava_geometry/Transform;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v2

    .line 255
    .local v2, "transform":Lorg/ros/rosjava_geometry/Transform;
    invoke-virtual {v1}, Lorg/ros/rosjava_geometry/FrameTransform;->getTargetFrame()Lorg/ros/namespace/GraphName;

    move-result-object v3

    .line 256
    .local v3, "target":Lorg/ros/namespace/GraphName;
    new-instance v4, Lorg/ros/rosjava_geometry/FrameTransform;

    invoke-virtual {v0}, Lorg/ros/rosjava_geometry/FrameTransform;->getTime()Lorg/ros/message/Time;

    move-result-object v5

    invoke-direct {v4, v2, p1, v3, v5}, Lorg/ros/rosjava_geometry/FrameTransform;-><init>(Lorg/ros/rosjava_geometry/Transform;Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Lorg/ros/message/Time;)V

    move-object v0, v4

    .line 257
    .end local v1    # "resultToParent":Lorg/ros/rosjava_geometry/FrameTransform;
    .end local v2    # "transform":Lorg/ros/rosjava_geometry/Transform;
    .end local v3    # "target":Lorg/ros/namespace/GraphName;
    goto :goto_8
.end method

.method public update(Lgeometry_msgs/TransformStamped;)V
    .registers 4
    .param p1, "transformStamped"    # Lgeometry_msgs/TransformStamped;

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-interface {p1}, Lgeometry_msgs/TransformStamped;->getChildFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 71
    .local v0, "source":Lorg/ros/namespace/GraphName;
    new-instance v1, Lorg/ros/rosjava_geometry/LazyFrameTransform;

    invoke-direct {v1, p1}, Lorg/ros/rosjava_geometry/LazyFrameTransform;-><init>(Lgeometry_msgs/TransformStamped;)V

    .line 72
    .local v1, "lazyFrameTransform":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    invoke-direct {p0, v0, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->add(Lorg/ros/namespace/GraphName;Lorg/ros/rosjava_geometry/LazyFrameTransform;)V

    .line 73
    return-void
.end method

.method update(Lorg/ros/rosjava_geometry/FrameTransform;)V
    .registers 4
    .param p1, "frameTransform"    # Lorg/ros/rosjava_geometry/FrameTransform;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 77
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lorg/ros/rosjava_geometry/FrameTransform;->getSourceFrame()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 79
    .local v0, "source":Lorg/ros/namespace/GraphName;
    new-instance v1, Lorg/ros/rosjava_geometry/LazyFrameTransform;

    invoke-direct {v1, p1}, Lorg/ros/rosjava_geometry/LazyFrameTransform;-><init>(Lorg/ros/rosjava_geometry/FrameTransform;)V

    .line 80
    .local v1, "lazyFrameTransform":Lorg/ros/rosjava_geometry/LazyFrameTransform;
    invoke-direct {p0, v0, v1}, Lorg/ros/rosjava_geometry/FrameTransformTree;->add(Lorg/ros/namespace/GraphName;Lorg/ros/rosjava_geometry/LazyFrameTransform;)V

    .line 81
    return-void
.end method
