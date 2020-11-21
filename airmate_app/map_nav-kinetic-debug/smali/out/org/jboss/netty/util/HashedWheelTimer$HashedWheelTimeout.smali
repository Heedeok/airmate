.class final Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"

# interfaces
.implements Lorg/jboss/netty/util/Timeout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HashedWheelTimeout"
.end annotation


# static fields
.field private static final ST_CANCELLED:I = 0x1

.field private static final ST_EXPIRED:I = 0x2

.field private static final ST_INIT:I


# instance fields
.field final deadline:J

.field volatile remainingRounds:J

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile stopIndex:I

.field private final task:Lorg/jboss/netty/util/TimerTask;

.field final synthetic this$0:Lorg/jboss/netty/util/HashedWheelTimer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;Lorg/jboss/netty/util/TimerTask;J)V
    .registers 6
    .param p2, "task"    # Lorg/jboss/netty/util/TimerTask;
    .param p3, "deadline"    # J

    .line 490
    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 491
    iput-object p2, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    .line 492
    iput-wide p3, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    .line 493
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 504
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 506
    return-void

    .line 509
    :cond_b
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v0, v0, Lorg/jboss/netty/util/HashedWheelTimer;->wheel:[Ljava/util/Set;

    iget v1, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->stopIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public expire()V
    .registers 5

    .line 521
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 522
    return-void

    .line 526
    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    invoke-interface {v0, p0}, Lorg/jboss/netty/util/TimerTask;->run(Lorg/jboss/netty/util/Timeout;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_11

    .line 534
    goto :goto_3b

    .line 527
    :catch_11
    move-exception v0

    .line 528
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 529
    sget-object v1, Lorg/jboss/netty/util/HashedWheelTimer;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/jboss/netty/util/TimerTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3b
    :goto_3b
    return-void
.end method

.method public getTask()Lorg/jboss/netty/util/TimerTask;
    .registers 2

    .line 500
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->task:Lorg/jboss/netty/util/TimerTask;

    return-object v0
.end method

.method public getTimer()Lorg/jboss/netty/util/Timer;
    .registers 2

    .line 496
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->this$0:Lorg/jboss/netty/util/HashedWheelTimer;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    .line 513
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isExpired()Z
    .registers 2

    .line 517
    iget-object v0, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 540
    .local v0, "currentTime":J
    iget-wide v2, p0, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->deadline:J

    sub-long/2addr v2, v0

    .line 542
    .local v2, "remaining":J
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xc0

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 543
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    const-string v5, "deadline: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_32

    .line 548
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 549
    const-string v5, " ms later, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 550
    :cond_32
    cmp-long v7, v2, v5

    if-gez v7, :cond_40

    .line 551
    neg-long v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 552
    const-string v5, " ms ago, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 554
    :cond_40
    const-string v5, "now, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :goto_45
    invoke-virtual {p0}, Lorg/jboss/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 558
    const-string v5, ", cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_50
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
