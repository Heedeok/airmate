.class public Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;
.super Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.source "MarshallingDecoder.java"


# instance fields
.field private final provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;)V
    .registers 3
    .param p1, "provider"    # Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 46
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;-><init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .registers 9
    .param p1, "provider"    # Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;
    .param p2, "maxObjectSize"    # I

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    .line 59
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 60
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .registers 9
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 68
    .local v0, "frame":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v0, :cond_a

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 72
    :cond_a
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v1, p1}, Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v1

    .line 73
    .local v1, "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    new-instance v2, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 76
    .local v2, "input":Lorg/jboss/marshalling/ByteInput;
    :try_start_15
    invoke-interface {v1, v2}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    .line 77
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "obj":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->finish()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 79
    nop

    .line 83
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 79
    return-object v3

    .line 83
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_24
    move-exception v3

    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;
    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    throw v3
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 89
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
