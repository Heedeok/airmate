.class public Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
.super Ljava/lang/Object;
.source "TopicRegistrationInfo.java"


# instance fields
.field private isPublisherDefinedMessageType:Z

.field private messageType:Ljava/lang/String;

.field private final publishers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/NodeRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/NodeRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final topicName:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "topicName"    # Lorg/ros/namespace/GraphName;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->topicName:Lorg/ros/namespace/GraphName;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->publishers:Ljava/util/Set;

    .line 67
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->subscribers:Ljava/util/Set;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->isPublisherDefinedMessageType:Z

    .line 69
    return-void
.end method

.method private setMessageType(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "topicMessageType"    # Ljava/lang/String;
    .param p2, "isPublisher"    # Z

    .line 201
    if-eqz p2, :cond_8

    .line 203
    iput-object p1, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->messageType:Ljava/lang/String;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->isPublisherDefinedMessageType:Z

    goto :goto_1d

    .line 207
    :cond_8
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 208
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->messageType:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 210
    iget-boolean v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->isPublisherDefinedMessageType:Z

    if-nez v0, :cond_1d

    .line 211
    iput-object p1, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->messageType:Ljava/lang/String;

    goto :goto_1d

    .line 215
    :cond_1b
    iput-object p1, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->messageType:Ljava/lang/String;

    .line 219
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public addPublisher(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "publisher"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    .param p2, "messageType"    # Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->setMessageType(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public addSubscriber(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "subscriber"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    .param p2, "messageType"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->setMessageType(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 232
    return v0

    .line 233
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 234
    return v1

    .line 235
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 236
    return v1

    .line 237
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;

    .line 238
    .local v2, "other":Lorg/ros/internal/node/server/master/TopicRegistrationInfo;
    iget-object v3, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->topicName:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->topicName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 239
    return v1

    .line 240
    :cond_21
    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/ros/internal/node/server/master/NodeRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->publishers:Ljava/util/Set;

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
            "Lorg/ros/internal/node/server/master/NodeRegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->topicName:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public hasPublishers()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasRegistrations()Z
    .registers 2

    .line 111
    invoke-virtual {p0}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->hasPublishers()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->hasSubscribers()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public hasSubscribers()Z
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 223
    const/16 v0, 0x1f

    .line 224
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 225
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->topicName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 226
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public removePublisher(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z
    .registers 3
    .param p1, "publisher"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 147
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->publishers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSubscriber(Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)Z
    .registers 3
    .param p1, "subscriber"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 183
    iget-object v0, p0, Lorg/ros/internal/node/server/master/TopicRegistrationInfo;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
