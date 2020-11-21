.class Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;
.super Ljava/lang/Object;
.source "MemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Limiter"
.end annotation


# instance fields
.field private counter:J

.field final limit:J

.field private waiters:I


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "limit"    # J

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-wide p1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->limit:J

    .line 636
    return-void
.end method


# virtual methods
.method declared-synchronized decrease(J)V
    .registers 8
    .param p1, "amount"    # J

    monitor-enter p0

    .line 653
    :try_start_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J

    const/4 v2, 0x0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J

    .line 654
    iget-wide v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->limit:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    iget v0, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    if-lez v0, :cond_16

    .line 655
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 657
    :cond_16
    monitor-exit p0

    return-void

    .line 652
    .end local p1    # "amount":J
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized increase(J)V
    .registers 9
    .param p1, "amount"    # J

    monitor-enter p0

    .line 639
    move-wide v0, p1

    move-object p1, p0

    .local v0, "amount":J
    .local p1, "this":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;
    :goto_3
    :try_start_3
    iget-wide v2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J

    iget-wide v4, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->limit:J

    cmp-long p2, v2, v4

    if-ltz p2, :cond_32

    .line 640
    iget p2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3a

    .line 642
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1e
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 643
    nop

    .line 650
    :try_start_15
    iget p2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    :goto_17
    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_3a

    .line 647
    goto :goto_3

    .line 646
    :catchall_1c
    move-exception p2

    goto :goto_2a

    .line 643
    :catch_1e
    move-exception p2

    .line 644
    .local p2, "e":Ljava/lang/InterruptedException;
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 645
    .end local p2    # "e":Ljava/lang/InterruptedException;
    nop

    .line 650
    :try_start_27
    iget p2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    goto :goto_17

    .line 646
    :goto_2a
    nop

    .line 650
    iget v2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->waiters:I

    .line 646
    throw p2

    .line 649
    :cond_32
    iget-wide v2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J

    const/4 p2, 0x0

    add-long/2addr v2, v0

    iput-wide v2, p1, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;->counter:J
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3a

    .line 650
    monitor-exit p0

    return-void

    .line 638
    .end local v0    # "amount":J
    .end local p1    # "this":Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Limiter;
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
