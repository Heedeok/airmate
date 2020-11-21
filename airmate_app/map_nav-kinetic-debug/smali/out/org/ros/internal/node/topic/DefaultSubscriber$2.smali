.class Lorg/ros/internal/node/topic/DefaultSubscriber$2;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnMasterRegistrationSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/node/topic/SubscriberListener<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

.field final synthetic val$subscriber:Lorg/ros/node/topic/Subscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 210
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$2;, "Lorg/ros/internal/node/topic/DefaultSubscriber$2;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$2;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    iput-object p2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$2;->val$subscriber:Lorg/ros/node/topic/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 210
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$2;, "Lorg/ros/internal/node/topic/DefaultSubscriber$2;"
    check-cast p1, Lorg/ros/node/topic/SubscriberListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$2;->run(Lorg/ros/node/topic/SubscriberListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/topic/SubscriberListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/SubscriberListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$2;, "Lorg/ros/internal/node/topic/DefaultSubscriber$2;"
    .local p1, "listener":Lorg/ros/node/topic/SubscriberListener;, "Lorg/ros/node/topic/SubscriberListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$2;->val$subscriber:Lorg/ros/node/topic/Subscriber;

    invoke-interface {p1, v0}, Lorg/ros/node/topic/SubscriberListener;->onMasterRegistrationSuccess(Ljava/lang/Object;)V

    .line 214
    return-void
.end method
