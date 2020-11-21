.class public Lorg/ros/internal/node/topic/TopicParticipantManager;
.super Ljava/lang/Object;
.source "TopicParticipantManager.java"


# instance fields
.field private listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

.field private final publisherConnections:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final publishers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final subscriberConnections:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    .line 67
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscriberConnections:Lcom/google/common/collect/Multimap;

    .line 68
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publisherConnections:Lcom/google/common/collect/Multimap;

    .line 69
    return-void
.end method


# virtual methods
.method public addPublisher(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation

    .line 92
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    if-eqz v0, :cond_12

    .line 94
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/topic/TopicParticipantManagerListener;->onPublisherAdded(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    .line 96
    :cond_12
    return-void
.end method

.method public addPublisherConnection(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 4
    .param p2, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ")V"
        }
    .end annotation

    .line 131
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publisherConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public addSubscriber(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 106
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    if-eqz v0, :cond_12

    .line 108
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/topic/TopicParticipantManagerListener;->onSubscriberAdded(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    .line 110
    :cond_12
    return-void
.end method

.method public addSubscriberConnection(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 4
    .param p2, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation

    .line 121
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscriberConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public getPublisher(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultPublisher;
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/topic/DefaultPublisher;

    return-object v0
.end method

.method public getPublisherConnections(Lorg/ros/internal/node/topic/DefaultPublisher;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ">;"
        }
    .end annotation

    .line 165
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publisherConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getPublishers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriber(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/topic/DefaultSubscriber;
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/topic/DefaultSubscriber;

    return-object v0
.end method

.method public getSubscriberConnections(Lorg/ros/internal/node/topic/DefaultSubscriber;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ">;"
        }
    .end annotation

    .line 157
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscriberConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hasPublisher(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 80
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSubscriber(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePublisher(Lorg/ros/internal/node/topic/DefaultPublisher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;)V"
        }
    .end annotation

    .line 99
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    if-eqz v0, :cond_12

    .line 101
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/topic/TopicParticipantManagerListener;->onPublisherRemoved(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    .line 103
    :cond_12
    return-void
.end method

.method public removePublisherConnection(Lorg/ros/internal/node/topic/DefaultPublisher;Lorg/ros/internal/node/topic/SubscriberIdentifier;)V
    .registers 4
    .param p2, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultPublisher<",
            "*>;",
            "Lorg/ros/internal/node/topic/SubscriberIdentifier;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publisherConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public removeSubscriber(Lorg/ros/internal/node/topic/DefaultSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 113
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/topic/TopicParticipantManagerListener;->onSubscriberRemoved(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    .line 117
    :cond_12
    return-void
.end method

.method public removeSubscriberConnection(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 4
    .param p2, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "*>;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation

    .line 126
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscriberConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public setListener(Lorg/ros/internal/node/topic/TopicParticipantManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    .line 72
    iput-object p1, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->listener:Lorg/ros/internal/node/topic/TopicParticipantManagerListener;

    .line 73
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 140
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publishers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultPublisher;

    .line 141
    .local v1, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultPublisher;->shutdown()V

    .line 142
    invoke-virtual {p0, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->removePublisher(Lorg/ros/internal/node/topic/DefaultPublisher;)V

    .line 143
    .end local v1    # "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    goto :goto_a

    .line 144
    :cond_1d
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscriberConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 145
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->subscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 146
    .local v1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->shutdown()V

    .line 147
    invoke-virtual {p0, v1}, Lorg/ros/internal/node/topic/TopicParticipantManager;->removeSubscriber(Lorg/ros/internal/node/topic/DefaultSubscriber;)V

    .line 148
    .end local v1    # "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    goto :goto_2c

    .line 149
    :cond_3f
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicParticipantManager;->publisherConnections:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 150
    return-void
.end method
