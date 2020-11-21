.class public final Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;
.super Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.source "OrderedDownstreamThreadPoolExecutor.java"


# direct methods
.method public constructor <init>(I)V
    .registers 8
    .param p1, "corePoolSize"    # I

    .line 47
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJ)V

    .line 48
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .param p1, "corePoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 59
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    .line 60
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 16
    .param p1, "corePoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 72
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v6, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 74
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 140
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelUpstreamEventRunnable;

    if-nez v0, :cond_8

    .line 143
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->doExecute(Ljava/lang/Runnable;)V

    .line 144
    return-void

    .line 141
    :cond_8
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "command must be enclosed with an downstream event."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;
    .registers 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 148
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 150
    .local v1, "executor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_30

    .line 151
    new-instance v2, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    invoke-direct {v2, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;-><init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V

    move-object v1, v2

    .line 152
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 153
    .local v2, "oldExecutor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_20

    .line 154
    move-object v1, v2

    goto :goto_30

    .line 158
    :cond_20
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    new-instance v4, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor$1;

    invoke-direct {v4, p0, v0}, Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor$1;-><init>(Lorg/jboss/netty/handler/execution/OrderedDownstreamThreadPoolExecutor;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    .line 167
    .end local v2    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_30
    :goto_30
    return-object v1
.end method

.method public getMaxChannelMemorySize()J
    .registers 3

    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxTotalMemorySize()J
    .registers 3

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getObjectSizeEstimator()Lorg/jboss/netty/util/ObjectSizeEstimator;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMaxChannelMemorySize(J)V
    .registers 5
    .param p1, "maxChannelMemorySize"    # J

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxTotalMemorySize(J)V
    .registers 5
    .param p1, "maxTotalMemorySize"    # J

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObjectSizeEstimator(Lorg/jboss/netty/util/ObjectSizeEstimator;)V
    .registers 4
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 133
    const/4 v0, 0x0

    return v0
.end method
