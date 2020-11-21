.class Lorg/ros/internal/transport/queue/MessageDispatcher$1;
.super Ljava/lang/Object;
.source "MessageDispatcher.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/transport/queue/MessageDispatcher;->newSignalRunnable(Lorg/ros/internal/transport/queue/LazyMessage;)Lorg/ros/concurrent/SignalRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/message/MessageListener<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/transport/queue/MessageDispatcher;

.field final synthetic val$lazyMessage:Lorg/ros/internal/transport/queue/LazyMessage;


# direct methods
.method constructor <init>(Lorg/ros/internal/transport/queue/MessageDispatcher;Lorg/ros/internal/transport/queue/LazyMessage;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/transport/queue/MessageDispatcher;

    .line 122
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher$1;, "Lorg/ros/internal/transport/queue/MessageDispatcher$1;"
    iput-object p1, p0, Lorg/ros/internal/transport/queue/MessageDispatcher$1;->this$0:Lorg/ros/internal/transport/queue/MessageDispatcher;

    iput-object p2, p0, Lorg/ros/internal/transport/queue/MessageDispatcher$1;->val$lazyMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 122
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher$1;, "Lorg/ros/internal/transport/queue/MessageDispatcher$1;"
    check-cast p1, Lorg/ros/message/MessageListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/transport/queue/MessageDispatcher$1;->run(Lorg/ros/message/MessageListener;)V

    return-void
.end method

.method public run(Lorg/ros/message/MessageListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/message/MessageListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/ros/internal/transport/queue/MessageDispatcher$1;, "Lorg/ros/internal/transport/queue/MessageDispatcher$1;"
    .local p1, "messageListener":Lorg/ros/message/MessageListener;, "Lorg/ros/message/MessageListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/transport/queue/MessageDispatcher$1;->val$lazyMessage:Lorg/ros/internal/transport/queue/LazyMessage;

    invoke-virtual {v0}, Lorg/ros/internal/transport/queue/LazyMessage;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ros/message/MessageListener;->onNewMessage(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
