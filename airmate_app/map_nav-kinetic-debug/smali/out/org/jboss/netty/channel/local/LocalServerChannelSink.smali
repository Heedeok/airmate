.class final Lorg/jboss/netty/channel/local/LocalServerChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "LocalServerChannelSink.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 30
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 34
    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 108
    :try_start_0
    invoke-static {p2, p0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->register(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 115
    iput-object p2, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 116
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 117
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 122
    goto :goto_42

    .line 112
    :cond_19
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    const-string v1, "already bound"

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_21
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address already in use: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_38} :catch_38

    .line 118
    :catch_38
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p2}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 120
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 121
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_42
    return-void
.end method

.method private static close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->setClosed()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 128
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 129
    iget-object v0, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 130
    .local v0, "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    iget-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 132
    invoke-static {v0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 133
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 135
    :cond_1e
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    .line 136
    .end local v0    # "localAddress":Lorg/jboss/netty/channel/local/LocalAddress;
    goto :goto_25

    .line 137
    :cond_22
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    .line 142
    :goto_25
    goto :goto_2d

    .line 139
    :catch_26
    move-exception v0

    .line 140
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 141
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2d
    return-void
.end method

.method private static handleAcceptedChannel(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 8
    .param p0, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 73
    instance-of v0, p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_3b

    .line 74
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 75
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 76
    .local v1, "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 77
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 78
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/local/LocalServerChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_54

    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_3a

    .line 94
    .restart local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto :goto_3a

    .line 88
    :pswitch_29
    if-nez v4, :cond_3a

    .line 89
    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_3a

    .line 82
    :pswitch_2f
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 83
    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 97
    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3a
    :goto_3a
    goto :goto_52

    :cond_3b
    instance-of v0, p0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_52

    .line 98
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 99
    .local v0, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 100
    .restart local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v2, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 101
    .local v2, "offered":Z
    nop

    .line 102
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    .line 104
    .end local v0    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "offered":Z
    :cond_52
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_29
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method private static handleServerChannel(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 8
    .param p0, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 46
    instance-of v0, p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v0, :cond_5

    .line 47
    return-void

    .line 50
    :cond_5
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 51
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    .line 53
    .local v1, "channel":Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 54
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 55
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/local/LocalServerChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_40

    goto :goto_3e

    .line 63
    :pswitch_26
    if-eqz v4, :cond_2f

    .line 64
    move-object v5, v4

    check-cast v5, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-static {v1, v2, v5}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_3e

    .line 66
    :cond_2f
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_3e

    .line 58
    :pswitch_33
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 59
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->close(Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 70
    :cond_3e
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 5
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

    .line 38
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    if-eqz v1, :cond_c

    .line 39
    invoke-static {p2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->handleServerChannel(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_13

    .line 40
    :cond_c
    instance-of v1, v0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    if-eqz v1, :cond_13

    .line 41
    invoke-static {p2}, Lorg/jboss/netty/channel/local/LocalServerChannelSink;->handleAcceptedChannel(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 43
    :cond_13
    :goto_13
    return-void
.end method
