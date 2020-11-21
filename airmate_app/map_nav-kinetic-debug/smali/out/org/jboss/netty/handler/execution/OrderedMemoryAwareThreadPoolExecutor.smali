.class public Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;
.super Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.source "OrderedMemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;
    }
.end annotation


# instance fields
.field protected final childExecutors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJ)V
    .registers 7
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J

    .line 153
    invoke-direct/range {p0 .. p5}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJ)V

    .line 140
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 154
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 170
    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;)V

    .line 140
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 172
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 11
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 189
    invoke-direct/range {p0 .. p9}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 140
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 191
    return-void
.end method

.method public constructor <init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V
    .registers 12
    .param p1, "corePoolSize"    # I
    .param p2, "maxChannelMemorySize"    # J
    .param p4, "maxTotalMemorySize"    # J
    .param p6, "keepAliveTime"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p10, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 210
    invoke-direct/range {p0 .. p10}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;-><init>(IJJJLjava/util/concurrent/TimeUnit;Lorg/jboss/netty/util/ObjectSizeEstimator;Ljava/util/concurrent/ThreadFactory;)V

    .line 140
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    .line 212
    return-void
.end method


# virtual methods
.method protected doExecute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 238
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    if-nez v0, :cond_8

    .line 239
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->doUnorderedExecute(Ljava/lang/Runnable;)V

    goto :goto_16

    .line 241
    :cond_8
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;

    .line 242
    .local v0, "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    invoke-virtual {v0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->getEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 244
    .end local v0    # "r":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    :goto_16
    return-void
.end method

.method protected getChildExecutor(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/util/concurrent/Executor;
    .registers 8
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 247
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 249
    .local v1, "executor":Ljava/util/concurrent/Executor;
    if-nez v1, :cond_1f

    .line 250
    new-instance v2, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    invoke-direct {v2, p0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;-><init>(Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;)V

    move-object v1, v2

    .line 251
    iget-object v2, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 252
    .local v2, "oldExecutor":Ljava/util/concurrent/Executor;
    if-eqz v2, :cond_1f

    .line 253
    move-object v1, v2

    .line 258
    .end local v2    # "oldExecutor":Ljava/util/concurrent/Executor;
    :cond_1f
    instance-of v2, p1, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_3b

    .line 259
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    .line 260
    .local v2, "channel":Lorg/jboss/netty/channel/Channel;
    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/channel/ChannelStateEvent;

    .line 261
    .local v3, "se":Lorg/jboss/netty/channel/ChannelStateEvent;
    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v4

    sget-object v5, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    if-ne v4, v5, :cond_3b

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 263
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->removeChildExecutor(Ljava/lang/Object;)Z

    .line 266
    .end local v2    # "channel":Lorg/jboss/netty/channel/Channel;
    .end local v3    # "se":Lorg/jboss/netty/channel/ChannelStateEvent;
    :cond_3b
    return-object v1
.end method

.method protected getChildExecutorKey(Lorg/jboss/netty/channel/ChannelEvent;)Ljava/lang/Object;
    .registers 3
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 219
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method protected getChildExecutorKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected newChildExecutorMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>()V

    return-object v0
.end method

.method onAfterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 280
    return-void
.end method

.method protected removeChildExecutor(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor;->childExecutors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected shouldCount(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 271
    instance-of v0, p1, Lorg/jboss/netty/handler/execution/OrderedMemoryAwareThreadPoolExecutor$ChildExecutor;

    if-eqz v0, :cond_6

    .line 272
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_6
    invoke-super {p0, p1}, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;->shouldCount(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
