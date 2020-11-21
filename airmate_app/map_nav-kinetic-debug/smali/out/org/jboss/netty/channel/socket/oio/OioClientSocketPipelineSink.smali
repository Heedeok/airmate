.class Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.source "OioClientSocketPipelineSink.java"


# instance fields
.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .line 38
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 40
    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 86
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 87
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 91
    goto :goto_17

    .line 88
    :catch_10
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 90
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_17
    return-void
.end method

.method private connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 12
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 98
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->isBound()Z

    move-result v0

    .line 99
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 100
    .local v1, "connected":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "workerStarted":Z
    sget-object v3, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 105
    :try_start_b
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v4

    invoke-virtual {v3, p3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 107
    const/4 v1, 0x1

    .line 110
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->in:Ljava/io/PushbackInputStream;

    .line 111
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->out:Ljava/io/OutputStream;

    .line 114
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 115
    if-nez v0, :cond_3b

    .line 116
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 118
    :cond_3b
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 121
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v5, Lorg/jboss/netty/channel/socket/oio/OioWorker;

    invoke-direct {v5, p1}, Lorg/jboss/netty/channel/socket/oio/OioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old I/O client worker ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_67} :catch_75
    .catchall {:try_start_b .. :try_end_67} :catchall_73

    .line 126
    const/4 v2, 0x1

    .line 127
    nop

    .line 135
    if-eqz v1, :cond_70

    if-nez v2, :cond_70

    .line 132
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 134
    :cond_70
    nop

    .line 135
    move-object v3, p0

    goto :goto_86

    .line 131
    :catchall_73
    move-exception v3

    goto :goto_87

    .line 127
    :catch_75
    move-exception v3

    .line 128
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_76
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 129
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_73

    .line 130
    .end local v3    # "t":Ljava/lang/Throwable;
    nop

    .line 132
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
    if-eqz v1, :cond_85

    if-nez v2, :cond_85

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 134
    :cond_85
    nop

    .line 135
    :goto_86
    return-void

    .line 131
    .end local v3    # "this":Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
    :goto_87
    nop

    .line 132
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;
    if-eqz v1, :cond_90

    if-nez v2, :cond_90

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 131
    :cond_90
    throw v3
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

    .line 44
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;

    .line 45
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 46
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_56

    .line 47
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 48
    .local v2, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 49
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_66

    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_55

    .line 71
    .restart local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_55

    .line 64
    :pswitch_30
    if-eqz v4, :cond_39

    .line 65
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_55

    .line 67
    :cond_39
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 69
    goto :goto_55

    .line 57
    :pswitch_3d
    if-eqz v4, :cond_46

    .line 58
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-static {v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_55

    .line 60
    :cond_46
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 62
    goto :goto_55

    .line 52
    :pswitch_4a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 53
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 74
    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_55
    :goto_55
    goto :goto_64

    :cond_56
    instance-of v2, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v2, :cond_64

    .line 75
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 79
    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method
