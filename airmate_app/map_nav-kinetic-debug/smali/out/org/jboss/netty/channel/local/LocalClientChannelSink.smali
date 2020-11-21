.class final Lorg/jboss/netty/channel/local/LocalClientChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "LocalClientChannelSink.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    nop

    .line 39
    const-class v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    .line 43
    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .registers 6
    .param p0, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 90
    :try_start_0
    invoke-static {p2, p0}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->register(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 94
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setBound()V

    .line 95
    iput-object p2, p0, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 96
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 97
    invoke-static {p0, p2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 102
    goto :goto_33

    .line 91
    :cond_12
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
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_29

    .line 98
    :catch_29
    move-exception v0

    .line 99
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p2}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->unregister(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    .line 100
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 101
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_33
    return-void
.end method

.method private connect(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .registers 13
    .param p1, "channel"    # Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Lorg/jboss/netty/channel/local/LocalAddress;

    .line 106
    invoke-static {p3}, Lorg/jboss/netty/channel/local/LocalChannelRegistry;->getChannel(Lorg/jboss/netty/channel/local/LocalAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 107
    .local v0, "remoteChannel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    if-nez v1, :cond_13

    .line 108
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "connection refused"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 109
    return-void

    .line 112
    :cond_13
    move-object v4, v0

    check-cast v4, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;

    .line 115
    .local v4, "serverChannel":Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;
    :try_start_16
    invoke-virtual {v4}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_87

    .line 124
    .local v6, "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    nop

    .line 126
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 127
    new-instance v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v5

    move-object v3, v1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;-><init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/DefaultLocalChannel;)V

    .line 129
    .local v1, "acceptedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iput-object v1, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->pairedChannel:Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 132
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->isBound()Z

    move-result v2

    if-nez v2, :cond_48

    .line 133
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v3, Lorg/jboss/netty/channel/local/LocalAddress;

    const-string v5, "ephemeral"

    invoke-direct {v3, v5}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v3}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    .line 135
    :cond_48
    invoke-virtual {v4}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, p1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 136
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setConnected()V

    .line 137
    invoke-virtual {v4}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 139
    invoke-virtual {v4}, Lorg/jboss/netty/channel/local/DefaultLocalServerChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->localAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 141
    :try_start_5e
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setBound()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_80

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 146
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->remoteAddress:Lorg/jboss/netty/channel/local/LocalAddress;

    .line 147
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->setConnected()V

    .line 148
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 151
    invoke-virtual {p1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    .line 152
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    .line 153
    return-void

    .line 142
    :catch_80
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v1    # "acceptedChannel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "pipeline":Lorg/jboss/netty/channel/ChannelPipeline;
    :catch_87
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {p2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 118
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 119
    sget-object v2, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 120
    sget-object v2, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to initialize an accepted socket."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_9d
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

    .line 46
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_4f

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 49
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 51
    .local v1, "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 52
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 53
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/local/LocalClientChannelSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_68

    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_4e

    .line 76
    .restart local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto :goto_4e

    .line 68
    :pswitch_29
    if-eqz v4, :cond_32

    .line 69
    move-object v5, v4

    check-cast v5, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-direct {p0, v1, v2, v5}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->connect(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_4e

    .line 71
    :cond_32
    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 73
    goto :goto_4e

    .line 61
    :pswitch_36
    if-eqz v4, :cond_3f

    .line 62
    move-object v5, v4

    check-cast v5, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-static {v1, v2, v5}, Lorg/jboss/netty/channel/local/LocalClientChannelSink;->bind(Lorg/jboss/netty/channel/local/DefaultLocalChannel;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_4e

    .line 64
    :cond_3f
    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 66
    goto :goto_4e

    .line 56
    :pswitch_43
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 57
    invoke-virtual {v1, v2}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->closeNow(Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 79
    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4e
    :goto_4e
    goto :goto_66

    :cond_4f
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_66

    .line 80
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 81
    .local v0, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;

    .line 82
    .restart local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    iget-object v2, v1, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->writeBuffer:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 83
    .local v2, "offered":Z
    nop

    .line 84
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/DefaultLocalChannel;->flushWriteBuffer()V

    .line 86
    .end local v0    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/local/DefaultLocalChannel;
    .end local v2    # "offered":Z
    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_43
        :pswitch_36
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method
