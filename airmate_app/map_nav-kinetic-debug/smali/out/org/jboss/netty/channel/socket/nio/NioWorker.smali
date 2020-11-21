.class public Lorg/jboss/netty/channel/socket/nio/NioWorker;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.source "NioWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 40
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;)V

    .line 37
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "allowShutdownOnIdle"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 37
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    .line 45
    return-void
.end method


# virtual methods
.method protected createRegisterTask(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .registers 6
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 144
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    instance-of v0, p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 145
    .local v0, "server":Z
    :goto_7
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-direct {v1, p0, v2, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V

    return-object v1
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Runnable;

    .line 35
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic executeInIoThread(Ljava/lang/Runnable;Z)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Z

    .line 35
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected read(Ljava/nio/channels/SelectionKey;)Z
    .registers 14
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 50
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 51
    .local v0, "ch":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    .line 53
    .local v1, "channel":Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v2

    .line 55
    .local v2, "predictor":Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
    invoke-interface {v2}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v3

    .line 57
    .local v3, "predictedRecvBufSize":I
    const/4 v4, 0x0

    .line 58
    .local v4, "ret":I
    const/4 v5, 0x0

    .line 59
    .local v5, "readBytes":I
    const/4 v6, 0x1

    .line 61
    .local v6, "failure":Z
    iget-object v7, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v7, v3}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->acquire(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 63
    .local v7, "bb":Ljava/nio/ByteBuffer;
    :cond_21
    :try_start_21
    invoke-virtual {v0, v7}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    move v4, v8

    if-lez v8, :cond_30

    .line 64
    add-int/2addr v5, v4

    .line 65
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8
    :try_end_2d
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_21 .. :try_end_2d} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2d} :catch_32

    if-nez v8, :cond_21

    .line 66
    nop

    .line 69
    :cond_30
    const/4 v6, 0x0

    goto :goto_38

    .line 72
    :catch_32
    move-exception v8

    .line 73
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v1, v8}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 70
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_37
    move-exception v8

    .line 74
    :goto_38
    nop

    .line 76
    :goto_39
    const/4 v8, 0x0

    if-lez v5, :cond_5d

    .line 77
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v9

    .line 81
    .local v9, "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    invoke-interface {v9, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v10

    .line 82
    .local v10, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v10, v8, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    .line 83
    invoke-interface {v10, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 85
    iget-object v11, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v11, v7}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 88
    invoke-interface {v2, v5}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->previousReceiveBufferSize(I)V

    .line 91
    invoke-static {v1, v10}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    .line 92
    .end local v9    # "bufferFactory":Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .end local v10    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    goto :goto_62

    .line 93
    :cond_5d
    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->recvBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;

    invoke-virtual {v9, v7}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 96
    :goto_62
    if-ltz v4, :cond_69

    if-eqz v6, :cond_67

    goto :goto_69

    .line 102
    :cond_67
    const/4 v8, 0x1

    return v8

    .line 97
    :cond_69
    :goto_69
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 98
    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 99
    return v8
.end method

.method public bridge synthetic run()V
    .registers 1

    .line 35
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->run()V

    return-void
.end method

.method protected scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)Z"
        }
    .end annotation

    .line 108
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 109
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->thread:Ljava/lang/Thread;

    .line 110
    .local v1, "workerThread":Ljava/lang/Thread;
    const/4 v2, 0x0

    if-eq v0, v1, :cond_36

    .line 111
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTaskInTaskQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 112
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->writeTaskQueue:Ljava/util/Queue;

    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeTask:Ljava/lang/Runnable;

    invoke-interface {v3, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 113
    .local v3, "offered":Z
    nop

    .line 116
    .end local v3    # "offered":Z
    :cond_1b
    instance-of v3, p1, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    if-eqz v3, :cond_26

    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioAcceptedSocketChannel;->bossThread:Ljava/lang/Thread;

    if-eq v3, v0, :cond_35

    .line 118
    :cond_26
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    .line 119
    .local v3, "workerSelector":Ljava/nio/channels/Selector;
    if-eqz v3, :cond_35

    .line 120
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 121
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 136
    .end local v3    # "workerSelector":Ljava/nio/channels/Selector;
    :cond_35
    return v4

    .line 139
    :cond_36
    return v2
.end method
