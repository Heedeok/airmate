.class Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.source "NioClientSocketPipelineSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;,
        Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final bossExecutor:Ljava/util/concurrent/Executor;

.field private final bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

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

    .line 48
    nop

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .registers 7
    .param p1, "bossExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "bossCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "workerPool":Lorg/jboss/netty/channel/socket/nio/WorkerPool;, "Lorg/jboss/netty/channel/socket/nio/WorkerPool<Lorg/jboss/netty/channel/socket/nio/NioWorker;>;"
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;-><init>()V

    .line 57
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->id:I

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    .line 69
    new-array v0, p2, [Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 71
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    invoke-direct {v2, p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;I)V

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 74
    .end local v0    # "i":I
    :cond_2a
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    .line 75
    return-void
.end method

.method private static bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 4
    .param p0, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .param p1, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    .line 126
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->setBound()V

    .line 127
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 128
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 132
    goto :goto_23

    .line 129
    :catch_1c
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 131
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_23
    return-void
.end method

.method private connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .param p2, "cf"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 139
    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_2a

    .line 142
    :cond_10
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;

    invoke-direct {v1, p0, p2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;Lorg/jboss/netty/channel/ChannelFuture;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 150
    sget-object v0, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE_ON_FAILURE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 151
    iput-object p2, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    .line 152
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->nextBoss()Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->register(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 159
    :goto_2a
    goto :goto_3b

    .line 155
    :catch_2b
    move-exception v0

    .line 156
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 157
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 158
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 160
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3b
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

    .line 79
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_5e

    .line 80
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 81
    .local v0, "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 83
    .local v1, "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    .line 84
    .local v2, "future":Lorg/jboss/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v3

    .line 85
    .local v3, "state":Lorg/jboss/netty/channel/ChannelState;
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$2;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_78

    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    goto :goto_5d

    .line 108
    .restart local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .restart local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .restart local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .restart local v4    # "value":Ljava/lang/Object;
    :pswitch_25
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v1, v2, v6}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V

    goto :goto_5d

    .line 101
    :pswitch_32
    if-eqz v4, :cond_3b

    .line 102
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, v2, v5}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_5d

    .line 104
    :cond_3b
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 106
    goto :goto_5d

    .line 94
    :pswitch_41
    if-eqz v4, :cond_4a

    .line 95
    move-object v5, v4

    check-cast v5, Ljava/net/SocketAddress;

    invoke-static {v1, v2, v5}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bind(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V

    goto :goto_5d

    .line 97
    :cond_4a
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 99
    goto :goto_5d

    .line 89
    :pswitch_50
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 90
    iget-object v5, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v5, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 111
    .end local v0    # "event":Lorg/jboss/netty/channel/ChannelStateEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    .end local v2    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v3    # "state":Lorg/jboss/netty/channel/ChannelState;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5d
    :goto_5d
    goto :goto_77

    :cond_5e
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_77

    .line 112
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    .line 113
    .local v0, "event":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 114
    .local v1, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->writeBufferQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 115
    .local v2, "offered":Z
    nop

    .line 116
    iget-object v3, v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v3, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 118
    .end local v0    # "event":Lorg/jboss/netty/channel/MessageEvent;
    .end local v1    # "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    .end local v2    # "offered":Z
    :cond_77
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_25
    .end packed-switch
.end method

.method nextBoss()Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    .registers 4

    .line 163
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bosses:[Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method nextWorker()Lorg/jboss/netty/channel/socket/nio/NioWorker;
    .registers 2

    .line 168
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->nextWorker()Lorg/jboss/netty/channel/socket/Worker;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioWorker;

    return-object v0
.end method
