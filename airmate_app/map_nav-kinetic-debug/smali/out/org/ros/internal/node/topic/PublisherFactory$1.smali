.class Lorg/ros/internal/node/topic/PublisherFactory$1;
.super Lorg/ros/node/topic/DefaultPublisherListener;
.source "PublisherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/PublisherFactory;->newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;)Lorg/ros/node/topic/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/node/topic/DefaultPublisherListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/PublisherFactory;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/PublisherFactory;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/PublisherFactory;

    .line 75
    iput-object p1, p0, Lorg/ros/internal/node/topic/PublisherFactory$1;->this$0:Lorg/ros/internal/node/topic/PublisherFactory;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultPublisherListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewSubscriber(Lorg/ros/node/topic/Publisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 5
    .param p2, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherFactory$1;->this$0:Lorg/ros/internal/node/topic/PublisherFactory;

    invoke-static {v0}, Lorg/ros/internal/node/topic/PublisherFactory;->access$000(Lorg/ros/internal/node/topic/PublisherFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v0, v1, p2}, Lorg/ros/internal/node/topic/TopicParticipantManager;->addPublisherConnection(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V

    .line 81
    return-void
.end method

.method public onShutdown(Lorg/ros/node/topic/Publisher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    .line 85
    .local p1, "publisher":Lorg/ros/node/topic/Publisher;, "Lorg/ros/node/topic/Publisher<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherFactory$1;->this$0:Lorg/ros/internal/node/topic/PublisherFactory;

    invoke-static {v0}, Lorg/ros/internal/node/topic/PublisherFactory;->access$000(Lorg/ros/internal/node/topic/PublisherFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultPublisher;

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->removePublisher(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    .line 86
    return-void
.end method
