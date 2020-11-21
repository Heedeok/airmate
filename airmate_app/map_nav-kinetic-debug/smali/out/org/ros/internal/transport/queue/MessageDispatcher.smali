.class public Lorg/ros/internal/transport/queue/MessageDispatcher;
.super Lorg/ros/concurrent/CancellableLoop;
.source "MessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/concurrent/CancellableLoop;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private latchMode:Z

.field private latchedMessage:Lorg/ros/internal/transport/queue/LazyMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final messageListeners:Lorg/ros/concurrent/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/ListenerGroup<",
            "Lorg/ros/message/MessageListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/queue/MessageDispatcher;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/concurrent/CircularBlockingDeque;Ljava/util/concurrent/ExecutorService;)V
    .registers 4
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    .local p1, "lazyMessages":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<Lorg/ros/internal/transport/queue/LazyMessage<TT;>;>;"
    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;

    .line 56
    new-instance v0, Lorg/ros/concurrent/ListenerGroup;

    invoke-direct {v0, p2}, Lorg/ros/concurrent/ListenerGroup;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->mutex:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchMode:Z

    .line 59
    return-void
.end method

.method private newSignalRunnable(Lorg/ros/internal/transport/queue/LazyMessage;)Lorg/ros/concurrent/SignalRunnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/transport/queue/LazyMessage<",
            "TT;>;)",
            "Lorg/ros/concurrent/SignalRunnable<",
            "Lorg/ros/message/MessageListener<",
            "TT;>;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    .local p1, "lazyMessage":Lorg/ros/internal/transport/queue/LazyMessage;, "Lorg/ros/internal/transport/queue/LazyMessage<TT;>;"
    new-instance v0, Lorg/ros/internal/transport/queue/MessageDispatcher$1;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/transport/queue/MessageDispatcher$1;-><init>(Lorg/ros/internal/transport/queue/MessageDispatcher;Lorg/ros/internal/transport/queue/LazyMessage;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/ros/message/MessageListener;I)V
    .registers 6
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;I)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    .line 75
    invoke-virtual {v1, p1, p2}, Lorg/ros/concurrent/ListenerGroup;->add(Ljava/lang/Object;I)Lorg/ros/concurrent/EventDispatcher;

    move-result-object v1

    .line 76
    .local v1, "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<Lorg/ros/message/MessageListener<TT;>;>;"
    iget-boolean v2, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchMode:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchedMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    if-eqz v2, :cond_1a

    .line 77
    iget-object v2, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchedMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    invoke-direct {p0, v2}, Lorg/ros/internal/transport/queue/MessageDispatcher;->newSignalRunnable(Lorg/ros/internal/transport/queue/LazyMessage;)Lorg/ros/concurrent/SignalRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/concurrent/EventDispatcher;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 79
    .end local v1    # "eventDispatcher":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<Lorg/ros/message/MessageListener<TT;>;>;"
    :cond_1a
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getLatchMode()Z
    .registers 2

    .line 143
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    iget-boolean v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchMode:Z

    return v0
.end method

.method protected handleInterruptedException(Ljava/lang/InterruptedException;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/InterruptedException;

    .line 160
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v0}, Lorg/ros/concurrent/ListenerGroup;->shutdown()V

    .line 161
    return-void
.end method

.method public loop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->lazyMessages:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-virtual {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/transport/queue/LazyMessage;

    .line 149
    .local v0, "lazyMessage":Lorg/ros/internal/transport/queue/LazyMessage;, "Lorg/ros/internal/transport/queue/LazyMessage<TT;>;"
    iget-object v1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_b
    iput-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchedMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    .line 154
    iget-object v2, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    iget-object v3, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchedMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    invoke-direct {p0, v3}, Lorg/ros/internal/transport/queue/MessageDispatcher;->newSignalRunnable(Lorg/ros/internal/transport/queue/LazyMessage;)Lorg/ros/concurrent/SignalRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public removeAllListeners()V
    .registers 3

    .line 108
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v1}, Lorg/ros/concurrent/ListenerGroup;->shutdown()V

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeListener(Lorg/ros/message/MessageListener;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->messageListeners:Lorg/ros/concurrent/ListenerGroup;

    invoke-virtual {v1, p1}, Lorg/ros/concurrent/ListenerGroup;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 96
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setLatchMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 136
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher;, "Lorg/ros/internal/transport/queue/MessageDispatcher<TT;>;"
    iput-boolean p1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher;->latchMode:Z

    .line 137
    return-void
.end method
