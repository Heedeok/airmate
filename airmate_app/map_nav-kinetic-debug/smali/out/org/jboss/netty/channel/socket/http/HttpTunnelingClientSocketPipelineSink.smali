.class final Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "HttpTunnelingClientSocketPipelineSink.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 10
    .param p1, "pipeline"    # Lorg/jboss/netty/channel/ChannelPipeline;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    .line 38
    .local v0, "channel":Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 39
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_56

    .line 40
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 41
    .local v2, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 42
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 43
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_68

    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_55

    .line 64
    .restart local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->setInterestOpsReal(ILorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_55

    .line 57
    :pswitch_30
    if-eqz v4, :cond_39

    .line 58
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-virtual {v0, v5, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->connectReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_55

    .line 60
    :cond_39
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 62
    goto :goto_55

    .line 50
    :pswitch_3d
    if-eqz v4, :cond_46

    .line 51
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-virtual {v0, v5, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->bindReal(Ljava/net/SocketAddress;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_55

    .line 53
    :cond_46
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->unbindReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 55
    goto :goto_55

    .line 45
    :pswitch_4a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 46
    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->closeReal(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 67
    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_55
    :goto_55
    goto :goto_66

    :cond_56
    instance-of v2, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v2, :cond_66

    .line 68
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v2, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->writeReal(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 70
    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method
