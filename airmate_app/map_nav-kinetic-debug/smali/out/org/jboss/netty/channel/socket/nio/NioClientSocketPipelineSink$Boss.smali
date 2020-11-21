.class final Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Boss"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final registerTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field volatile selector:Ljava/nio/channels/Selector;

.field private final startStopLock:Ljava/lang/Object;

.field private started:Z

.field private final subId:I

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

.field private final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 171
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;I)V
    .registers 3
    .param p2, "subId"    # I

    .line 180
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    .line 177
    const-class p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    .line 181
    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->subId:I

    .line 182
    return-void
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .registers 5
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 417
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 418
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 419
    return-void
.end method

.method private connect(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 402
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 404
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    :try_start_6
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 405
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 406
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 413
    :cond_1a
    goto :goto_30

    .line 408
    :catch_1b
    move-exception v1

    .line 409
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 410
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 412
    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 414
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_30
    return-void
.end method

.method private processConnectTimeout(Ljava/util/Set;J)V
    .registers 13
    .param p2, "currentTimeNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)V"
        }
    .end annotation

    .line 372
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    const/4 v0, 0x0

    .line 373
    .local v0, "cause":Ljava/net/ConnectException;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 374
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_18

    .line 383
    goto :goto_5

    .line 386
    :cond_18
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 387
    .local v3, "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    iget-wide v4, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_47

    iget-wide v4, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    cmp-long v6, p2, v4

    if-ltz v6, :cond_47

    .line 390
    if-nez v0, :cond_36

    .line 391
    new-instance v4, Ljava/net/ConnectException;

    const-string v5, "connection timed out"

    invoke-direct {v4, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 394
    :cond_36
    iget-object v4, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v4, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 395
    invoke-static {v3, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    .line 396
    iget-object v4, v3, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 398
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    .end local v3    # "ch":Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;
    :cond_47
    goto :goto_5

    .line 399
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_48
    return-void
.end method

.method private processRegisterTaskQueue()V
    .registers 2

    .line 346
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 347
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_c

    .line 348
    nop

    .line 353
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 351
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 352
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 358
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 360
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 361
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->close(Ljava/nio/channels/SelectionKey;)V

    .line 362
    goto :goto_4

    .line 365
    :cond_1d
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 366
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->connect(Ljava/nio/channels/SelectionKey;)V

    .line 368
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    :cond_26
    goto :goto_4

    .line 369
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_27
    return-void
.end method


# virtual methods
.method register(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    .registers 12
    .param p1, "channel"    # Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    .line 185
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V

    .line 188
    .local v0, "registerTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    const/4 v2, 0x0

    :try_start_9
    iget-boolean v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_a9

    const/4 v4, 0x0

    if-nez v3, :cond_8e

    .line 192
    :try_start_e
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_12} :catch_83
    .catchall {:try_start_e .. :try_end_12} :catchall_a9

    move-object v5, v3

    .local v5, "selector":Ljava/nio/channels/Selector;
    :try_start_13
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_15} :catch_81
    .catchall {:try_start_13 .. :try_end_15} :catchall_7e

    .line 196
    nop

    .line 199
    move v3, v4

    .line 201
    .local v3, "success":Z
    :try_start_17
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v6, v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New I/O client boss #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget v9, v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_42
    .catchall {:try_start_17 .. :try_end_42} :catchall_5f

    .line 205
    const/4 v3, 0x1

    .line 206
    nop

    .line 235
    if-nez v3, :cond_5d

    .line 210
    :try_start_46
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_7e

    .line 215
    goto :goto_5a

    .line 211
    :catch_4a
    move-exception v6

    .line 212
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_4b
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v7}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 213
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v8, "Failed to close a selector."

    invoke-interface {v7, v8, v6}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_5a
    :goto_5a
    move-object v5, v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_7e

    .line 219
    :cond_5d
    nop

    .line 220
    .end local v3    # "success":Z
    goto :goto_90

    .line 207
    .restart local v3    # "success":Z
    :catchall_5f
    move-exception v4

    .line 216
    move-object v6, p0

    .local v6, "this":Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    if-nez v3, :cond_7a

    .line 210
    :try_start_63
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_67
    .catchall {:try_start_63 .. :try_end_66} :catchall_af

    .line 215
    goto :goto_77

    .line 211
    :catch_67
    move-exception v7

    .line 212
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_68
    sget-object v8, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v8}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 213
    sget-object v8, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v9, "Failed to close a selector."

    invoke-interface {v8, v9, v7}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_77
    :goto_77
    move-object v5, v2

    iput-object v2, v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_af

    .line 207
    :cond_7a
    move-object v2, v5

    .end local v5    # "selector":Ljava/nio/channels/Selector;
    .local v2, "selector":Ljava/nio/channels/Selector;
    :try_start_7b
    throw v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 230
    .end local v3    # "success":Z
    :catchall_7c
    move-exception v3

    goto :goto_ab

    .end local v2    # "selector":Ljava/nio/channels/Selector;
    .end local v6    # "this":Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    .restart local v5    # "selector":Ljava/nio/channels/Selector;
    :catchall_7e
    move-exception v2

    move-object v6, p0

    goto :goto_ad

    .line 193
    :catch_81
    move-exception v2

    goto :goto_86

    .end local v5    # "selector":Ljava/nio/channels/Selector;
    :catch_83
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    .line 194
    .local v2, "t":Ljava/lang/Throwable;
    .restart local v5    # "selector":Ljava/nio/channels/Selector;
    :goto_86
    :try_start_86
    new-instance v3, Lorg/jboss/netty/channel/ChannelException;

    const-string v4, "Failed to create a selector."

    invoke-direct {v3, v4, v2}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_7e

    .line 222
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v5    # "selector":Ljava/nio/channels/Selector;
    :cond_8e
    :try_start_8e
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .restart local v5    # "selector":Ljava/nio/channels/Selector;
    :goto_90
    move-object v2, v5

    .line 225
    .end local v5    # "selector":Ljava/nio/channels/Selector;
    .local v2, "selector":Ljava/nio/channels/Selector;
    nop

    .line 227
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z

    .line 228
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v5

    .line 229
    .local v5, "offered":Z
    nop

    .line 230
    .end local v5    # "offered":Z
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_8e .. :try_end_9d} :catchall_a9

    .line 232
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 233
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 235
    :cond_a8
    return-void

    .line 230
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    :catchall_a9
    move-exception v3

    move-object v6, p0

    .local v5, "selector":Ljava/nio/channels/Selector;
    .restart local v6    # "this":Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    :goto_ab
    move-object v5, v2

    move-object v2, v3

    :goto_ad
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_af

    throw v2

    :catchall_af
    move-exception v2

    goto :goto_ad
.end method

.method public run()V
    .registers 15

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "shutdown":Z
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 240
    .local v1, "selector":Ljava/nio/channels/Selector;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move v4, v0

    move-object v0, p0

    .line 242
    .local v0, "this":Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;
    .local v2, "lastConnectTimeoutCheckTimeNanos":J
    .local v4, "shutdown":Z
    :goto_9
    iget-object v5, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    const-wide/16 v7, 0xa

    :try_start_11
    invoke-virtual {v1, v7, v8}, Ljava/nio/channels/Selector;->select(J)I

    move-result v5

    .line 275
    .local v5, "selectedKeyCount":I
    iget-object v7, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 276
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 279
    :cond_20
    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processRegisterTaskQueue()V

    .line 281
    if-lez v5, :cond_2c

    .line 282
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processSelectedKeys(Ljava/util/Set;)V

    .line 286
    :cond_2c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 287
    .local v7, "currentTimeNanos":J
    const/4 v9, 0x0

    sub-long v9, v7, v2

    const-wide/32 v11, 0x989680

    cmp-long v13, v9, v11

    if-ltz v13, :cond_42

    .line 288
    move-wide v2, v7

    .line 289
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9, v7, v8}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->processConnectTimeout(Ljava/util/Set;J)V

    .line 297
    :cond_42
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 298
    if-nez v4, :cond_65

    iget-object v9, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v9, v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    instance-of v9, v9, Ljava/util/concurrent/ExecutorService;

    if-eqz v9, :cond_63

    iget-object v9, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iget-object v9, v9, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->bossExecutor:Ljava/util/concurrent/Executor;

    check-cast v9, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_65

    .line 322
    :cond_63
    const/4 v4, 0x1

    goto :goto_bc

    .line 301
    :cond_65
    :goto_65
    iget-object v9, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->startStopLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_68} :catch_a5

    .line 302
    :try_start_68
    iget-object v10, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9d

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 303
    iput-boolean v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->started:Z
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_a0

    .line 305
    const/4 v6, 0x0

    :try_start_7d
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_86
    .catchall {:try_start_7d .. :try_end_80} :catchall_84

    .line 306
    nop

    .line 342
    :goto_81
    :try_start_81
    iput-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_a0

    .line 314
    goto :goto_97

    .line 313
    :catchall_84
    move-exception v10

    goto :goto_99

    .line 306
    :catch_86
    move-exception v10

    .line 307
    .local v10, "e":Ljava/io/IOException;
    :try_start_87
    sget-object v11, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v11}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v11

    if-eqz v11, :cond_96

    .line 308
    sget-object v11, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v12, "Failed to close a selector."

    invoke-interface {v11, v12, v10}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_84

    .line 312
    .end local v10    # "e":Ljava/io/IOException;
    :cond_96
    goto :goto_81

    .line 315
    :goto_97
    :try_start_97
    monitor-exit v9

    .line 342
    .end local v5    # "selectedKeyCount":I
    .end local v7    # "currentTimeNanos":J
    return-void

    .line 313
    .restart local v5    # "selectedKeyCount":I
    .restart local v7    # "currentTimeNanos":J
    :goto_99
    nop

    .line 342
    iput-object v6, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$Boss;->selector:Ljava/nio/channels/Selector;

    .line 313
    throw v10

    .line 317
    :cond_9d
    const/4 v4, 0x0

    .line 319
    monitor-exit v9

    goto :goto_bc

    :catchall_a0
    move-exception v6

    monitor-exit v9
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_a0

    :try_start_a2
    throw v6
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a3} :catch_a5

    .line 325
    :cond_a3
    const/4 v4, 0x0

    goto :goto_bc

    .line 327
    .end local v5    # "selectedKeyCount":I
    .end local v7    # "currentTimeNanos":J
    :catch_a5
    move-exception v5

    .line 328
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v6}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 329
    sget-object v6, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v7, "Unexpected exception in the selector loop."

    invoke-interface {v6, v7, v5}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    :cond_b5
    const-wide/16 v6, 0x3e8

    :try_start_b7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 339
    goto :goto_bc

    .line 337
    :catch_bb
    move-exception v6

    .line 340
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_bc
    goto/16 :goto_9
.end method
