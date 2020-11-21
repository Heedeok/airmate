.class public Lorg/ros/internal/node/topic/SubscriberFactory;
.super Ljava/lang/Object;
.source "SubscriberFactory.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mutex:Ljava/lang/Object;

.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicParticipantManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 42
    iput-object p2, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 43
    iput-object p3, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->mutex:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/topic/SubscriberFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/topic/SubscriberFactory;

    .line 32
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    return-object v0
.end method


# virtual methods
.method public newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageDeserializer;)Lorg/ros/node/topic/Subscriber;
    .registers 7
    .param p1, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;)",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p2, "messageDeserializer":Lorg/ros/message/MessageDeserializer;, "Lorg/ros/message/MessageDeserializer<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 65
    .local v1, "topicName":Lorg/ros/namespace/GraphName;
    iget-object v2, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v2, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->hasSubscriber(Lorg/ros/namespace/GraphName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 66
    iget-object v2, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v2, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getSubscriber(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultSubscriber;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 68
    :cond_17
    iget-object v2, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    invoke-static {v2, p1, v3, p2}, Lorg/ros/internal/node/topic/DefaultSubscriber;->newDefault(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Ljava/util/concurrent/ScheduledExecutorService;Lorg/ros/message/MessageDeserializer;)Lorg/ros/internal/node/topic/DefaultSubscriber;

    move-result-object v2

    .line 71
    .local v2, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    new-instance v3, Lorg/ros/internal/node/topic/SubscriberFactory$1;

    invoke-direct {v3, p0}, Lorg/ros/internal/node/topic/SubscriberFactory$1;-><init>(Lorg/ros/internal/node/topic/SubscriberFactory;)V

    invoke-virtual {v2, v3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->addSubscriberListener(Lorg/ros/node/topic/SubscriberListener;)V

    .line 84
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/topic/TopicParticipantManager;->addSubscriber(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    .line 85
    monitor-exit v0

    return-object v2

    .line 87
    .end local v1    # "topicName":Lorg/ros/namespace/GraphName;
    .end local v2    # "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TT;>;"
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method
