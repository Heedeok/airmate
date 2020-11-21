.class Lorg/ros/internal/node/topic/DefaultSubscriber$6;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/DefaultSubscriber;->signalOnNewPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;)V
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

.field final synthetic val$publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

.field final synthetic val$subscriber:Lorg/ros/node/topic/Subscriber;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 278
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$6;, "Lorg/ros/internal/node/topic/DefaultSubscriber$6;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->this$0:Lorg/ros/internal/node/topic/DefaultSubscriber;

    iput-object p2, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->val$subscriber:Lorg/ros/node/topic/Subscriber;

    iput-object p3, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->val$publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 278
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$6;, "Lorg/ros/internal/node/topic/DefaultSubscriber$6;"
    check-cast p1, Lorg/ros/node/topic/SubscriberListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->run(Lorg/ros/node/topic/SubscriberListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/topic/SubscriberListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/SubscriberListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultSubscriber$6;, "Lorg/ros/internal/node/topic/DefaultSubscriber$6;"
    .local p1, "listener":Lorg/ros/node/topic/SubscriberListener;, "Lorg/ros/node/topic/SubscriberListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->val$subscriber:Lorg/ros/node/topic/Subscriber;

    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultSubscriber$6;->val$publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-interface {p1, v0, v1}, Lorg/ros/node/topic/SubscriberListener;->onNewPublisher(Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V

    .line 282
    return-void
.end method
