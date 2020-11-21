.class Lorg/ros/concurrent/ListenerGroup$1;
.super Ljava/lang/Object;
.source "ListenerGroup.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/concurrent/ListenerGroup;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$signalRunnable:Lorg/ros/concurrent/SignalRunnable;


# direct methods
.method constructor <init>(Lorg/ros/concurrent/ListenerGroup;Lorg/ros/concurrent/SignalRunnable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/concurrent/ListenerGroup;

    .line 158
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup$1;, "Lorg/ros/concurrent/ListenerGroup$1;"
    iput-object p1, p0, Lorg/ros/concurrent/ListenerGroup$1;->this$0:Lorg/ros/concurrent/ListenerGroup;

    iput-object p2, p0, Lorg/ros/concurrent/ListenerGroup$1;->val$signalRunnable:Lorg/ros/concurrent/SignalRunnable;

    iput-object p3, p0, Lorg/ros/concurrent/ListenerGroup$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/ros/concurrent/ListenerGroup$1;, "Lorg/ros/concurrent/ListenerGroup$1;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup$1;->val$signalRunnable:Lorg/ros/concurrent/SignalRunnable;

    invoke-interface {v0, p1}, Lorg/ros/concurrent/SignalRunnable;->run(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lorg/ros/concurrent/ListenerGroup$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 163
    return-void
.end method
