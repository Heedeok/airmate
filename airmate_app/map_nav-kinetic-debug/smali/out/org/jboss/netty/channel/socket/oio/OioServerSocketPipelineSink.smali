.class Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;
.source "OioServerSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field final workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "workerExecutor"    # Ljava/util/concurrent/Executor;

    .line 45
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannelSink;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 47
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 11
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 128
    .local v1, "bossStarted":Z
    :try_start_2
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v3

    invoke-virtual {v2, p3, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 129
    const/4 v0, 0x1

    .line 131
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 132
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    move-object p3, v2

    .line 133
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 135
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 137
    .local v2, "bossExecutor":Ljava/util/concurrent/Executor;
    new-instance v3, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v4, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;

    invoke-direct {v4, p0, p1}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old I/O server boss ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_46} :catch_54
    .catchall {:try_start_2 .. :try_end_46} :catchall_52

    .line 142
    const/4 v1, 0x1

    .line 143
    .end local v2    # "bossExecutor":Ljava/util/concurrent/Executor;
    nop

    .line 151
    if-nez v1, :cond_4f

    if-eqz v0, :cond_4f

    .line 148
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 150
    :cond_4f
    nop

    .line 151
    move-object v2, p0

    goto :goto_65

    .line 147
    :catchall_52
    move-exception v2

    goto :goto_66

    .line 143
    :catch_54
    move-exception v2

    .line 144
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_55
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 145
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    .line 146
    .end local v2    # "t":Ljava/lang/Throwable;
    nop

    .line 148
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
    if-nez v1, :cond_64

    if-eqz v0, :cond_64

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 150
    :cond_64
    nop

    .line 151
    :goto_65
    return-void

    .line 147
    .end local v2    # "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
    :goto_66
    nop

    .line 148
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;
    if-nez v1, :cond_6f

    if-eqz v0, :cond_6f

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 147
    :cond_6f
    throw v2
.end method

.method private static close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 154
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->isBound()Z

    move-result v0

    .line 156
    .local v0, "bound":Z
    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 161
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_32

    .line 163
    :try_start_e
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->setClosed()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 164
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 165
    if-eqz v0, :cond_1c

    .line 166
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 168
    :cond_1c
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_23

    .line 170
    :cond_20
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2b

    .line 172
    :goto_23
    nop

    .line 179
    :try_start_24
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    nop

    .line 178
    goto :goto_39

    .line 173
    :catchall_2b
    move-exception v1

    .line 179
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 173
    throw v1
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_32} :catch_32

    .line 175
    :catch_32
    move-exception v1

    .line 176
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 177
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 179
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_39
    return-void
.end method

.method private static handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 8
    .param p0, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 88
    instance-of v0, p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_42

    .line 89
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 90
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    .line 92
    .local v1, "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 93
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 94
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_5c

    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_41

    .line 109
    .restart local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v2, v5}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_41

    .line 104
    :pswitch_30
    if-nez v4, :cond_41

    .line 105
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_41

    .line 98
    :pswitch_36
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 99
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->close(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 112
    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_41
    :goto_41
    goto :goto_5a

    :cond_42
    instance-of v0, p0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_5a

    .line 113
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 114
    .local v0, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    .line 115
    .local v1, "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 116
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "message":Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    .line 119
    .end local v0    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "message":Ljava/lang/Object;
    :cond_5a
    :goto_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_30
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method

.method private handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 9
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 60
    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v0, :cond_5

    .line 61
    return-void

    .line 64
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 65
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    .line 67
    .local v1, "channel":Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 68
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 69
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 71
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_40

    goto :goto_3e

    .line 78
    :pswitch_26
    if-eqz v4, :cond_2f

    .line 79
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, v2, v5}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_3e

    .line 81
    :cond_2f
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_3e

    .line 73
    :pswitch_33
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 74
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 85
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

    .line 51
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 52
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/OioServerSocketChannel;

    if-eqz v1, :cond_c

    .line 53
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_13

    .line 54
    :cond_c
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    if-eqz v1, :cond_13

    .line 55
    invoke-static {p2}, Lorg/jboss/netty/channel/socket/oio/OioServerSocketPipelineSink;->handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 57
    :cond_13
    :goto_13
    return-void
.end method
