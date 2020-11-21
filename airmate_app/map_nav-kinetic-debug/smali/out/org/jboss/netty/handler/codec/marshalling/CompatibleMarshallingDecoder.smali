.class public Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "CompatibleMarshallingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# instance fields
.field protected final maxObjectSize:I

.field protected final provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .registers 3
    .param p1, "provider"    # Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;
    .param p2, "maxObjectSize"    # I

    .line 55
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    .line 57
    iput p2, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    .line 58
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .registers 10
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v0

    .line 64
    .local v0, "unmarshaller":Lorg/jboss/marshalling/Unmarshaller;
    new-instance v1, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v1, p3}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 65
    .local v1, "input":Lorg/jboss/marshalling/ByteInput;
    iget v2, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1b

    .line 66
    new-instance v2, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;

    iget v3, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    int-to-long v3, v3

    invoke-direct {v2, v1, v3, v4}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;-><init>(Lorg/jboss/marshalling/ByteInput;J)V

    move-object v1, v2

    .line 69
    :cond_1b
    :try_start_1b
    invoke-interface {v0, v1}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    .line 70
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->finish()V
    :try_end_25
    .catch Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException; {:try_start_1b .. :try_end_25} :catch_2c
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 72
    nop

    .line 78
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    .line 72
    return-object v2

    .line 78
    .end local v2    # "obj":Ljava/lang/Object;
    :catchall_2a
    move-exception v2

    goto :goto_35

    .line 73
    :catch_2c
    move-exception v2

    .line 74
    .local v2, "e":Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    :try_start_2d
    new-instance v3, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    const-string v4, "Object to big to unmarshal"

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_2a

    .line 78
    .end local v2    # "e":Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    :goto_35
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;
    invoke-interface {v0}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    throw v2
.end method

.method protected bridge synthetic decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "x1"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "x2"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "x3"    # Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    move-object v0, p4

    check-cast v0, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .registers 8
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/jboss/netty/handler/codec/replay/VoidEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_20

    goto :goto_1b

    .line 91
    :pswitch_9
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    const/16 v2, 0x79

    if-ne v0, v2, :cond_1b

    .line 92
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    .line 93
    return-object v1

    .line 88
    :pswitch_1a
    return-object v1

    .line 97
    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "decoded":Ljava/lang/Object;
    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ExceptionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    if-eqz v0, :cond_10

    .line 107
    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_13

    .line 110
    :cond_10
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V

    .line 112
    :goto_13
    return-void
.end method
