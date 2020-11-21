.class public Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "PointCloud2DLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lsensor_msgs/PointCloud2;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# static fields
.field private static final FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

.field private static final OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

.field private static final POINT_SIZE:F = 10.0f


# instance fields
.field private frame:Lorg/ros/namespace/GraphName;

.field private final mutex:Ljava/lang/Object;

.field private vertexBackBuffer:Ljava/nio/FloatBuffer;

.field private vertexFrontBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-string v0, "377dfa"

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    .line 47
    const-string v0, "377dfa"

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lorg/ros/android/view/visualization/Color;->fromHexAndAlpha(Ljava/lang/String;F)Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    sput-object v0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topicName"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 61
    const-string v0, "sensor_msgs/PointCloud2"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->mutex:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;
    .param p1, "x1"    # Lorg/ros/namespace/GraphName;

    .line 44
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object p1
.end method

.method static synthetic access$100(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;Lsensor_msgs/PointCloud2;)V
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;
    .param p1, "x1"    # Lsensor_msgs/PointCloud2;

    .line 44
    invoke-direct {p0, p1}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->updateVertexBuffer(Lsensor_msgs/PointCloud2;)V

    return-void
.end method

.method private updateVertexBuffer(Lsensor_msgs/PointCloud2;)V
    .registers 8
    .param p1, "pointCloud"    # Lsensor_msgs/PointCloud2;

    .line 96
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getIsDense()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 98
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 99
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsensor_msgs/PointField;

    invoke-interface {v0}, Lsensor_msgs/PointField;->getDatatype()B

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 100
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsensor_msgs/PointField;

    invoke-interface {v0}, Lsensor_msgs/PointField;->getDatatype()B

    move-result v0

    if-ne v0, v4, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 101
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getFields()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsensor_msgs/PointField;

    invoke-interface {v0}, Lsensor_msgs/PointField;->getDatatype()B

    move-result v0

    if-ne v0, v4, :cond_66

    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 102
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getPointStep()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 103
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 104
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getRowStep()I

    move-result v0

    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getPointStep()I

    move-result v4

    div-int/2addr v0, v4

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    .line 106
    .local v0, "size":I
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    if-ge v2, v0, :cond_a7

    .line 107
    :cond_a1
    invoke-static {v0}, Lorg/ros/android/view/visualization/Vertices;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    .line 109
    :cond_a7
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 111
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 113
    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 115
    invoke-interface {p1}, Lsensor_msgs/PointCloud2;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 116
    .local v2, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_c0
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 117
    iget-object v4, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 118
    iget-object v4, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v4, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 121
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    .line 123
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    goto :goto_c0

    .line 125
    :cond_e4
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_ec
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    .line 128
    .local v3, "tmp":Ljava/nio/FloatBuffer;
    iget-object v4, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    .line 129
    iput-object v3, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexBackBuffer:Ljava/nio/FloatBuffer;

    .line 130
    .end local v3    # "tmp":Ljava/nio/FloatBuffer;
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_f6
    move-exception v3

    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_ec .. :try_end_f8} :catchall_f6

    throw v3
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 67
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_24

    .line 68
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_7
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->FREE_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    invoke-static {p2, v1, v2}, Lorg/ros/android/view/visualization/Vertices;->drawTriangleFan(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;)V

    .line 72
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->vertexFrontBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 73
    .local v1, "pointVertices":Ljava/nio/FloatBuffer;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    sget-object v2, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->OCCUPIED_SPACE_COLOR:Lorg/ros/android/view/visualization/Color;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p2, v1, v2, v3}, Lorg/ros/android/view/visualization/Vertices;->drawPoints(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V

    .line 75
    .end local v1    # "pointVertices":Ljava/nio/FloatBuffer;
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 77
    :cond_24
    :goto_24
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 81
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 82
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 83
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Lsensor_msgs/PointCloud2;>;"
    new-instance v1, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/layer/PointCloud2DLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/PointCloud2DLayer;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 90
    return-void
.end method
