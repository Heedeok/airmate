.class abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;
.super Ljava/lang/Object;
.source "AbstractNioWorker.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/Worker;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CLEANUP_INTERVAL:I = 0x100

.field private static final CONSTRAINT_LEVEL:I

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final allowShutdownOnIdle:Z

.field private volatile cancelledKeys:I

.field private final eventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field final id:I

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

.field private final selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private final startStopLock:Ljava/lang/Object;

.field private started:Z

.field protected volatile thread:Ljava/lang/Thread;

.field protected final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final writeTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    nop

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    const-class v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 63
    sget v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    sput v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->CONSTRAINT_LEVEL:I

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;-><init>(Ljava/util/concurrent/Executor;Z)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "allowShutdownOnIdle"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->id:I

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->startStopLock:Ljava/lang/Object;

    .line 111
    const-class v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->registerTaskQueue:Ljava/util/Queue;

    .line 116
    const-class v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeTaskQueue:Ljava/util/Queue;

    .line 118
    const-class v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->eventQueue:Ljava/util/Queue;

    .line 123
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 132
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executor:Ljava/util/concurrent/Executor;

    .line 133
    iput-boolean p2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->allowShutdownOnIdle:Z

    .line 134
    return-void
.end method

.method private cleanUpCancelledKeys()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cancelledKeys:I

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-lt v0, v2, :cond_10

    .line 393
    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cancelledKeys:I

    .line 394
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 395
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_10
    return v1
.end method

.method private close(Ljava/nio/channels/SelectionKey;)V
    .registers 4
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 403
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    .line 404
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    .line 405
    return-void
.end method

.method static isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)Z"
        }
    .end annotation

    .line 554
    .local p0, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private processEventQueue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 358
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_c

    .line 359
    nop

    .line 364
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 361
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 362
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpCancelledKeys()Z

    .line 363
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private processRegisterTaskQueue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 334
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_c

    .line 335
    nop

    .line 341
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 338
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 339
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpCancelledKeys()Z

    .line 340
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    .local p1, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 369
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 371
    :try_start_13
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    .line 372
    .local v2, "readyOps":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1d

    if-nez v2, :cond_24

    .line 373
    :cond_1d
    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->read(Ljava/nio/channels/SelectionKey;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 375
    goto :goto_4

    .line 378
    :cond_24
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2b

    .line 379
    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    :try_end_2b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 383
    .end local v2    # "readyOps":I
    :cond_2b
    goto :goto_30

    .line 381
    :catch_2c
    move-exception v2

    .line 382
    .local v2, "e":Ljava/nio/channels/CancelledKeyException;
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    .line 385
    .end local v2    # "e":Ljava/nio/channels/CancelledKeyException;
    :goto_30
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpCancelledKeys()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 386
    goto :goto_38

    .line 388
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    :cond_37
    goto :goto_4

    .line 389
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_38
    :goto_38
    return-void
.end method

.method private processWriteTaskQueue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->writeTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 346
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_c

    .line 347
    nop

    .line 353
    .end local v0    # "task":Ljava/lang/Runnable;
    return-void

    .line 350
    .restart local v0    # "task":Ljava/lang/Runnable;
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 351
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpCancelledKeys()Z

    .line 352
    .end local v0    # "task":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method private start()Ljava/nio/channels/Selector;
    .registers 8

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_66

    if-nez v1, :cond_5e

    .line 161
    :try_start_7
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_55
    .catchall {:try_start_7 .. :try_end_d} :catchall_66

    .line 164
    nop

    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "success":Z
    const/4 v2, 0x0

    :try_start_10
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New I/O  worker #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_41

    .line 170
    const/4 v1, 0x1

    .line 172
    if-nez v1, :cond_5e

    .line 175
    :try_start_30
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_36
    .catchall {:try_start_30 .. :try_end_35} :catchall_66

    .line 178
    goto :goto_3e

    .line 176
    :catch_36
    move-exception v3

    .line 177
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_37
    sget-object v4, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v5, "Failed to close a selector."

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_3e
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_66

    goto :goto_5e

    .line 172
    :catchall_41
    move-exception v3

    if-nez v1, :cond_54

    .line 175
    :try_start_44
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_66

    .line 178
    goto :goto_52

    .line 176
    :catch_4a
    move-exception v4

    .line 177
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_4b
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a selector."

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_52
    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    :cond_54
    throw v3

    .line 162
    .end local v1    # "success":Z
    :catch_55
    move-exception v1

    .line 163
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelException;

    const-string v3, "Failed to create a selector."

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 185
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_5e
    :goto_5e
    nop

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->started:Z

    .line 188
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_66

    .line 189
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    return-object v0

    .line 188
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method


# virtual methods
.method protected cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 650
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    const/4 v0, 0x0

    .line 651
    .local v0, "cause":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 654
    .local v1, "fireExceptionCaught":Z
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 655
    :try_start_5
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 656
    .local v3, "evt":Lorg/jboss/netty/channel/MessageEvent;
    if-eqz v3, :cond_2f

    .line 659
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 660
    new-instance v4, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v4}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    move-object v0, v4

    goto :goto_1c

    .line 662
    :cond_16
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v4

    .line 665
    :goto_1c
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    .line 666
    .local v4, "future":Lorg/jboss/netty/channel/ChannelFuture;
    iget-object v5, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 667
    const/4 v5, 0x0

    iput-object v5, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 668
    iput-object v5, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 669
    const/4 v3, 0x0

    .line 670
    invoke-interface {v4, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 671
    const/4 v1, 0x1

    .line 674
    .end local v4    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_2f
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 676
    .local v4, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :goto_31
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/channel/MessageEvent;

    move-object v3, v5

    .line 677
    if-nez v3, :cond_4c

    .line 678
    nop

    .line 694
    .end local v3    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v4    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_6a

    .line 696
    if-eqz v1, :cond_4b

    .line 697
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 698
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 700
    :cond_48
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 703
    :cond_4b
    :goto_4b
    return-void

    .line 682
    .restart local v3    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v4    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :cond_4c
    if-nez v0, :cond_62

    .line 683
    :try_start_4e
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 684
    new-instance v5, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v5}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    move-object v0, v5

    goto :goto_61

    .line 686
    :cond_5b
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object v0, v5

    .line 688
    :goto_61
    const/4 v1, 0x1

    .line 690
    :cond_62
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_31

    .line 694
    .end local v3    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v4    # "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_6a

    throw v3
.end method

.method protected clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 581
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    .line 582
    .local v0, "selector":Ljava/nio/channels/Selector;
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 583
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-nez v1, :cond_b

    .line 584
    return-void

    .line 586
    :cond_b
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    .line 587
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    .line 588
    return-void

    .line 593
    :cond_15
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_18
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v3

    .line 595
    .local v3, "interestOps":I
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_28

    .line 596
    and-int/lit8 v3, v3, -0x5

    .line 597
    invoke-virtual {v1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 598
    invoke-virtual {p1, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    .line 600
    .end local v3    # "interestOps":I
    :cond_28
    monitor-exit v2

    .line 601
    return-void

    .line 600
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 7
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ")V"
        }
    .end annotation

    .line 605
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isConnected()Z

    move-result v0

    .line 606
    .local v0, "connected":Z
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isBound()Z

    move-result v1

    .line 607
    .local v1, "bound":Z
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v2

    .line 610
    .local v2, "iothread":Z
    :try_start_c
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 611
    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cancelledKeys:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cancelledKeys:I

    .line 613
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setClosed()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 614
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 615
    if-eqz v0, :cond_2b

    .line 616
    if-eqz v2, :cond_28

    .line 617
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_2b

    .line 619
    :cond_28
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 622
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_36

    .line 623
    if-eqz v2, :cond_33

    .line 624
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_36

    .line 626
    :cond_33
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelUnboundLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 630
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 631
    if-eqz v2, :cond_3f

    .line 632
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosed(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_46

    .line 634
    :cond_3f
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelClosedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_46

    .line 637
    :cond_43
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_46} :catch_47

    .line 646
    :goto_46
    goto :goto_54

    .line 639
    :catch_47
    move-exception v3

    .line 640
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 641
    if-eqz v2, :cond_51

    .line 642
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_54

    .line 644
    :cond_51
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 647
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_54
    return-void
.end method

.method protected abstract createRegisterTask(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
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
.end method

.method public executeInIoThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;Z)V

    .line 300
    return-void
.end method

.method public executeInIoThread(Ljava/lang/Runnable;Z)V
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "alwaysAsync"    # Z

    .line 312
    if-nez p2, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_e

    .line 313
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    .line 315
    :cond_e
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->start()Ljava/nio/channels/Selector;

    .line 316
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->eventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    .local v0, "added":Z
    nop

    .line 319
    if-eqz v0, :cond_21

    .line 321
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    .line 322
    .local v1, "selector":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_21

    .line 323
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 328
    .end local v0    # "added":Z
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    :cond_21
    :goto_21
    return-void
.end method

.method protected abstract read(Ljava/nio/channels/SelectionKey;)Z
.end method

.method register(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .registers 9
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            ")V"
        }
    .end annotation

    .line 138
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->createRegisterTask(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;

    move-result-object v0

    .line 139
    .local v0, "registerTask":Ljava/lang/Runnable;
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->start()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 142
    .local v1, "selector":Ljava/nio/channels/Selector;
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 143
    .local v2, "offered":Z
    nop

    .line 145
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 146
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 148
    :cond_1c
    return-void
.end method

.method public run()V
    .registers 8

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "shutdown":Z
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    .line 199
    .local v1, "selector":Ljava/nio/channels/Selector;
    :goto_9
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    sget v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->CONSTRAINT_LEVEL:I

    if-eqz v2, :cond_25

    .line 202
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 205
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    :cond_25
    :try_start_25
    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->select(Ljava/nio/channels/Selector;)V

    .line 239
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 240
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 243
    :cond_33
    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cancelledKeys:I

    .line 244
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->processRegisterTaskQueue()V

    .line 245
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->processEventQueue()V

    .line 246
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->processWriteTaskQueue()V

    .line 247
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->processSelectedKeys(Ljava/util/Set;)V

    .line 254
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 255
    if-nez v0, :cond_68

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executor:Ljava/util/concurrent/Executor;

    instance-of v2, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executor:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_68

    .line 275
    :cond_62
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->allowShutdownOnIdle:Z

    if-eqz v2, :cond_ad

    .line 277
    const/4 v0, 0x1

    goto :goto_ad

    .line 258
    :cond_68
    :goto_68
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->startStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_6b} :catch_9e

    .line 259
    :try_start_6b
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->registerTaskQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 260
    iput-boolean v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->started:Z
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_99

    .line 262
    const/4 v3, 0x0

    :try_start_80
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_88
    .catchall {:try_start_80 .. :try_end_83} :catchall_86

    .line 267
    :goto_83
    :try_start_83
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_99

    .line 268
    goto :goto_91

    .line 267
    :catchall_86
    move-exception v4

    goto :goto_93

    .line 263
    :catch_88
    move-exception v4

    .line 264
    .local v4, "e":Ljava/io/IOException;
    :try_start_89
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a selector."

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    goto :goto_83

    .line 269
    .end local v4    # "e":Ljava/io/IOException;
    :goto_91
    :try_start_91
    monitor-exit v2

    .line 296
    return-void

    .line 267
    :goto_93
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    throw v4

    .line 271
    :cond_96
    const/4 v0, 0x0

    .line 273
    monitor-exit v2

    goto :goto_ad

    :catchall_99
    move-exception v3

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v3
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9c} :catch_9e

    .line 281
    :cond_9c
    const/4 v0, 0x0

    goto :goto_ad

    .line 283
    :catch_9e
    move-exception v2

    .line 284
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "Unexpected exception in the selector loop."

    invoke-interface {v3, v4, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const-wide/16 v3, 0x3e8

    :try_start_a8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 293
    goto :goto_ad

    .line 291
    :catch_ac
    move-exception v3

    .line 294
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_ad
    :goto_ad
    goto/16 :goto_9
.end method

.method protected abstract scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)Z"
        }
    .end annotation
.end method

.method setInterestOps(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .registers 13
    .param p2, "future"    # Lorg/jboss/netty/channel/ChannelFuture;
    .param p3, "interestOps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;",
            "Lorg/jboss/netty/channel/ChannelFuture;",
            "I)V"
        }
    .end annotation

    .line 706
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    const/4 v0, 0x0

    .line 707
    .local v0, "changed":Z
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v1

    .line 711
    .local v1, "iothread":Z
    :try_start_5
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_8} :catch_cb
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_bd

    .line 712
    :try_start_8
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    .line 713
    .local v3, "selector":Ljava/nio/channels/Selector;
    iget-object v4, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 716
    .local v4, "key":Ljava/nio/channels/SelectionKey;
    and-int/lit8 p3, p3, -0x5

    .line 717
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    or-int/2addr p3, v5

    .line 719
    if-eqz v4, :cond_a0

    if-nez v3, :cond_1f

    goto/16 :goto_a0

    .line 740
    :cond_1f
    sget v5, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->CONSTRAINT_LEVEL:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_e0

    .line 772
    new-instance v5, Ljava/lang/Error;

    goto/16 :goto_9c

    .line 753
    :pswitch_2a
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v5

    if-eq v5, p3, :cond_87

    .line 754
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-ne v5, v8, :cond_3d

    .line 755
    invoke-virtual {v4, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 756
    const/4 v0, 0x1

    goto :goto_87

    .line 758
    :cond_3d
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_ba

    .line 760
    :try_start_46
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 761
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 763
    :cond_51
    invoke-virtual {v4, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_5f

    .line 764
    const/4 v0, 0x1

    .line 766
    :try_start_55
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 767
    goto :goto_87

    .line 766
    :catchall_5f
    move-exception v5

    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selectorGuard:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 742
    :pswitch_6a
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v5

    if-eq v5, p3, :cond_87

    .line 743
    invoke-virtual {v4, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 744
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->thread:Ljava/lang/Thread;

    if-eq v5, v8, :cond_86

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 746
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 748
    :cond_86
    const/4 v0, 0x1

    .line 775
    :cond_87
    :goto_87
    if-eqz v0, :cond_8c

    .line 776
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    .line 778
    .end local v3    # "selector":Ljava/nio/channels/Selector;
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    :cond_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_55 .. :try_end_8d} :catchall_ba

    .line 780
    :try_start_8d
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 781
    if-eqz v0, :cond_dd

    .line 782
    if-eqz v1, :cond_98

    .line 783
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_dd

    .line 785
    :cond_98
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_9b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8d .. :try_end_9b} :catch_cb
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_9b} :catch_bd

    goto :goto_dd

    .line 772
    .restart local v3    # "selector":Ljava/nio/channels/Selector;
    .restart local v4    # "key":Ljava/nio/channels/SelectionKey;
    :goto_9c
    :try_start_9c
    invoke-direct {v5}, Ljava/lang/Error;-><init>()V

    throw v5

    .line 720
    :cond_a0
    :goto_a0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v5

    if-eq v5, p3, :cond_a7

    .line 721
    const/4 v0, 0x1

    .line 726
    :cond_a7
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    .line 728
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    .line 729
    if-eqz v0, :cond_b8

    .line 730
    if-eqz v1, :cond_b5

    .line 731
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    goto :goto_b8

    .line 733
    :cond_b5
    invoke-static {p1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChangedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 737
    :cond_b8
    :goto_b8
    monitor-exit v2

    return-void

    .line 778
    .end local v3    # "selector":Ljava/nio/channels/Selector;
    .end local v4    # "key":Ljava/nio/channels/SelectionKey;
    :catchall_ba
    move-exception v3

    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v3
    :try_end_bd
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_bc .. :try_end_bd} :catch_cb
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bd} :catch_bd

    .line 797
    :catch_bd
    move-exception v2

    .line 798
    .local v2, "t":Ljava/lang/Throwable;
    invoke-interface {p2, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 799
    if-eqz v1, :cond_c7

    .line 800
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_de

    .line 802
    :cond_c7
    invoke-static {p1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_de

    .line 788
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_cb
    move-exception v2

    .line 790
    .local v2, "e":Ljava/nio/channels/CancelledKeyException;
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 791
    .local v3, "cce":Ljava/nio/channels/ClosedChannelException;
    invoke-interface {p2, v3}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 792
    if-eqz v1, :cond_da

    .line 793
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 795
    :cond_da
    invoke-static {p1, v3}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 804
    .end local v2    # "e":Ljava/nio/channels/CancelledKeyException;
    .end local v3    # "cce":Ljava/nio/channels/ClosedChannelException;
    :cond_dd
    :goto_dd
    nop

    .line 805
    :goto_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method protected setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 558
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->selector:Ljava/nio/channels/Selector;

    .line 559
    .local v0, "selector":Ljava/nio/channels/Selector;
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 560
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-nez v1, :cond_b

    .line 561
    return-void

    .line 563
    :cond_b
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    .line 564
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Ljava/nio/channels/SelectionKey;)V

    .line 565
    return-void

    .line 570
    :cond_15
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->interestOpsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 571
    :try_start_18
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getRawInterestOps()I

    move-result v3

    .line 572
    .local v3, "interestOps":I
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_28

    .line 573
    or-int/lit8 v3, v3, 0x4

    .line 574
    invoke-virtual {v1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 575
    invoke-virtual {p1, v3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->setRawInterestOpsNow(I)V

    .line 577
    .end local v3    # "interestOps":I
    :cond_28
    monitor-exit v2

    .line 578
    return-void

    .line 577
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method protected write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 445
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    .line 446
    .local v3, "open":Z
    const/4 v4, 0x0

    .line 447
    .local v4, "addOpWrite":Z
    const/4 v5, 0x0

    .line 448
    .local v5, "removeOpWrite":Z
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v6

    .line 450
    .local v6, "iothread":Z
    const-wide/16 v7, 0x0

    .line 452
    .local v7, "writtenBytes":J
    iget-object v9, v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->sendBufferPool:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    .line 453
    .local v9, "sendBufferPool":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->channel:Ljava/nio/channels/SelectableChannel;

    move-object v10, v0

    check-cast v10, Ljava/nio/channels/WritableByteChannel;

    .line 454
    .local v10, "ch":Ljava/nio/channels/WritableByteChannel;
    iget-object v11, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeBufferQueue:Ljava/util/Queue;

    .line 455
    .local v11, "writeBuffer":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/jboss/netty/channel/MessageEvent;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteSpinCount()I

    move-result v12

    .line 456
    .local v12, "writeSpinCount":I
    iget-object v13, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 457
    const/4 v14, 0x1

    :try_start_22
    iput-boolean v14, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_126

    .line 459
    :goto_24
    :try_start_24
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_122

    .line 461
    .local v0, "evt":Lorg/jboss/netty/channel/MessageEvent;
    const/4 v15, 0x0

    if-nez v0, :cond_4a

    .line 462
    :try_start_29
    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lorg/jboss/netty/channel/MessageEvent;

    move-object v0, v14

    iput-object v14, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v14, :cond_3b

    .line 463
    const/4 v5, 0x1

    .line 464
    iput-boolean v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    .line 465
    goto/16 :goto_bf

    .line 468
    :cond_3b
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v14

    move-object/from16 v16, v14

    .local v16, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    iput-object v14, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_126

    .line 470
    move-object/from16 v14, v16

    goto :goto_4c

    .end local v16    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :cond_4a
    :try_start_4a
    iget-object v14, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .end local v0    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .local v14, "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .local v16, "evt":Lorg/jboss/netty/channel/MessageEvent;
    :goto_4c
    move-object/from16 v16, v0

    .line 473
    invoke-interface/range {v16 .. v16}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_122

    move-object/from16 v24, v0

    .line 475
    .local v24, "future":Lorg/jboss/netty/channel/ChannelFuture;
    const-wide/16 v17, 0x0

    .line 476
    .local v17, "localWrittenBytes":J
    move v0, v12

    .local v0, "i":I
    :goto_57
    const-wide/16 v19, 0x0

    const/4 v15, 0x0

    if-lez v0, :cond_81

    .line 477
    :try_start_5c
    invoke-interface {v14, v10}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->transferTo(Ljava/nio/channels/WritableByteChannel;)J

    move-result-wide v21

    move-wide/from16 v17, v21

    .line 478
    cmp-long v21, v17, v19

    if-eqz v21, :cond_69

    .line 479
    add-long v7, v7, v17

    .line 480
    goto :goto_81

    .line 482
    :cond_69
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v21
    :try_end_6d
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_5c .. :try_end_6d} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_6d} :catch_74
    .catchall {:try_start_5c .. :try_end_6d} :catchall_126

    if-eqz v21, :cond_70

    .line 483
    goto :goto_81

    .line 476
    :cond_70
    add-int/lit8 v0, v0, -0x1

    const/4 v15, 0x0

    goto :goto_57

    .line 510
    .end local v0    # "i":I
    .end local v17    # "localWrittenBytes":J
    :catch_74
    move-exception v0

    :goto_75
    const/4 v15, 0x1

    goto/16 :goto_e4

    .line 508
    :catch_78
    move-exception v0

    move/from16 v27, v3

    move-wide/from16 v25, v7

    .end local v3    # "open":Z
    .end local v7    # "writtenBytes":J
    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v25, "writtenBytes":J
    .local v27, "open":Z
    .local v28, "future":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_7d
    move-object/from16 v28, v24

    goto/16 :goto_11a

    .line 487
    .end local v27    # "open":Z
    .end local v28    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "open":Z
    .local v7, "localWrittenBytes":J
    .restart local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :cond_81
    :goto_81
    move-wide/from16 v25, v7

    move-wide/from16 v7, v17

    :try_start_85
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->finished()Z

    move-result v0
    :try_end_89
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_85 .. :try_end_89} :catch_115
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_89} :catch_e0
    .catchall {:try_start_85 .. :try_end_89} :catchall_dc

    if-eqz v0, :cond_a5

    .line 489
    :try_start_8b
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V

    .line 490
    iput-object v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 491
    iput-object v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    .line 492
    const/16 v16, 0x0

    .line 493
    const/4 v14, 0x0

    .line 494
    invoke-interface/range {v24 .. v24}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z
    :try_end_98
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_8b .. :try_end_98} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_98} :catch_9d
    .catchall {:try_start_8b .. :try_end_98} :catchall_dc

    .line 528
    .end local v7    # "localWrittenBytes":J
    nop

    .line 529
    move-wide/from16 v7, v25

    goto/16 :goto_11f

    .line 510
    :catch_9d
    move-exception v0

    move-wide/from16 v7, v25

    goto :goto_75

    .line 508
    :catch_a1
    move-exception v0

    move/from16 v27, v3

    goto :goto_7d

    .line 497
    .restart local v7    # "localWrittenBytes":J
    :cond_a5
    const/4 v4, 0x1

    .line 498
    const/4 v15, 0x1

    :try_start_a7
    iput-boolean v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    .line 500
    cmp-long v0, v7, v19

    if-lez v0, :cond_bc

    .line 502
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->writtenBytes()J

    move-result-wide v20

    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->totalBytes()J

    move-result-wide v22

    move-object/from16 v17, v24

    move-wide/from16 v18, v7

    invoke-interface/range {v17 .. v23}, Lorg/jboss/netty/channel/ChannelFuture;->setProgress(JJJ)Z
    :try_end_bc
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_a7 .. :try_end_bc} :catch_a1
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_bc} :catch_da
    .catchall {:try_start_a7 .. :try_end_bc} :catchall_dc

    .line 506
    :cond_bc
    nop

    .line 530
    move-wide/from16 v7, v25

    .end local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v25    # "writtenBytes":J
    .local v7, "writtenBytes":J
    :goto_bf
    const/4 v0, 0x0

    :try_start_c0
    iput-boolean v0, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    .line 538
    if-eqz v3, :cond_cf

    .line 539
    if-eqz v4, :cond_ca

    .line 540
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->setOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    goto :goto_cf

    .line 541
    :cond_ca
    if-eqz v5, :cond_cf

    .line 542
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->clearOpWrite(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 545
    :cond_cf
    :goto_cf
    monitor-exit v13
    :try_end_d0
    .catchall {:try_start_c0 .. :try_end_d0} :catchall_126

    .line 546
    if-eqz v6, :cond_d6

    .line 547
    invoke-static {v2, v7, v8}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    goto :goto_d9

    .line 549
    :cond_d6
    invoke-static {v2, v7, v8}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;

    .line 551
    :goto_d9
    return-void

    .line 510
    .end local v7    # "writtenBytes":J
    .restart local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .restart local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v25    # "writtenBytes":J
    :catch_da
    move-exception v0

    goto :goto_e2

    .line 545
    .end local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :catchall_dc
    move-exception v0

    move-wide/from16 v7, v25

    goto :goto_127

    .line 510
    .restart local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .restart local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :catch_e0
    move-exception v0

    const/4 v15, 0x1

    .end local v25    # "writtenBytes":J
    .restart local v7    # "writtenBytes":J
    :goto_e2
    move-wide/from16 v7, v25

    .line 511
    .local v0, "t":Ljava/lang/Throwable;
    :goto_e4
    if-eqz v14, :cond_e9

    .line 512
    :try_start_e6
    invoke-interface {v14}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;->release()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_126

    .line 514
    :cond_e9
    const/4 v15, 0x0

    :try_start_ea
    iput-object v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteEvent:Lorg/jboss/netty/channel/MessageEvent;

    .line 515
    iput-object v15, v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->currentWriteBuffer:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_122

    .line 516
    const/4 v14, 0x0

    .line 517
    const/4 v15, 0x0

    .line 518
    .end local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .local v15, "evt":Lorg/jboss/netty/channel/MessageEvent;
    move/from16 v27, v3

    move-object/from16 v3, v24

    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .local v3, "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v27    # "open":Z
    :try_start_f4
    invoke-interface {v3, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 519
    if-eqz v6, :cond_fd

    .line 520
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_100

    .line 522
    :cond_fd
    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 524
    :goto_100
    move-object/from16 v28, v3

    .end local v3    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v28    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    instance-of v3, v0, Ljava/io/IOException;
    :try_end_104
    .catchall {:try_start_f4 .. :try_end_104} :catchall_111

    if-eqz v3, :cond_11d

    .line 525
    const/4 v3, 0x0

    .line 526
    .end local v27    # "open":Z
    .local v3, "open":Z
    move-object/from16 v29, v0

    .end local v0    # "t":Ljava/lang/Throwable;
    .local v29, "t":Ljava/lang/Throwable;
    :try_start_109
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_11f

    .line 545
    .end local v3    # "open":Z
    .end local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v15    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v28    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .end local v29    # "t":Ljava/lang/Throwable;
    .restart local v27    # "open":Z
    :catchall_111
    move-exception v0

    move/from16 v3, v27

    goto :goto_127

    .line 508
    .end local v7    # "writtenBytes":J
    .end local v27    # "open":Z
    .restart local v3    # "open":Z
    .restart local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .restart local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .restart local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v25    # "writtenBytes":J
    :catch_115
    move-exception v0

    move/from16 v27, v3

    move-object/from16 v28, v24

    .line 528
    .end local v3    # "open":Z
    .end local v24    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v27    # "open":Z
    .restart local v28    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    :goto_11a
    nop

    .line 529
    move-wide/from16 v7, v25

    .end local v14    # "buf":Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .end local v16    # "evt":Lorg/jboss/netty/channel/MessageEvent;
    .end local v25    # "writtenBytes":J
    .end local v27    # "open":Z
    .end local v28    # "future":Lorg/jboss/netty/channel/ChannelFuture;
    .restart local v3    # "open":Z
    .restart local v7    # "writtenBytes":J
    :cond_11d
    move/from16 v3, v27

    .line 459
    :goto_11f
    const/4 v14, 0x1

    goto/16 :goto_24

    .line 545
    :catchall_122
    move-exception v0

    move/from16 v27, v3

    .end local v3    # "open":Z
    .restart local v27    # "open":Z
    goto :goto_127

    .end local v27    # "open":Z
    .restart local v3    # "open":Z
    :catchall_126
    move-exception v0

    :goto_127
    monitor-exit v13
    :try_end_128
    .catchall {:try_start_109 .. :try_end_128} :catchall_126

    throw v0
.end method

.method writeFromSelectorLoop(Ljava/nio/channels/SelectionKey;)V
    .registers 4
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 437
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    .line 438
    .local v0, "ch":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    .line 439
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 440
    return-void
.end method

.method writeFromTaskLoop(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 431
    .local p1, "ch":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-nez v0, :cond_7

    .line 432
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 434
    :cond_7
    return-void
.end method

.method writeFromUserCode(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<",
            "*>;)V"
        }
    .end annotation

    .line 408
    .local p1, "channel":Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;, "Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel<*>;"
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    .line 409
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->cleanUpWriteBuffer(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 410
    return-void

    .line 413
    :cond_a
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->scheduleWriteIfNecessary(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 414
    return-void

    .line 419
    :cond_11
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->writeSuspended:Z

    if-eqz v0, :cond_16

    .line 420
    return-void

    .line 423
    :cond_16
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->inWriteNowLoop:Z

    if-eqz v0, :cond_1b

    .line 424
    return-void

    .line 427
    :cond_1b
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->write0(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)V

    .line 428
    return-void
.end method
