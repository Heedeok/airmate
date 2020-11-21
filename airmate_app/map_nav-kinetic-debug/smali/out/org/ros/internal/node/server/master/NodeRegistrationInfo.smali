.class public Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
.super Ljava/lang/Object;
.source "NodeRegistrationInfo.java"


# instance fields
.field private final nodeName:Lorg/ros/namespace/GraphName;

.field private final nodeSlaveUri:Ljava/net/URI;

.field private final publishers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    .registers 4
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeSlaveUri"    # Ljava/net/URI;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeName:Lorg/ros/namespace/GraphName;

    .line 61
    iput-object p2, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeSlaveUri:Ljava/net/URI;

    .line 62
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->publishers:Ljava/util/Set;

    .line 63
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->subscribers:Ljava/util/Set;

    .line 64
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->services:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public addPublisher(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)V
    .registers 3
    .param p1, "publisherTopic"    # Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 106
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public addService(Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;)V
    .registers 3
    .param p1, "service"    # Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 168
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->services:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public addSubscriber(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)V
    .registers 3
    .param p1, "subscriberTopic"    # Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 137
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 194
    return v0

    .line 195
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 196
    return v1

    .line 197
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 198
    return v1

    .line 199
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 200
    .local v2, "other":Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    iget-object v3, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeName:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 201
    return v1

    .line 202
    :cond_21
    return v0
.end method

.method public getNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeName:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getNodeSlaveUri()Ljava/net/URI;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeSlaveUri:Ljava/net/URI;

    return-object v0
.end method

.method public getPublishers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->services:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getSubscribers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/TopicRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public hasRegistrations()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->services:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 185
    const/16 v0, 0x1f

    .line 186
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 187
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 188
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public removePublisher(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)Z
    .registers 3
    .param p1, "publisherTopic"    # Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 118
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeService(Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;)Z
    .registers 3
    .param p1, "service"    # Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 180
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->services:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSubscriber(Lorg/ros/internal/node/server/master/TopicRegistrationInfo;)Z
    .registers 3
    .param p1, "subscriberTopic"    # Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 149
    iget-object v0, p0, Lorg/ros/internal/node/server/master/NodeRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
