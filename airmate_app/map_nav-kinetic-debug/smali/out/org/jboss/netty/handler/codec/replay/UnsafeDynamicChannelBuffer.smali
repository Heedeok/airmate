.class Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;
.super Lorg/jboss/netty/buffer/DynamicChannelBuffer;
.source "UnsafeDynamicChannelBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .registers 3
    .param p1, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 37
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V
    .registers 4
    .param p1, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .param p2, "minimumCapacity"    # I

    .line 33
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected checkReadableBytes(I)V
    .registers 2
    .param p1, "minReaderRemaining"    # I

    .line 44
    return-void
.end method
