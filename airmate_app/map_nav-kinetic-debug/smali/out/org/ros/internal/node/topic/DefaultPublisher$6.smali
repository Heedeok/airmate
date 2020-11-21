.class Lorg/ros/internal/node/topic/DefaultPublisher$6;
.super Ljava/lang/Object;
.source "DefaultPublisher.java"

# interfaces
.implements Lorg/ros/concurrent/SignalRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/DefaultPublisher;->signalOnNewSubscriber(Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/concurrent/SignalRunnable<",
        "Lorg/ros/node/topic/PublisherListener<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

.field final synthetic val$publisher:Lorg/ros/node/topic/Publisher;

.field final synthetic val$subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/DefaultPublisher;

    .line 287
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$6;, "Lorg/ros/internal/node/topic/DefaultPublisher$6;"
    iput-object p1, p0, Lorg/ros/internal/node/topic/DefaultPublisher$6;->this$0:Lorg/ros/internal/node/topic/DefaultPublisher;

    iput-object p2, p0, Lorg/ros/internal/node/topic/DefaultPublisher$6;->val$publisher:Lorg/ros/node/topic/Publisher;

    iput-object p3, p0, Lorg/ros/internal/node/topic/DefaultPublisher$6;->val$subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .line 287
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$6;, "Lorg/ros/internal/node/topic/DefaultPublisher$6;"
    check-cast p1, Lorg/ros/node/topic/PublisherListener;

    invoke-virtual {p0, p1}, Lorg/ros/internal/node/topic/DefaultPublisher$6;->run(Lorg/ros/node/topic/PublisherListener;)V

    return-void
.end method

.method public run(Lorg/ros/node/topic/PublisherListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/PublisherListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/ros/internal/node/topic/DefaultPublisher$6;, "Lorg/ros/internal/node/topic/DefaultPublisher$6;"
    .local p1, "listener":Lorg/ros/node/topic/PublisherListener;, "Lorg/ros/node/topic/PublisherListener<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/DefaultPublisher$6;->val$publisher:Lorg/ros/node/topic/Publisher;

    iget-object v1, p0, Lorg/ros/internal/node/topic/DefaultPublisher$6;->val$subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-interface {p1, v0, v1}, Lorg/ros/node/topic/PublisherListener;->onNewSubscriber(Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V

    .line 291
    return-void
.end method
