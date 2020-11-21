.class public abstract Lorg/ros/concurrent/CancellableLoop;
.super Ljava/lang/Object;
.source "CancellableLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mutex:Ljava/lang/Object;

.field private ranOnce:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/concurrent/CancellableLoop;->ranOnce:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->mutex:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_9
    return-void
.end method

.method protected handleInterruptedException(Ljava/lang/InterruptedException;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/InterruptedException;

    .line 83
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected abstract loop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public run()V
    .registers 5

    .line 48
    iget-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-boolean v1, p0, Lorg/ros/concurrent/CancellableLoop;->ranOnce:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "CancellableLoops cannot be restarted."

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 50
    iput-boolean v2, p0, Lorg/ros/concurrent/CancellableLoop;->ranOnce:Z

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    .line 52
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_32

    .line 54
    const/4 v0, 0x0

    :try_start_16
    invoke-virtual {p0}, Lorg/ros/concurrent/CancellableLoop;->setup()V

    .line 55
    :goto_19
    iget-object v1, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 56
    invoke-virtual {p0}, Lorg/ros/concurrent/CancellableLoop;->loop()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_24} :catch_27
    .catchall {:try_start_16 .. :try_end_24} :catchall_25

    goto :goto_19

    .line 61
    :catchall_25
    move-exception v1

    goto :goto_2f

    .line 58
    :catch_27
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_28
    invoke-virtual {p0, v1}, Lorg/ros/concurrent/CancellableLoop;->handleInterruptedException(Ljava/lang/InterruptedException;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 61
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2b
    iput-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    .line 62
    nop

    .line 63
    return-void

    .line 61
    :goto_2f
    iput-object v0, p0, Lorg/ros/concurrent/CancellableLoop;->thread:Ljava/lang/Thread;

    .line 62
    throw v1

    .line 52
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method protected setup()V
    .registers 1

    .line 70
    return-void
.end method
