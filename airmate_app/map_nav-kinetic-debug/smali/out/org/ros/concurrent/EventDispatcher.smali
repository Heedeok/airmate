.class public Lorg/ros/concurrent/EventDispatcher;
.super Lorg/ros/concurrent/CancellableLoop;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ros/concurrent/CancellableLoop;"
    }
.end annotation


# instance fields
.field private final events:Lorg/ros/concurrent/CircularBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/concurrent/CircularBlockingDeque<",
            "Lorg/ros/concurrent/SignalRunnable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .param p2, "queueCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/ros/concurrent/CancellableLoop;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/ros/concurrent/EventDispatcher;->listener:Ljava/lang/Object;

    .line 33
    new-instance v0, Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-direct {v0, p2}, Lorg/ros/concurrent/CircularBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lorg/ros/concurrent/EventDispatcher;->events:Lorg/ros/concurrent/CircularBlockingDeque;

    .line 34
    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/EventDispatcher;->listener:Ljava/lang/Object;

    return-object v0
.end method

.method public loop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/EventDispatcher;->events:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-virtual {v0}, Lorg/ros/concurrent/CircularBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/concurrent/SignalRunnable;

    .line 43
    .local v0, "signalRunnable":Lorg/ros/concurrent/SignalRunnable;, "Lorg/ros/concurrent/SignalRunnable<TT;>;"
    iget-object v1, p0, Lorg/ros/concurrent/EventDispatcher;->listener:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/ros/concurrent/SignalRunnable;->run(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public signal(Lorg/ros/concurrent/SignalRunnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/concurrent/SignalRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/ros/concurrent/EventDispatcher;, "Lorg/ros/concurrent/EventDispatcher<TT;>;"
    .local p1, "signalRunnable":Lorg/ros/concurrent/SignalRunnable;, "Lorg/ros/concurrent/SignalRunnable<TT;>;"
    iget-object v0, p0, Lorg/ros/concurrent/EventDispatcher;->events:Lorg/ros/concurrent/CircularBlockingDeque;

    invoke-virtual {v0, p1}, Lorg/ros/concurrent/CircularBlockingDeque;->addLast(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
