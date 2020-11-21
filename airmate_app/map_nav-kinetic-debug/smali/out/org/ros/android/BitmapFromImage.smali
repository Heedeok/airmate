.class public Lorg/ros/android/BitmapFromImage;
.super Ljava/lang/Object;
.source "BitmapFromImage.java"

# interfaces
.implements Lorg/ros/android/MessageCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/android/MessageCallable<",
        "Landroid/graphics/Bitmap;",
        "Lsensor_msgs/Image;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lsensor_msgs/Image;)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "message"    # Lsensor_msgs/Image;

    .line 32
    invoke-interface {p1}, Lsensor_msgs/Image;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rgb8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 33
    nop

    .line 34
    invoke-interface {p1}, Lsensor_msgs/Image;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lsensor_msgs/Image;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1e
    invoke-interface {p1}, Lsensor_msgs/Image;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_6f

    .line 37
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_25
    invoke-interface {p1}, Lsensor_msgs/Image;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 38
    invoke-interface {p1}, Lsensor_msgs/Image;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 39
    .local v4, "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {p1}, Lsensor_msgs/Image;->getStep()I

    move-result v5

    mul-int v5, v5, v3

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    .line 40
    .local v5, "red":B
    invoke-interface {p1}, Lsensor_msgs/Image;->getStep()I

    move-result v6

    mul-int v6, v6, v3

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v4, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v6

    .line 41
    .local v6, "green":B
    invoke-interface {p1}, Lsensor_msgs/Image;->getStep()I

    move-result v7

    mul-int v7, v7, v3

    mul-int/lit8 v8, v2, 0x3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-interface {v4, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v7

    .line 42
    .local v7, "blue":B
    and-int/lit16 v8, v5, 0xff

    and-int/lit16 v9, v6, 0xff

    and-int/lit16 v10, v7, 0xff

    const/16 v11, 0xff

    invoke-static {v11, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 37
    .end local v4    # "data":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "red":B
    .end local v6    # "green":B
    .end local v7    # "blue":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 36
    .end local v3    # "y":I
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 45
    .end local v2    # "x":I
    :cond_6f
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Lsensor_msgs/Image;

    invoke-virtual {p0, p1}, Lorg/ros/android/BitmapFromImage;->call(Lsensor_msgs/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
