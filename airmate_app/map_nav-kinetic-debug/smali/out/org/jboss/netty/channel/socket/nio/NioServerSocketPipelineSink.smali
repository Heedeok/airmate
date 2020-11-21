.class Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.source "NioServerSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final id:I

.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    nop

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "workerPool":Lorg/jboss/netty/channel/socket/nio/WorkerPool;, "Lorg/jboss/netty/channel/socket/nio/WorkerPool<Lorg/jboss/netty/channel/socket/nio/NioWorker;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    .line 51
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->id:I

    .line 56
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    .line 57
    return-void
.end method

.method private bind(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 11
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "bound":Z
    const/4 v1, 0x0

    .line 138
    .local v1, "bossStarted":Z
    :try_start_2
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v3

    invoke-virtual {v2, p3, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 139
    const/4 v0, 0x1

    .line 141
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 142
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    .line 144
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 146
    .local v2, "bossExecutor":Ljava/util/concurrent/Executor;
    new-instance v3, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v4, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;

    invoke-direct {v4, p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New I/O server boss #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_53} :catch_61
    .catchall {:try_start_2 .. :try_end_53} :catchall_5f

    .line 149
    const/4 v1, 0x1

    .line 150
    .end local v2    # "bossExecutor":Ljava/util/concurrent/Executor;
    nop

    .line 158
    if-nez v1, :cond_5c

    if-eqz v0, :cond_5c

    .line 155
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 157
    :cond_5c
    nop

    .line 158
    move-object v2, p0

    goto :goto_72

    .line 154
    :catchall_5f
    move-exception v2

    goto :goto_73

    .line 150
    :catch_61
    move-exception v2

    .line 151
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_62
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 152
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_5f

    .line 153
    .end local v2    # "t":Ljava/lang/Throwable;
    nop

    .line 155
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
    if-nez v1, :cond_71

    if-eqz v0, :cond_71

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 157
    :cond_71
    nop

    .line 158
    :goto_72
    return-void

    .line 154
    .end local v2    # "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
    :goto_73
    nop

    .line 155
    move-object v3, p0

    .local v3, "this":Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;
    if-nez v1, :cond_7c

    if-eqz v0, :cond_7c

    invoke-static {p1, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 154
    :cond_7c
    throw v2
.end method

.method private static close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 5
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;

    .line 161
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->isBound()Z

    move-result v0

    .line 163
    .local v0, "bound":Z
    :try_start_4
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 164
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 165
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->selector:Ljava/nio/channels/Selector;

    .line 166
    .local v1, "selector":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_18

    .line 167
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 174
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :cond_18
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_41

    .line 176
    :try_start_1d
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->setClosed()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 177
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 178
    if-eqz v0, :cond_2b

    .line 179
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    .line 181
    :cond_2b
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_32

    .line 183
    :cond_2f
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_3a

    .line 185
    :goto_32
    nop

    .line 192
    :try_start_33
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    nop

    .line 191
    goto :goto_48

    .line 186
    :catchall_3a
    move-exception v1

    .line 192
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->shutdownLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    throw v1
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_41} :catch_41

    .line 188
    :catch_41
    move-exception v1

    .line 189
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 190
    invoke-static {p0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 192
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_48
    return-void
.end method

.method private static handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 8
    .param p0, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 99
    instance-of v0, p0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_48

    .line 100
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 101
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 102
    .local v1, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 103
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 104
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_62

    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_47

    .line 119
    .restart local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, v2, v6}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_47

    .line 114
    :pswitch_32
    if-nez v4, :cond_47

    .line 115
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_47

    .line 108
    :pswitch_3a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 109
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 122
    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_47
    :goto_47
    goto :goto_61

    :cond_48
    instance-of v0, p0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_61

    .line 123
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 124
    .local v0, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 125
    .restart local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 126
    .local v2, "offered":Z
    nop

    .line 127
    iget-object v3, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v3, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 129
    .end local v0    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v2    # "offered":Z
    :cond_61
    :goto_61
    return-void

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_32
        :pswitch_32
        :pswitch_25
    .end packed-switch
.end method

.method private handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 9
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 71
    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-nez v0, :cond_5

    .line 72
    return-void

    .line 75
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 76
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    .line 78
    .local v1, "channel":Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 79
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 80
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 82
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_40

    goto :goto_3e

    .line 89
    :pswitch_26
    if-eqz v4, :cond_2f

    .line 90
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, v2, v5}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_3e

    .line 92
    :cond_2f
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_3e

    .line 84
    :pswitch_33
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 85
    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 96
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

    .line 62
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    .line 63
    .local v0, "channel":Lorg/jboss/netty/channel/Channel;
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    if-eqz v1, :cond_c

    .line 64
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->handleServerSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_13

    .line 65
    :cond_c
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    if-eqz v1, :cond_13

    .line 66
    invoke-static {p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->handleAcceptedSocket(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 68
    :cond_13
    :goto_13
    return-void
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .registers 2

    .line 195
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    return-object v0
.end method
