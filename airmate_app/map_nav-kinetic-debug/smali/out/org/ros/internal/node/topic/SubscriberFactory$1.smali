.class Lorg/ros/internal/node/topic/SubscriberFactory$1;
.super Lorg/ros/node/topic/DefaultSubscriberListener;
.source "SubscriberFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/topic/SubscriberFactory;->newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;)Lorg/ros/node/topic/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/node/topic/DefaultSubscriberListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/topic/SubscriberFactory;


# direct methods
.method constructor <init>(Lorg/ros/internal/node/topic/SubscriberFactory;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ros/internal/node/topic/SubscriberFactory;

    .line 71
    iput-object p1, p0, Lorg/ros/internal/node/topic/SubscriberFactory$1;->this$0:Lorg/ros/internal/node/topic/SubscriberFactory;

    invoke-direct {p0}, Lorg/ros/node/topic/DefaultSubscriberListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPublisher(Lorg/ros/node/topic/Subscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 5
    .param p2, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberFactory$1;->this$0:Lorg/ros/internal/node/topic/SubscriberFactory;

    invoke-static {v0}, Lorg/ros/internal/node/topic/SubscriberFactory;->access$000(Lorg/ros/internal/node/topic/SubscriberFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v0, v1, p2}, Lorg/ros/internal/node/topic/TopicParticipantManager;->addSubscriberConnection(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V

    .line 77
    return-void
.end method

.method public onShutdown(Lorg/ros/node/topic/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    .local p1, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberFactory$1;->this$0:Lorg/ros/internal/node/topic/SubscriberFactory;

    invoke-static {v0}, Lorg/ros/internal/node/topic/SubscriberFactory;->access$000(Lorg/ros/internal/node/topic/SubscriberFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultSubscriber;

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->removeSubscriber(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    .line 82
    return-void
.end method
