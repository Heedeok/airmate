.class public Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "MemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;,
        Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    }
.end annotation


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;


# instance fields
.field private final channelCounters:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/jboss/netty/channel/Channel;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private volatile notifyOnShutdown:Z

.field private volatile settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

.field private final totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 141
    const-class v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 144
    new-instance v0, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    const-class v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .registers 15
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J

    .line 167
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    .line 168
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;)V
    .registers 19
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 188
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 21
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 206
    new-instance v9, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v9}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V

    .line 209
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V
    .registers 27
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p10, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 229
    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v15, p9

    const-class v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/QueueFactory;->createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v9, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;

    const/4 v8, 0x0

    invoke-direct {v9, v8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$NewThreadRunsPolicy;-><init>(Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$1;)V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p1

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 149
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;-><init>()V

    iput-object v0, v10, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    .line 232
    if-eqz v15, :cond_a4

    .line 235
    const-wide/16 v1, 0x0

    cmp-long v0, v11, v1

    if-ltz v0, :cond_8d

    .line 239
    cmp-long v0, v13, v1

    if-ltz v0, :cond_76

    .line 247
    :try_start_36
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "allowCoreThreadTimeOut"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 248
    .local v0, "m":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v7

    invoke-virtual {v0, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_51} :catch_52

    .line 254
    .end local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_5a

    .line 249
    :catch_52
    move-exception v0

    .line 251
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v4, "ThreadPoolExecutor.allowCoreThreadTimeOut() is not supported in this platform."

    invoke-interface {v3, v4}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 256
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_5a
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    invoke-direct {v0, v15, v11, v12}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v0, v10, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 259
    cmp-long v0, v13, v1

    if-nez v0, :cond_69

    .line 260
    const/4 v1, 0x0

    iput-object v1, v10, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    goto :goto_70

    .line 262
    :cond_69
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    invoke-direct {v0, v13, v14}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;-><init>(J)V

    iput-object v0, v10, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    .line 266
    :goto_70
    sget-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->increase()V

    .line 267
    return-void

    .line 240
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTotalMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChannelMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "objectSizeEstimator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 4
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;

    .line 554
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 555
    .local v0, "counter":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1b

    .line 556
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move-object v0, v1

    .line 557
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 558
    .local v1, "oldCounter":Ljava/util/concurrent/atomic/AtomicLong;
    if-eqz v1, :cond_1b

    .line 559
    move-object v0, v1

    .line 564
    .end local v1    # "oldCounter":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1b
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_26

    .line 565
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->channelCounters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_26
    return-object v0
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 466
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 467
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method protected decreaseCounter(Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 507
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 508
    return-void

    .line 511
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 512
    .local v0, "settings":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    iget-wide v1, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    .line 515
    .local v1, "maxChannelMemorySize":J
    instance-of v3, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v3, :cond_15

    .line 516
    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    iget v3, v3, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    goto :goto_1a

    .line 518
    :cond_15
    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    iget v3, v3, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    .line 521
    .local v3, "increment":I
    :goto_1a
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    if-eqz v4, :cond_24

    .line 522
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->decrease(J)V

    .line 525
    :cond_24
    instance-of v4, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v4, :cond_71

    .line 526
    move-object v4, p1

    check-cast v4, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 527
    .local v4, "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    invoke-virtual {v4}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    .line 528
    .local v5, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    neg-int v7, v3

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 530
    .local v6, "channelCounter":J
    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-eqz v10, :cond_71

    cmp-long v8, v6, v1

    if-gez v8, :cond_71

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 531
    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v8

    if-nez v8, :cond_71

    .line 533
    invoke-virtual {v4}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v8

    .line 534
    .local v8, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v8}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v9

    instance-of v9, v9, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    const/4 v10, 0x1

    if-eqz v9, :cond_6e

    .line 540
    invoke-interface {v8}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_71

    .line 542
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 543
    invoke-interface {v5, v10}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_71

    .line 546
    :cond_6e
    invoke-interface {v5, v10}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    .line 551
    .end local v4    # "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    .end local v5    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v6    # "channelCounter":J
    .end local v8    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :cond_71
    :goto_71
    return-void
.end method

.method protected doExecute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 445
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method

.method protected final doUnorderedExecute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 452
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 429
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;

    if-nez v0, :cond_15

    .line 432
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v0, :cond_e

    .line 433
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 436
    :cond_e
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->increaseCounter(Ljava/lang/Runnable;)V

    .line 437
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->doExecute(Ljava/lang/Runnable;)V

    .line 438
    return-void

    .line 430
    :cond_15
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "command must be enclosed with an upstream event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxChannelMemorySize()J
    .registers 3

    .line 356
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    return-wide v0
.end method

.method public getMaxTotalMemorySize()J
    .registers 3

    .line 383
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    iget-wide v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->limit:J

    return-wide v0
.end method

.method public getNotifyChannelFuturesOnShutdown()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    return v0
.end method

.method public getObjectSizeEstimator()Lorg/jboss/netty/util/ObjectSizeEstimator;
    .registers 2

    .line 336
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v0, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    return-object v0
.end method

.method protected increaseCounter(Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 471
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 472
    return-void

    .line 475
    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 476
    .local v0, "settings":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
    iget-wide v1, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    .line 478
    .local v1, "maxChannelMemorySize":J
    iget-object v3, v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {v3, p1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    .line 480
    .local v3, "increment":I
    instance-of v4, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v4, :cond_57

    .line 481
    move-object v4, p1

    check-cast v4, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 482
    .local v4, "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    iput v3, v4, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->estimatedSize:I

    .line 483
    invoke-virtual {v4}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    .line 484
    .local v5, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getChannelCounter(Lorg/jboss/netty/channel/Channel;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    .line 486
    .local v6, "channelCounter":J
    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-eqz v10, :cond_56

    cmp-long v8, v6, v1

    if-ltz v8, :cond_56

    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 487
    invoke-interface {v5}, Lorg/jboss/netty/channel/Channel;->isReadable()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 489
    invoke-virtual {v4}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v8

    .line 490
    .local v8, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    invoke-interface {v8}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v9

    instance-of v9, v9, Lorg/jboss/netty/handler/execution/ExecutionHandler;

    if-eqz v9, :cond_52

    .line 492
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v9}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    .line 494
    :cond_52
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    .line 497
    .end local v4    # "eventTask":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    .end local v5    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v6    # "channelCounter":J
    .end local v8    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    :cond_56
    goto :goto_5c

    .line 498
    :cond_57
    move-object v4, p1

    check-cast v4, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;

    iput v3, v4, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$MemoryAwareRunnable;->estimatedSize:I

    .line 501
    :goto_5c
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    if-eqz v4, :cond_66

    .line 502
    iget-object v4, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->totalLimiter:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->increase(J)V

    .line 504
    :cond_66
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 457
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 458
    .local v0, "removed":Z
    if-eqz v0, :cond_9

    .line 459
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->decreaseCounter(Ljava/lang/Runnable;)V

    .line 461
    :cond_9
    return v0
.end method

.method public setMaxChannelMemorySize(J)V
    .registers 8
    .param p1, "maxChannelMemorySize"    # J

    .line 364
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_22

    .line 369
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1a

    .line 374
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 377
    return-void

    .line 370
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChannelMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxTotalMemorySize(J)V
    .registers 8
    .param p1, "maxTotalMemorySize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    .line 397
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_f

    .line 401
    return-void

    .line 398
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be changed after a task is executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTotalMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotifyChannelFuturesOnShutdown(Z)V
    .registers 2
    .param p1, "notifyOnShutdown"    # Z

    .line 414
    iput-boolean p1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    .line 415
    return-void
.end method

.method public setObjectSizeEstimator(Lorg/jboss/netty/util/ObjectSizeEstimator;)V
    .registers 5
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;

    .line 343
    if-eqz p1, :cond_e

    .line 347
    new-instance v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    iget-wide v1, v1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    invoke-direct {v0, p1, v1, v2}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;-><init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->settings:Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;

    .line 350
    return-void

    .line 344
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "objectSizeEstimator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .registers 7
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 577
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    if-eqz v0, :cond_21

    .line 578
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    .line 579
    .local v0, "r":Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;
    invoke-virtual {v0}, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v1

    .line 580
    .local v1, "e":Lorg/jboss/netty/channel/ChannelEvent;
    instance-of v2, v1, Lorg/jboss/netty/channel/WriteCompletionEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 581
    return v3

    .line 582
    :cond_11
    instance-of v2, v1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_21

    .line 583
    move-object v2, v1

    check-cast v2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    sget-object v4, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v2, v4, :cond_21

    .line 584
    return v3

    .line 588
    .end local v0    # "r":Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;
    .end local v1    # "e":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->notifyOnShutdown:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shutdownNow(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow(Z)Ljava/util/List;
    .registers 9
    .param p1, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 296
    if-nez p1, :cond_7

    .line 297
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 299
    :cond_7
    const/4 v0, 0x0

    .line 300
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 302
    .local v1, "channels":Ljava/util/Set;, "Ljava/util/Set<Lorg/jboss/netty/channel/Channel;>;"
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 305
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 306
    .local v4, "task":Ljava/lang/Runnable;
    instance-of v5, v4, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-eqz v5, :cond_48

    .line 307
    if-nez v0, :cond_2b

    .line 308
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to process queued event"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 310
    :cond_2b
    move-object v5, v4

    check-cast v5, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    invoke-virtual {v5}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v5

    .line 311
    .local v5, "event":Lorg/jboss/netty/channel/ChannelEvent;
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 313
    if-nez v1, :cond_41

    .line 314
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v1, v6

    .line 319
    :cond_41
    invoke-interface {v5}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v4    # "task":Ljava/lang/Runnable;
    .end local v5    # "event":Lorg/jboss/netty/channel/ChannelEvent;
    :cond_48
    goto :goto_11

    .line 324
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_49
    if-eqz v1, :cond_5f

    .line 325
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jboss/netty/channel/Channel;

    .line 326
    .local v4, "channel":Lorg/jboss/netty/channel/Channel;
    invoke-static {v4, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    .line 327
    .end local v4    # "channel":Lorg/jboss/netty/channel/Channel;
    goto :goto_4f

    .line 329
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5f
    return-object v2
.end method

.method protected terminated()V
    .registers 2

    .line 271
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 272
    sget-object v0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->misuseDetector:Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/SharedResourceMisuseDetector;->decrease()V

    .line 273
    return-void
.end method
