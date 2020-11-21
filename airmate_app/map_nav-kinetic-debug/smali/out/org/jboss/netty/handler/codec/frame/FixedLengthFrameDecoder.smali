.class public Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "FixedLengthFrameDecoder.java"


# instance fields
.field private final allocateFullBuffer:Z

.field private final frameLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "frameLength"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;-><init>(IZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 6
    .param p1, "frameLength"    # I
    .param p2, "allocateFullBuffer"    # Z

    .line 60
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    .line 61
    if-lez p1, :cond_a

    .line 65
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    .line 66
    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->allocateFullBuffer:Z

    .line 67
    return-void

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    if-ge v0, v1, :cond_a

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_a
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "minimumCapacity"    # I

    .line 81
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    .line 82
    .local v0, "factory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->allocateFullBuffer:Z

    if-eqz v1, :cond_17

    .line 83
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/FixedLengthFrameDecoder;->frameLength:I

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 86
    :cond_17
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1
.end method
