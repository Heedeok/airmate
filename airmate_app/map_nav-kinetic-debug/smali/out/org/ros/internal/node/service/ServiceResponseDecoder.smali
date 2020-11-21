.class Lorg/ros/internal/node/service/ServiceResponseDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "ServiceResponseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder<",
        "Lorg/ros/internal/node/service/ServiceResponseDecoderState;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Lorg/ros/internal/node/service/ServiceServerResponse;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseDecoder;, "Lorg/ros/internal/node/service/ServiceResponseDecoder<TResponseType;>;"
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    .line 35
    invoke-direct {p0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->reset()V

    .line 36
    return-void
.end method

.method private reset()V
    .registers 2

    .line 62
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseDecoder;, "Lorg/ros/internal/node/service/ServiceResponseDecoder<TResponseType;>;"
    sget-object v0, Lorg/ros/internal/node/service/ServiceResponseDecoderState;->ERROR_CODE:Lorg/ros/internal/node/service/ServiceResponseDecoderState;

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 63
    new-instance v0, Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-direct {v0}, Lorg/ros/internal/node/service/ServiceServerResponse;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;

    .line 64
    return-void
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseDecoder;, "Lorg/ros/internal/node/service/ServiceResponseDecoder<TResponseType;>;"
    check-cast p4, Lorg/ros/internal/node/service/ServiceResponseDecoderState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/ros/internal/node/service/ServiceResponseDecoderState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/ros/internal/node/service/ServiceResponseDecoderState;)Ljava/lang/Object;
    .registers 7
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p3, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p4, "state"    # Lorg/ros/internal/node/service/ServiceResponseDecoderState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/internal/node/service/ServiceResponseDecoder;, "Lorg/ros/internal/node/service/ServiceResponseDecoder<TResponseType;>;"
    sget-object v0, Lorg/ros/internal/node/service/ServiceResponseDecoder$1;->$SwitchMap$org$ros$internal$node$service$ServiceResponseDecoderState:[I

    invoke-virtual {p4}, Lorg/ros/internal/node/service/ServiceResponseDecoderState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 44
    :pswitch_11
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->setErrorCode(I)V

    .line 45
    sget-object v0, Lorg/ros/internal/node/service/ServiceResponseDecoderState;->MESSAGE_LENGTH:Lorg/ros/internal/node/service/ServiceResponseDecoderState;

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 47
    :pswitch_1f
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessageLength(I)V

    .line 48
    sget-object v0, Lorg/ros/internal/node/service/ServiceResponseDecoderState;->MESSAGE:Lorg/ros/internal/node/service/ServiceResponseDecoderState;

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->checkpoint(Ljava/lang/Enum;)V

    .line 50
    :pswitch_2d
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;

    invoke-virtual {v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->getMessageLength()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/service/ServiceServerResponse;->setMessage(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 52
    :try_start_3c
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceResponseDecoder;->response:Lorg/ros/internal/node/service/ServiceServerResponse;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_42

    .line 54
    invoke-direct {p0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->reset()V

    .line 52
    return-object v0

    .line 54
    :catchall_42
    move-exception v0

    invoke-direct {p0}, Lorg/ros/internal/node/service/ServiceResponseDecoder;->reset()V

    .line 55
    throw v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1f
        :pswitch_2d
    .end packed-switch
.end method
