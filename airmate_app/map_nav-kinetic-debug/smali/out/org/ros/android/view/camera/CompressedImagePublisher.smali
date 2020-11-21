.class Lorg/ros/android/view/camera/CompressedImagePublisher;
.super Ljava/lang/Object;
.source "CompressedImagePublisher.java"

# interfaces
.implements Lorg/ros/android/view/camera/RawImageListener;


# instance fields
.field private final cameraInfoPublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lsensor_msgs/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final connectedNode:Lorg/ros/node/ConnectedNode;

.field private final imagePublisher:Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/topic/Publisher<",
            "Lsensor_msgs/CompressedImage;",
            ">;"
        }
    .end annotation
.end field

.field private rawImageBuffer:[B

.field private rawImageSize:Landroid/hardware/Camera$Size;

.field private rect:Landroid/graphics/Rect;

.field private stream:Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

.field private yuvImage:Landroid/graphics/YuvImage;


# direct methods
.method public constructor <init>(Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 51
    invoke-interface {p1}, Lorg/ros/node/ConnectedNode;->getResolver()Lorg/ros/namespace/NodeNameResolver;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NodeNameResolver;->newChild(Ljava/lang/String;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    .line 52
    .local v0, "resolver":Lorg/ros/namespace/NameResolver;
    const-string v1, "image/compressed"

    .line 53
    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    const-string v2, "sensor_msgs/CompressedImage"

    invoke-interface {p1, v1, v2}, Lorg/ros/node/ConnectedNode;->newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->imagePublisher:Lorg/ros/node/topic/Publisher;

    .line 55
    const-string v1, "camera_info"

    .line 56
    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    const-string v2, "sensor_msgs/CameraInfo"

    invoke-interface {p1, v1, v2}, Lorg/ros/node/ConnectedNode;->newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->cameraInfoPublisher:Lorg/ros/node/topic/Publisher;

    .line 57
    new-instance v1, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iput-object v1, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->stream:Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    .line 58
    return-void
.end method


# virtual methods
.method public onNewRawImage([BLandroid/hardware/Camera$Size;)V
    .registers 10
    .param p1, "data"    # [B
    .param p2, "size"    # Landroid/hardware/Camera$Size;

    .line 62
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rawImageBuffer:[B

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rawImageSize:Landroid/hardware/Camera$Size;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 65
    :cond_12
    iput-object p1, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rawImageBuffer:[B

    .line 66
    iput-object p2, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rawImageSize:Landroid/hardware/Camera$Size;

    .line 67
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v2, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rawImageBuffer:[B

    const/16 v3, 0x11

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    iput-object v0, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->yuvImage:Landroid/graphics/YuvImage;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rect:Landroid/graphics/Rect;

    .line 71
    :cond_33
    iget-object v0, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->connectedNode:Lorg/ros/node/ConnectedNode;

    invoke-interface {v0}, Lorg/ros/node/ConnectedNode;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v0

    .line 72
    .local v0, "currentTime":Lorg/ros/message/Time;
    const-string v1, "camera"

    .line 74
    .local v1, "frameId":Ljava/lang/String;
    iget-object v2, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->imagePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v2}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsensor_msgs/CompressedImage;

    .line 75
    .local v2, "image":Lsensor_msgs/CompressedImage;
    const-string v3, "jpeg"

    invoke-interface {v2, v3}, Lsensor_msgs/CompressedImage;->setFormat(Ljava/lang/String;)V

    .line 76
    invoke-interface {v2}, Lsensor_msgs/CompressedImage;->getHeader()Lstd_msgs/Header;

    move-result-object v3

    invoke-interface {v3, v0}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 77
    invoke-interface {v2}, Lsensor_msgs/CompressedImage;->getHeader()Lstd_msgs/Header;

    move-result-object v3

    invoke-interface {v3, v1}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->yuvImage:Landroid/graphics/YuvImage;

    iget-object v4, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->rect:Landroid/graphics/Rect;

    const/16 v5, 0x14

    iget-object v6, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->stream:Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 80
    iget-object v3, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->stream:Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    invoke-virtual {v3}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lsensor_msgs/CompressedImage;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 81
    iget-object v3, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->stream:Lorg/jboss/netty/buffer/ChannelBufferOutputStream;

    invoke-virtual {v3}, Lorg/jboss/netty/buffer/ChannelBufferOutputStream;->buffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 83
    iget-object v3, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->imagePublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v3, v2}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 85
    iget-object v3, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->cameraInfoPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v3}, Lorg/ros/node/topic/Publisher;->newMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsensor_msgs/CameraInfo;

    .line 86
    .local v3, "cameraInfo":Lsensor_msgs/CameraInfo;
    invoke-interface {v3}, Lsensor_msgs/CameraInfo;->getHeader()Lstd_msgs/Header;

    move-result-object v4

    invoke-interface {v4, v0}, Lstd_msgs/Header;->setStamp(Lorg/ros/message/Time;)V

    .line 87
    invoke-interface {v3}, Lsensor_msgs/CameraInfo;->getHeader()Lstd_msgs/Header;

    move-result-object v4

    invoke-interface {v4, v1}, Lstd_msgs/Header;->setFrameId(Ljava/lang/String;)V

    .line 89
    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v3, v4}, Lsensor_msgs/CameraInfo;->setWidth(I)V

    .line 90
    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v3, v4}, Lsensor_msgs/CameraInfo;->setHeight(I)V

    .line 91
    iget-object v4, p0, Lorg/ros/android/view/camera/CompressedImagePublisher;->cameraInfoPublisher:Lorg/ros/node/topic/Publisher;

    invoke-interface {v4, v3}, Lorg/ros/node/topic/Publisher;->publish(Ljava/lang/Object;)V

    .line 92
    return-void
.end method
