.class public Lorg/ros/android/BitmapFromCompressedImage;
.super Ljava/lang/Object;
.source "BitmapFromCompressedImage.java"

# interfaces
.implements Lorg/ros/android/MessageCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/android/MessageCallable<",
        "Landroid/graphics/Bitmap;",
        "Lsensor_msgs/CompressedImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lsensor_msgs/CompressedImage;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "message"    # Lsensor_msgs/CompressedImage;

    .line 31
    invoke-interface {p1}, Lsensor_msgs/CompressedImage;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 32
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v1

    .line 33
    .local v1, "data":[B
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    check-cast p1, Lsensor_msgs/CompressedImage;

    invoke-virtual {p0, p1}, Lorg/ros/android/BitmapFromCompressedImage;->call(Lsensor_msgs/CompressedImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
