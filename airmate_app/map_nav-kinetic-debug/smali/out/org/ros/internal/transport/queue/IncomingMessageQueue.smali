.class public Lorg/ros/internal/transport/queue/IncomingMessageQueue;
.super Ljava/lang/Object;
.source "IncomingMessageQueue.java"


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
.field private static final DEQUE_CAPACITY:I = 0x10


# instance fields
.field private final messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/MessageDispatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final messageReceiver:Lorg/ros/internal/transport/queue/MessageReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/transport/queue/MessageReceiver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/message/MessageDeserializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 5
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    .local p1, "deserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/ros/concurrent/CircularBlockingDeque;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/ros/concurrent/CircularBlockingDeque;-><init>(I)V

    .line 48
    .local v0, "lazyMessages":Lorg/ros/concurrent/CircularBlockingDeque;, "Lorg/ros/concurrent/CircularBlockingDeque<Lorg/ros/internal/transport/queue/LazyMessage<TT;>;>;"
    new-instance v1, Lorg/ros/internal/transport/queue/MessageReceiver;

    invoke-direct {v1, v0, p1}, Lorg/ros/internal/transport/queue/MessageReceiver;-><init>(Lorg/ros/concurrent/CircularBlockingDeque;Lorg/ros/message/MessageDeserializer;)V

    iput-object v1, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageReceiver:Lorg/ros/internal/transport/queue/MessageReceiver;

    .line 49
    new-instance v1, Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-direct {v1, v0, p2}, Lorg/ros/internal/transport/queue/MessageDispatcher;-><init>(Lorg/ros/concurrent/CircularBlockingDeque;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    .line 50
    iget-object v1, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-interface {p2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addListener(Lorg/ros/message/MessageListener;I)V
    .registers 4
    .param p2, "queueCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;I)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/transport/queue/MessageDispatcher;->addListener(Lorg/ros/message/MessageListener;I)V

    .line 72
    return-void
.end method

.method public getLatchMode()Z
    .registers 2

    .line 64
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/MessageDispatcher;->getLatchMode()Z

    move-result v0

    return v0
.end method

.method public getMessageReceiver()Lorg/ros/internal/transport/tcp/NamedChannelHandler;
    .registers 2

    .line 97
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageReceiver:Lorg/ros/internal/transport/queue/MessageReceiver;

    return-object v0
.end method

.method public removeAllListeners()V
    .registers 2

    .line 85
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/MessageDispatcher;->removeAllListeners()V

    .line 86
    return-void
.end method

.method public removeListener(Lorg/ros/message/MessageListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0, p1}, Lorg/ros/internal/transport/queue/MessageDispatcher;->removeListener(Lorg/ros/message/MessageListener;)Z

    move-result v0

    return v0
.end method

.method public setLatchMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 57
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0, p1}, Lorg/ros/internal/transport/queue/MessageDispatcher;->setLatchMode(Z)V

    .line 58
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 89
    .local p0, "this":Lorg/ros/internal/transport/queue/IncomingMessageQueue;, "Lorg/ros/internal/transport/queue/IncomingMessageQueue<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/IncomingMessageQueue;->messageDispatcher:Lorg/ros/internal/transport/queue/MessageDispatcher;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/MessageDispatcher;->cancel()V

    .line 90
    return-void
.end method
