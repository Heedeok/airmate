.class public Lorg/ros/concurrent/ListenerGroup;
.super Ljava/lang/Object;
.source "ListenerGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_QUEUE_CAPACITY:I = 0x80


# instance fields
.field private final eventDispatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ros/concurrent/EventDispatcher<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 39
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/ros/concurrent/ListenerGroup;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    .line 42
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lorg/ros/concurrent/EventDispatcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/ros/concurrent/EventDispatcher<",
            "TT;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;I)Lorg/ros/concurrent/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lorg/ros/concurrent/EventDispatcher;
    .registers 5
    .param p2, "queueCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lorg/ros/concurrent/EventDispatcher<",
            "TT;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/ros/concurrent/EventDispatcher;

    invoke-direct {v0, p1, p2}, Lorg/ros/concurrent/EventDispatcher;-><init>(Ljava/lang/Object;I)V

    .line 56
    .local v0, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    iget-object v1, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lorg/ros/concurrent/ListenerGroup;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-object v0
.end method

.method public addAll(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "Lorg/ros/concurrent/EventDispatcher<",
            "TT;>;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lorg/ros/concurrent/ListenerGroup;->addAll(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/util/Collection;I)Ljava/util/Collection;
    .registers 7
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;I)",
            "Ljava/util/Collection<",
            "Lorg/ros/concurrent/EventDispatcher<",
            "TT;>;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    .local v0, "eventDispatchers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/concurrent/EventDispatcher<TT;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "listener":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, p2}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;I)Lorg/ros/concurrent/EventDispatcher;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "listener":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 89
    :cond_1a
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/concurrent/EventDispatcher;

    .line 114
    .local v1, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    invoke-virtual {v1}, Lorg/ros/concurrent/EventDispatcher;->getListener()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 115
    invoke-virtual {v1}, Lorg/ros/concurrent/EventDispatcher;->cancel()V

    .line 116
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    .end local v1    # "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    :cond_29
    goto :goto_9

    .line 120
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .registers 3

    .line 170
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/concurrent/EventDispatcher;

    .line 171
    .local v1, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    invoke-virtual {v1}, Lorg/ros/concurrent/EventDispatcher;->cancel()V

    .line 172
    .end local v1    # "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    goto :goto_6

    .line 173
    :cond_16
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 174
    return-void
.end method

.method public signal(Lorg/ros/concurrent/SignalRunnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/concurrent/SignalRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "signalRunnable":Lorg/ros/concurrent/SignalRunnable;, "Lorg/ros/concurrent/SignalRunnable<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/concurrent/EventDispatcher;

    .line 137
    .local v1, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    invoke-virtual {v1, p1}, Lorg/ros/concurrent/EventDispatcher;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 138
    .end local v1    # "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    goto :goto_6

    .line 139
    :cond_16
    return-void
.end method

.method public signal(Lorg/ros/concurrent/SignalRunnable;JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/concurrent/SignalRunnable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    .local p1, "signalRunnable":Lorg/ros/concurrent/SignalRunnable;, "Lorg/ros/concurrent/SignalRunnable<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    .local v0, "copy":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/concurrent/EventDispatcher<TT;>;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 157
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/concurrent/EventDispatcher;

    .line 158
    .local v3, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    new-instance v4, Lorg/ros/concurrent/ListenerGroup$1;

    invoke-direct {v4, p0, p1, v1}, Lorg/ros/concurrent/ListenerGroup$1;-><init>(Lorg/ros/concurrent/ListenerGroup;Lorg/ros/concurrent/SignalRunnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lorg/ros/concurrent/EventDispatcher;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 165
    .end local v3    # "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    goto :goto_13

    .line 166
    :cond_28
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    return v2
.end method

.method public size()I
    .registers 2

    .line 127
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup;, "Lorg/ros/concurrent/ListenerGroup<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup;->eventDispatchers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
