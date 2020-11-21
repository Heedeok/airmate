.class Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;
.super Ljava/lang/Object;
.source "OccupancyGridLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field private origin:Lorg/ros/rosjava_geometry/Transform;

.field private final pixelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private ready:Z

.field private final resolution:F

.field private stride:I

.field private final textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

.field final synthetic this$0:Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;


# direct methods
.method public constructor <init>(Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;F)V
    .registers 3
    .param p2, "resolution"    # F

    .line 91
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->this$0:Lorg/ros/android/view/visualization/layer/OccupancyGridLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->pixelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 69
    new-instance p1, Lorg/ros/android/view/visualization/TextureBitmap;

    invoke-direct {p1}, Lorg/ros/android/view/visualization/TextureBitmap;-><init>()V

    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    .line 92
    iput p2, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->resolution:F

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->ready:Z

    .line 94
    return-void
.end method


# virtual methods
.method public clearHandle()V
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/TextureBitmap;->clearHandle()V

    .line 104
    return-void
.end method

.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 97
    iget-boolean v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->ready:Z

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    invoke-virtual {v0, p1, p2}, Lorg/ros/android/view/visualization/TextureBitmap;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    :cond_9
    return-void
.end method

.method public setOrigin(Lorg/ros/rosjava_geometry/Transform;)V
    .registers 2
    .param p1, "origin"    # Lorg/ros/rosjava_geometry/Transform;

    .line 119
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->origin:Lorg/ros/rosjava_geometry/Transform;

    .line 120
    return-void
.end method

.method public setStride(I)V
    .registers 2
    .param p1, "stride"    # I

    .line 123
    iput p1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->stride:I

    .line 124
    return-void
.end method

.method public update()V
    .registers 8

    .line 111
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->origin:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->stride:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->textureBitmap:Lorg/ros/android/view/visualization/TextureBitmap;

    iget-object v2, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->pixelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->stride:I

    iget v4, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->resolution:F

    iget-object v5, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->origin:Lorg/ros/rosjava_geometry/Transform;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/ros/android/view/visualization/TextureBitmap;->updateFromPixelBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;IFLorg/ros/rosjava_geometry/Transform;I)V

    .line 114
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->pixelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->ready:Z

    .line 116
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "value"    # I

    .line 107
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/OccupancyGridLayer$Tile;->pixelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 108
    return-void
.end method
