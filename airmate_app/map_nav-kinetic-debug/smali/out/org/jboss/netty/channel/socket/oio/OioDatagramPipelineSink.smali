.class Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.source "OioDatagramPipelineSink.java"


# instance fields
.field private final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .line 37
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 39
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 11
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "workerStarted":Z
    :try_start_2
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, p3}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 87
    const/4 v0, 0x1

    .line 90
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 91
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 94
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v4, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;

    invoke-direct {v4, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old I/O datagram worker ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_45
    .catchall {:try_start_2 .. :try_end_37} :catchall_43

    .line 99
    const/4 v1, 0x1

    .line 100
    nop

    .line 108
    if-eqz v0, :cond_40

    if-nez v1, :cond_40

    .line 105
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 107
    :cond_40
    nop

    .line 108
    move-object v2, p0

    goto :goto_56

    .line 104
    :catchall_43
    move-exception v2

    goto :goto_57

    .line 100
    :catch_45
    move-exception v2

    .line 101
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_46
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 102
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_43

    .line 103
    .end local v2    # "t":Ljava/lang/Throwable;
    nop

    .line 105
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    if-eqz v0, :cond_55

    if-nez v1, :cond_55

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 107
    :cond_55
    nop

    .line 108
    :goto_56
    return-void

    .line 104
    .end local v2    # "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    :goto_57
    nop

    .line 105
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    if-eqz v0, :cond_60

    if-nez v1, :cond_60

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 104
    :cond_60
    throw v2
.end method

.method private connect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 11
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 114
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isBound()Z

    move-result v0

    .line 115
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 116
    .local v1, "connected":Z
    const/4 v2, 0x0

    .line 118
    .local v2, "workerStarted":Z
    sget-object v3, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 122
    const/4 v3, 0x0

    iput-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 125
    :try_start_e
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3, p3}, Ljava/net/MulticastSocket;->connect(Ljava/net/SocketAddress;)V

    .line 126
    const/4 v1, 0x1

    .line 129
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 130
    if-nez v0, :cond_20

    .line 131
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 133
    :cond_20
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old I/O datagram worker ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "threadName":Ljava/lang/String;
    if-nez v0, :cond_4f

    .line 138
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v6, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;

    invoke-direct {v6, p1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V

    invoke-direct {v5, v6, v3}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_58

    .line 144
    :cond_4f
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->workerThread:Ljava/lang/Thread;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_51} :catch_62
    .catchall {:try_start_e .. :try_end_51} :catchall_60

    .line 145
    .local v4, "workerThread":Ljava/lang/Thread;
    if-eqz v4, :cond_58

    .line 147
    :try_start_53
    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_62
    .catchall {:try_start_53 .. :try_end_56} :catchall_60

    .line 150
    goto :goto_58

    .line 148
    :catch_57
    move-exception v5

    .line 154
    .end local v4    # "workerThread":Ljava/lang/Thread;
    :cond_58
    :goto_58
    const/4 v2, 0x1

    .line 155
    .end local v3    # "threadName":Ljava/lang/String;
    nop

    .line 163
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    if-eqz v1, :cond_72

    if-nez v2, :cond_72

    goto :goto_6f

    .line 159
    .end local v3    # "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    :catchall_60
    move-exception v3

    goto :goto_74

    .line 155
    :catch_62
    move-exception v3

    .line 156
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_63
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 157
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_60

    .line 158
    .end local v3    # "t":Ljava/lang/Throwable;
    nop

    .line 160
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    if-eqz v1, :cond_72

    if-nez v2, :cond_72

    :goto_6f
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 162
    :cond_72
    nop

    .line 163
    return-void

    .line 159
    .end local v3    # "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    :goto_74
    nop

    .line 160
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;
    if-eqz v1, :cond_7d

    if-nez v2, :cond_7d

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 159
    :cond_7d
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

    .line 43
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    .line 44
    .local v0, "channel":Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    .line 45
    .local v1, "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v2, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_56

    .line 46
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 47
    .local v2, "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 48
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6a

    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_55

    .line 70
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

    .line 63
    :pswitch_30
    if-eqz v4, :cond_39

    .line 64
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->connect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_55

    .line 66
    :cond_39
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->disconnect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 68
    goto :goto_55

    .line 56
    :pswitch_3d
    if-eqz v4, :cond_46

    .line 57
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, v1, v5}, Lorg/jboss/netty/channel/socket/oio/OioDatagramPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_55

    .line 59
    :cond_46
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 61
    goto :goto_55

    .line 51
    :pswitch_4a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 52
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 73
    .end local v2    # "stateEvent":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_55
    :goto_55
    goto :goto_68

    :cond_56
    instance-of v2, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v2, :cond_68

    .line 74
    move-object v2, p2

    check-cast v2, Lorg/jboss/netty/channel/MessageEvent;

    .line 75
    .local v2, "evt":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 78
    .end local v2    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    :cond_68
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method
