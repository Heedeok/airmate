.class public Lorg/jboss/netty/util/VirtualExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "VirtualExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;
    }
.end annotation


# instance fields
.field activeThreads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private final s:Ljava/util/concurrent/ExecutorService;

.field volatile shutdown:Z

.field final startStopLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "parent"    # Ljava/util/concurrent/Executor;

    .line 87
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Lorg/jboss/netty/util/MapBackedSet;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/MapBackedSet;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    .line 88
    if-eqz p1, :cond_2a

    .line 92
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 93
    iput-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    .line 94
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_29

    .line 96
    :cond_25
    iput-object p1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    .line 97
    iput-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    .line 99
    :goto_29
    return-void

    .line 89
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_15

    .line 139
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_3

    .line 142
    :cond_15
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 143
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 147
    if-eqz p1, :cond_26

    .line 151
    iget-boolean v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-nez v0, :cond_20

    .line 155
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;-><init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 158
    :cond_15
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/util/VirtualExecutorService$ChildExecutorRunnable;-><init>(Lorg/jboss/netty/util/VirtualExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    :goto_1f
    return-void

    .line 152
    :cond_20
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 148
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isShutdown()Z
    .registers 3

    .line 102
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    monitor-exit v0

    return v1

    .line 104
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isTerminated()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 110
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public shutdown()V
    .registers 3

    .line 114
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-boolean v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    if-eqz v1, :cond_9

    .line 116
    monitor-exit v0

    return-void

    .line 118
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown:Z

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/util/VirtualExecutorService;->startStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_22

    .line 125
    invoke-virtual {p0}, Lorg/jboss/netty/util/VirtualExecutorService;->shutdown()V

    .line 126
    iget-object v1, p0, Lorg/jboss/netty/util/VirtualExecutorService;->activeThreads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 127
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 128
    .end local v2    # "t":Ljava/lang/Thread;
    goto :goto_12

    .line 130
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_28

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 130
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method
