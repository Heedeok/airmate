.class public Lorg/ros/internal/node/topic/PublisherFactory;
.super Ljava/lang/Object;
.source "PublisherFactory.java"


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final messageFactory:Lorg/ros/message/MessageFactory;

.field private final mutex:Ljava/lang/Object;

.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicParticipantManager;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicParticipantManager"    # Lorg/ros/internal/node/topic/TopicParticipantManager;
    .param p3, "messageFactory"    # Lorg/ros/message/MessageFactory;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/ros/internal/node/topic/PublisherFactory;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 45
    iput-object p2, p0, Lorg/ros/internal/node/topic/PublisherFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    .line 46
    iput-object p3, p0, Lorg/ros/internal/node/topic/PublisherFactory;->messageFactory:Lorg/ros/message/MessageFactory;

    .line 47
    iput-object p4, p0, Lorg/ros/internal/node/topic/PublisherFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/topic/PublisherFactory;->mutex:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/ros/internal/node/topic/PublisherFactory;)Lorg/ros/internal/node/topic/TopicParticipantManager;
    .registers 2
    .param p0, "x0"    # Lorg/ros/internal/node/topic/PublisherFactory;

    .line 33
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    return-object v0
.end method


# virtual methods
.method public newOrExisting(Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;)Lorg/ros/node/topic/Publisher;
    .registers 12
    .param p1, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;)",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p2, "messageSerializer":Lorg/ros/message/MessageSerializer;, "Lorg/ros/message/MessageSerializer<TT;>;"
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 68
    .local v0, "topicName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_7
    iget-object v2, p0, Lorg/ros/internal/node/topic/PublisherFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v2, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->hasPublisher(Lorg/ros/namespace/GraphName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 70
    iget-object v2, p0, Lorg/ros/internal/node/topic/PublisherFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v2, v0}, Lorg/ros/internal/node/topic/TopicParticipantManager;->getPublisher(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultPublisher;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 72
    :cond_17
    new-instance v2, Lorg/ros/internal/node/topic/DefaultPublisher;

    iget-object v4, p0, Lorg/ros/internal/node/topic/PublisherFactory;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    iget-object v7, p0, Lorg/ros/internal/node/topic/PublisherFactory;->messageFactory:Lorg/ros/message/MessageFactory;

    iget-object v8, p0, Lorg/ros/internal/node/topic/PublisherFactory;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/ros/internal/node/topic/DefaultPublisher;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;Lorg/ros/message/MessageSerializer;Lorg/ros/message/MessageFactory;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 75
    .local v2, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    new-instance v3, Lorg/ros/internal/node/topic/PublisherFactory$1;

    invoke-direct {v3, p0}, Lorg/ros/internal/node/topic/PublisherFactory$1;-><init>(Lorg/ros/internal/node/topic/PublisherFactory;)V

    invoke-virtual {v2, v3}, Lorg/ros/internal/node/topic/DefaultPublisher;->addListener(Lorg/ros/node/topic/PublisherListener;)V

    .line 88
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherFactory;->topicParticipantManager:Lorg/ros/internal/node/topic/TopicParticipantManager;

    invoke-virtual {v3, v2}, Lorg/ros/internal/node/topic/TopicParticipantManager;->addPublisher(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    .line 89
    monitor-exit v1

    return-object v2

    .line 91
    .end local v2    # "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<TT;>;"
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v2
.end method
