.class public Lorg/ros/internal/node/topic/SubscriberIdentifier;
.super Ljava/lang/Object;
.source "SubscriberIdentifier.java"


# instance fields
.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V
    .registers 3
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicIdentifier"    # Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 39
    iput-object p2, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 82
    return v0

    .line 83
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 84
    return v1

    .line 85
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 86
    return v1

    .line 87
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 88
    .local v2, "other":Lorg/ros/internal/node/topic/SubscriberIdentifier;
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    if-nez v3, :cond_1f

    .line 89
    iget-object v3, v2, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    if-eqz v3, :cond_2a

    .line 90
    return v1

    .line 91
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/server/NodeIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 92
    return v1

    .line 93
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-nez v3, :cond_33

    .line 94
    iget-object v3, v2, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-eqz v3, :cond_3e

    .line 95
    return v1

    .line 96
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/TopicIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 97
    return v1

    .line 98
    :cond_3e
    return v0
.end method

.method public getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    return-object v0
.end method

.method public getTopicIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 74
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/server/NodeIdentifier;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 75
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/TopicIdentifier;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 76
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 3

    .line 43
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 44
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/NodeIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 45
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriberIdentifier<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
