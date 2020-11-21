.class public Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;
.super Lorg/ros/android/view/visualization/layer/SubscriberLayer;
.source "CompressedOccupancyGridLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/TfLayer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/android/view/visualization/layer/SubscriberLayer<",
        "Lnav_msgs/OccupancyGrid;",
        ">;",
        "Lorg/ros/android/view/visualization/layer/TfLayer;"
    }
.end annotation


# static fields
.field private static final COLOR_FREE:I = -0x727273

.field private static final COLOR_OCCUPIED:I = -0x20000001

.field private static final COLOR_UNKNOWN:I = -0x1000000


# instance fields
.field private frame:Lorg/ros/namespace/GraphName;

.field private ready:Z

.field private final textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "topic"    # Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;-><init>(Lorg/ros/namespace/GraphName;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;

    .line 65
    const-string v0, "nav_msgs/OccupancyGrid"

    invoke-direct {p0, p1, v0}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;-><init>(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lorg/ros/android/view/visualization/TextureBitmap;

    invoke-direct {v0}, Lorg/ros/android/view/visualization/TextureBitmap;-><init>()V

    iput-object v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->ready:Z

    .line 68
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 72
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->ready:Z

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    invoke-virtual {v0, p1, p2}, Lorg/ros/android/view/visualization/TextureBitmap;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 75
    :cond_9
    return-void
.end method

.method public getFrame()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->frame:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 84
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/layer/SubscriberLayer;->onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V

    .line 85
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->getSubscriber()Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer$1;-><init>(Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 91
    return-void
.end method

.method update(Lnav_msgs/OccupancyGrid;)V
    .registers 18
    .param p1, "message"    # Lnav_msgs/OccupancyGrid;

    .line 94
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 95
    .local v1, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    nop

    .line 96
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 97
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 98
    .local v13, "stride":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 99
    .local v14, "height":I
    const/16 v3, 0x400

    const/4 v4, 0x0

    const/4 v15, 0x1

    if-gt v13, v3, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    :goto_28
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 100
    if-gt v14, v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 101
    mul-int v3, v13, v14

    new-array v3, v3, [I

    .line 102
    .local v3, "pixels":[I
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v3

    move v8, v13

    move v11, v13

    move v12, v14

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 103
    nop

    .local v4, "i":I
    :goto_43
    array-length v5, v3

    if-ge v4, v5, :cond_62

    .line 105
    aget v5, v3, v4

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    if-ne v5, v6, :cond_50

    .line 106
    aput v7, v3, v4

    goto :goto_5f

    .line 107
    :cond_50
    aget v5, v3, v4

    if-ne v5, v7, :cond_5a

    .line 108
    const v5, -0x727273

    aput v5, v3, v4

    goto :goto_5f

    .line 110
    :cond_5a
    const v5, -0x20000001

    aput v5, v3, v4

    .line 103
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 113
    .end local v4    # "i":I
    :cond_62
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v4

    invoke-interface {v4}, Lnav_msgs/MapMetaData;->getResolution()F

    move-result v9

    .line 114
    .local v9, "resolution":F
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getInfo()Lnav_msgs/MapMetaData;

    move-result-object v4

    invoke-interface {v4}, Lnav_msgs/MapMetaData;->getOrigin()Lgeometry_msgs/Pose;

    move-result-object v4

    invoke-static {v4}, Lorg/ros/rosjava_geometry/Transform;->fromPoseMessage(Lgeometry_msgs/Pose;)Lorg/ros/rosjava_geometry/Transform;

    move-result-object v10

    .line 115
    .local v10, "origin":Lorg/ros/rosjava_geometry/Transform;
    iget-object v4, v0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    const/high16 v8, -0x1000000

    move-object v11, v3

    .end local v3    # "pixels":[I
    .local v11, "pixels":[I
    move-object v3, v4

    move-object v4, v11

    move v5, v13

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Lorg/ros/android/view/visualization/TextureBitmap;->updateFromPixelArray([IIFLorg/ros/rosjava_geometry/Transform;I)V

    .line 116
    invoke-interface/range {p1 .. p1}, Lnav_msgs/OccupancyGrid;->getHeader()Lstd_msgs/Header;

    move-result-object v3

    invoke-interface {v3}, Lstd_msgs/Header;->getFrameId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    iput-object v3, v0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->frame:Lorg/ros/namespace/GraphName;

    .line 117
    iput-boolean v15, v0, Lorg/ros/android/view/visualization/layer/CompressedOccupancyGridLayer;->ready:Z

    .line 118
    return-void
.end method
