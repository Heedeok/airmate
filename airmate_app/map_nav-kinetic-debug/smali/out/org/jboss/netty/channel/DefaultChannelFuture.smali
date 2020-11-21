.class public Lorg/jboss/netty/channel/DefaultChannelFuture;
.super Ljava/lang/Object;
.source "DefaultChannelFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFuture;


# static fields
.field private static final CANCELLED:Ljava/lang/Throwable;

.field private static disabledDeadLockCheckerOnce:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile useDeadLockChecker:Z


# instance fields
.field private final cancellable:Z

.field private cause:Ljava/lang/Throwable;

.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private done:Z

.field private firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/ChannelFutureListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jboss/netty/channel/ChannelFutureProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 40
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Z)V
    .registers 3
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "cancellable"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    .line 89
    iput-boolean p2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    .line 90
    return-void
.end method

.method private await0(JZ)Z
    .registers 16
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 291
    move-object v1, p0

    if-eqz p3, :cond_10

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_10

    .line 292
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 295
    :cond_10
    :goto_10
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_18

    move-wide v4, v2

    goto :goto_1c

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 296
    .local v4, "startTime":J
    :goto_1c
    move-wide v6, p1

    .line 297
    .local v6, "waitTime":J
    const/4 v0, 0x0

    move v8, v0

    .line 300
    .local v8, "interrupted":Z
    :try_start_1f
    monitor-enter p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_9d

    .line 301
    :try_start_20
    iget-boolean v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_31

    .line 302
    iget-boolean v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_9a

    .line 335
    if-eqz v8, :cond_30

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_30
    return v0

    .line 303
    :cond_31
    cmp-long v0, v6, v2

    if-gtz v0, :cond_42

    .line 304
    :try_start_35
    iget-boolean v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_9a

    .line 335
    if-eqz v8, :cond_41

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_41
    return v0

    .line 307
    :cond_42
    :try_start_42
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 308
    iget v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_9a

    .line 312
    :cond_4b
    const-wide/32 v10, 0xf4240

    :try_start_4e
    div-long v2, v6, v10

    rem-long v10, v6, v10

    long-to-int v0, v10

    invoke-virtual {p0, v2, v3, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_56} :catch_59
    .catchall {:try_start_4e .. :try_end_56} :catchall_57

    .line 319
    goto :goto_5e

    .line 331
    :catchall_57
    move-exception v0

    goto :goto_94

    .line 313
    :catch_59
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/InterruptedException;
    if-nez p3, :cond_93

    .line 317
    const/4 v0, 0x1

    .line 321
    move v8, v0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_5e
    :try_start_5e
    iget-boolean v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_57

    if-eqz v0, :cond_73

    .line 322
    nop

    .line 331
    :try_start_63
    iget v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    sub-int/2addr v0, v9

    iput v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_9a

    .line 335
    if-eqz v8, :cond_72

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_72
    return v9

    .line 324
    :cond_73
    :try_start_73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v0, 0x0

    sub-long/2addr v2, v4

    sub-long v6, p1, v2

    .line 325
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-gtz v0, :cond_4b

    .line 326
    iget-boolean v0, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_57

    .line 331
    :try_start_83
    iget v2, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    sub-int/2addr v2, v9

    iput v2, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_9a

    .line 335
    if-eqz v8, :cond_92

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_92
    return v0

    .line 315
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_93
    :try_start_93
    throw v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_57

    .line 331
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_94
    :try_start_94
    iget v2, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    sub-int/2addr v2, v9

    iput v2, v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0

    .line 333
    :catchall_9a
    move-exception v0

    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9d

    .line 335
    :catchall_9d
    move-exception v0

    if-eqz v8, :cond_a7

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_a7
    throw v0
.end method

.method private static checkDeadLock()V
    .registers 2

    .line 342
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->isUseDeadLockChecker()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 343
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_17
    :goto_17
    return-void
.end method

.method public static isUseDeadLockChecker()Z
    .registers 1

    .line 49
    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return v0
.end method

.method private notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .registers 6
    .param p1, "l"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 428
    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/ChannelFutureListener;->operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 435
    goto :goto_2e

    .line 429
    :catch_4
    move-exception v0

    .line 430
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 431
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private notifyListeners()V
    .registers 4

    .line 413
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_28

    .line 414
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 417
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_28

    .line 418
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 419
    .local v2, "l":Lorg/jboss/netty/channel/ChannelFutureListener;
    invoke-direct {p0, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 420
    .end local v2    # "l":Lorg/jboss/netty/channel/ChannelFutureListener;
    goto :goto_16

    .line 421
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_26
    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    .line 424
    :cond_28
    return-void
.end method

.method private notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V
    .registers 16
    .param p1, "l"    # Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    .param p2, "amount"    # J
    .param p4, "current"    # J
    .param p6, "total"    # J

    .line 469
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    :try_start_5
    invoke-interface/range {v0 .. v7}, Lorg/jboss/netty/channel/ChannelFutureProgressListener;->operationProgressed(Lorg/jboss/netty/channel/ChannelFuture;JJJ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    .line 476
    goto :goto_33

    .line 470
    :catch_9
    move-exception v0

    .line 471
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 472
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_33
    :goto_33
    return-void
.end method

.method private rethrowIfFailed0()V
    .registers 3

    .line 207
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 208
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    .line 209
    return-void

    .line 212
    :cond_7
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_19

    .line 216
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_13

    .line 217
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 220
    :cond_13
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 213
    :cond_19
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public static setUseDeadLockChecker(Z)V
    .registers 4
    .param p0, "useDeadLockChecker"    # Z

    .line 57
    if-nez p0, :cond_32

    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    if-nez v0, :cond_32

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    .line 59
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 60
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The dead lock checker in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been disabled as requested at your own risk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 66
    :cond_32
    sput-boolean p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    .line 67
    return-void
.end method


# virtual methods
.method public addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .registers 5
    .param p1, "listener"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 117
    if-eqz p1, :cond_43

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "notifyNow":Z
    monitor-enter p0

    .line 123
    :try_start_4
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v1, :cond_a

    .line 124
    const/4 v0, 0x1

    goto :goto_39

    .line 126
    :cond_a
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 127
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    goto :goto_22

    .line 129
    :cond_12
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_1d

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    .line 132
    :cond_1d
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :goto_22
    instance-of v1, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v1, :cond_39

    .line 136
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    if-nez v1, :cond_31

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    .line 139
    :cond_31
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_39
    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_40

    .line 144
    if-eqz v0, :cond_3f

    .line 145
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 147
    :cond_3f
    return-void

    .line 142
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 118
    .end local v0    # "notifyNow":Z
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public await()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 224
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 228
    monitor-enter p0

    .line 229
    :goto_7
    :try_start_7
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_26

    .line 230
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 231
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_28

    .line 233
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    .line 235
    :try_start_17
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    .line 236
    goto :goto_7

    .line 235
    :catchall_1e
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0

    .line 238
    :cond_26
    monitor-exit p0

    .line 239
    return-object p0

    .line 238
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_28

    throw v0

    .line 225
    :cond_2b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public await(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 248
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 244
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 4

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "interrupted":Z
    monitor-enter p0

    .line 254
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v1, :cond_26

    .line 255
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    .line 256
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_31

    .line 258
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_21
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 262
    :try_start_12
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    :goto_14
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    .line 263
    goto :goto_2

    .line 262
    :catchall_19
    move-exception v1

    iget v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v1

    .line 259
    :catch_21
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 262
    .end local v1    # "e":Ljava/lang/InterruptedException;
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_14

    .line 265
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_31

    .line 267
    if-eqz v0, :cond_30

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 271
    :cond_30
    return-object p0

    .line 265
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public awaitUninterruptibly(J)Z
    .registers 6
    .param p1, "timeoutMillis"    # J

    .line 284
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 285
    :catch_c
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 276
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 277
    :catch_a
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public cancel()Z
    .registers 3

    .line 386
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 387
    return v1

    .line 390
    :cond_6
    monitor-enter p0

    .line 392
    :try_start_7
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_d

    .line 393
    monitor-exit p0

    return v1

    .line 396
    :cond_d
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 398
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_1b

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 401
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    .line 403
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    .line 404
    return v0

    .line 401
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 3

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_b

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    monitor-exit p0

    return-object v0

    .line 108
    :cond_b
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 104
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .registers 3

    monitor-enter p0

    .line 113
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuccess()Z
    .registers 2

    monitor-enter p0

    .line 101
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .registers 4
    .param p1, "listener"    # Lorg/jboss/netty/channel/ChannelFutureListener;

    .line 150
    if-eqz p1, :cond_3e

    .line 154
    monitor-enter p0

    .line 155
    :try_start_3
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_39

    .line 156
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-ne p1, v0, :cond_27

    .line 157
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 158
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureListener;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    goto :goto_30

    .line 160
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    goto :goto_30

    .line 162
    :cond_27
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 163
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    :cond_30
    :goto_30
    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v0, :cond_39

    .line 167
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    :cond_39
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0

    .line 151
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    .line 175
    return-object p0

    .line 178
    :cond_7
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 179
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_e

    .line 180
    return-object p0

    .line 183
    :cond_e
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_20

    .line 187
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1a

    .line 188
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 191
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_20
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    throw v1
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 368
    monitor-enter p0

    .line 370
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_8

    .line 371
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 374
    :cond_8
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 376
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_14

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 379
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    .line 381
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    .line 382
    return v0

    .line 379
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setProgress(JJJ)Z
    .registers 22
    .param p1, "amount"    # J
    .param p3, "current"    # J
    .param p5, "total"    # J

    .line 440
    move-object v9, p0

    monitor-enter p0

    .line 442
    const/4 v1, 0x0

    :try_start_3
    iget-boolean v0, v9, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 443
    monitor-exit p0

    return v2

    .line 446
    :cond_a
    iget-object v0, v9, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    .line 448
    .local v0, "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    const/4 v10, 0x1

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_3d

    .line 453
    :cond_16
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_3f

    move-object v11, v3

    .line 455
    .end local v0    # "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    .local v11, "plisteners":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_3a

    .line 457
    move-object v0, v11

    .local v0, "arr$":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    array-length v12, v0

    .local v2, "i$":I
    .local v12, "len$":I
    :goto_26
    move v13, v2

    .end local v2    # "i$":I
    .local v13, "i$":I
    if-ge v13, v12, :cond_39

    aget-object v14, v0, v13

    .line 458
    .local v14, "pl":Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    move-object v1, p0

    move-object v2, v14

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V

    .line 457
    .end local v14    # "pl":Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    add-int/lit8 v2, v13, 0x1

    goto :goto_26

    .line 461
    .end local v0    # "arr$":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    :cond_39
    return v10

    .line 455
    :catchall_3a
    move-exception v0

    move-object v1, v11

    goto :goto_40

    .line 450
    .end local v11    # "plisteners":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    .local v0, "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit p0

    return v10

    .line 455
    .end local v0    # "progressListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jboss/netty/channel/ChannelFutureProgressListener;>;"
    :catchall_3f
    move-exception v0

    .local v1, "plisteners":[Lorg/jboss/netty/channel/ChannelFutureProgressListener;
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public setSuccess()Z
    .registers 3

    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_8

    .line 354
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 357
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    .line 358
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_12

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 361
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    .line 363
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    .line 364
    return v0

    .line 361
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await()Lorg/jboss/netty/channel/ChannelFuture;

    .line 196
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->rethrowIfFailed0()V

    .line 197
    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .registers 1

    .line 201
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    .line 202
    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->rethrowIfFailed0()V

    .line 203
    return-object p0
.end method
