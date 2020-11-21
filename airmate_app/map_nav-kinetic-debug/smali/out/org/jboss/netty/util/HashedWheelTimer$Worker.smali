.class final Lorg/jboss/netty/util/HashedWheelTimer$Worker;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lorg/jboss/netty/util/HashedWheelTimer;

.field private tick:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;J)V
    .registers 7
    .param p2, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;J)V"
        }
    .end annotation

    .line 388
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 390
    :try_start_b
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->mask:I

    and-int/2addr v1, v2

    iput v1, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheelCursor:I

    move v0, v1

    .line 391
    .local v0, "newWheelCursor":I
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->iterators:[Lorg/jboss/netty/util/internal/ReusableIterator;

    aget-object v1, v1, v0

    .line 392
    .local v1, "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-direct {p0, p1, v1, p2, p3}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_32

    .line 393
    .end local v0    # "newWheelCursor":I
    .end local v1    # "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    nop

    .line 396
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_32
    move-exception v0

    .line 396
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/HashedWheelTimer$Worker;
    iget-object v2, v1, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 394
    throw v0
.end method

.method private fetchExpiredTimeouts(Ljava/util/List;Lorg/jboss/netty/util/internal/ReusableIterator;J)V
    .registers 12
    .param p3, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;",
            "Lorg/jboss/netty/util/internal/ReusableIterator<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;J)V"
        }
    .end annotation

    .line 402
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    .local p2, "i":Lorg/jboss/netty/util/internal/ReusableIterator;, "Lorg/jboss/netty/util/internal/ReusableIterator<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    const/4 v0, 0x0

    .line 403
    .local v0, "slipped":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->rewind()V

    .line 404
    :goto_4
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 405
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 406
    .local v1, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-wide v2, v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_31

    .line 407
    invoke-interface {p2}, Lorg/jboss/netty/util/internal/ReusableIterator;->remove()V

    .line 408
    iget-wide v2, v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    cmp-long v4, v2, p3

    if-gtz v4, :cond_25

    .line 409
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 415
    :cond_25
    if-nez v0, :cond_2d

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 418
    :cond_2d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 421
    :cond_31
    iget-wide v2, v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 423
    .end local v1    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :goto_38
    goto :goto_4

    .line 426
    :cond_39
    if-eqz v0, :cond_54

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 428
    .local v2, "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-object v3, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v4, v2, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    sub-long/2addr v4, p3

    invoke-virtual {v3, v2, v4, v5}, Lorg/jboss/netty/util/HashedWheelTimer;->scheduleTimeout(Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;J)V

    .line 429
    .end local v2    # "timeout":Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
    goto :goto_3f

    .line 431
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_54
    return-void
.end method

.method private notifyExpiredTimeouts(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;",
            ">;)V"
        }
    .end annotation

    .line 436
    .local p1, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;

    invoke-virtual {v1}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    .line 436
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 441
    .end local v0    # "i":I
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 442
    return-void
.end method

.method private waitForNextTick()J
    .registers 11

    .line 445
    iget-wide v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    iget-object v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v2, v2, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 448
    .local v0, "deadline":J
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 449
    .local v2, "currentTime":J
    iget-object v4, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-wide v4, v4, Lorg/jboss/netty/util/HashedWheelTimer;->tickDuration:J

    iget-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    mul-long v4, v4, v6

    iget-wide v6, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    sub-long v6, v2, v6

    sub-long/2addr v4, v6

    .line 456
    .local v4, "sleepTime":J
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->isWindows()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 457
    const-wide/16 v6, 0xa

    div-long v8, v4, v6

    mul-long v4, v8, v6

    .line 460
    :cond_28
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_37

    .line 461
    nop

    .line 473
    .end local v2    # "currentTime":J
    .end local v4    # "sleepTime":J
    iget-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    .line 474
    return-wide v0

    .line 464
    .restart local v2    # "currentTime":J
    .restart local v4    # "sleepTime":J
    :cond_37
    :try_start_37
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 469
    goto :goto_49

    .line 465
    :catch_3b
    move-exception v6

    .line 466
    .local v6, "e":Ljava/lang/InterruptedException;
    iget-object v7, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v7, v7, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 467
    const-wide/16 v7, -0x1

    return-wide v7

    .line 470
    .end local v2    # "currentTime":J
    .end local v4    # "sleepTime":J
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_49
    :goto_49
    goto :goto_b
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "expiredTimeouts":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->startTime:J

    .line 370
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->tick:J

    .line 372
    :goto_f
    iget-object v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v1, v1, Lorg/jboss/netty/util/HashedWheelTimer;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 373
    invoke-direct {p0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->waitForNextTick()J

    move-result-wide v1

    .line 374
    .local v1, "deadline":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_29

    .line 375
    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->fetchExpiredTimeouts(Ljava/util/List;J)V

    .line 376
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/HashedWheelTimer$Worker;->notifyExpiredTimeouts(Ljava/util/List;)V

    .line 378
    .end local v1    # "deadline":J
    :cond_29
    goto :goto_f

    .line 379
    :cond_2a
    return-void
.end method
