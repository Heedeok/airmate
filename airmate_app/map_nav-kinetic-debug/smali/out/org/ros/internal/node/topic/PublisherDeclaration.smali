.class public Lorg/ros/internal/node/topic/PublisherDeclaration;
.super Ljava/lang/Object;
.source "PublisherDeclaration.java"


# instance fields
.field private final publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

.field private final topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/topic/PublisherIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)V
    .registers 5
    .param p1, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .param p2, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getTopicIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lorg/ros/internal/node/topic/TopicIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 49
    iput-object p1, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 50
    iput-object p2, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 51
    return-void
.end method

.method public static newFromNodeIdentifier(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)Lorg/ros/internal/node/topic/PublisherDeclaration;
    .registers 5
    .param p0, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p1, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 37
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lorg/ros/internal/node/topic/PublisherDeclaration;

    new-instance v1, Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 40
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/ros/internal/node/topic/PublisherIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    invoke-direct {v0, v1, p1}, Lorg/ros/internal/node/topic/PublisherDeclaration;-><init>(Lorg/ros/internal/node/topic/PublisherIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 96
    return v0

    .line 97
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 98
    return v1

    .line 99
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 100
    return v1

    .line 101
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/PublisherDeclaration;

    .line 102
    .local v2, "other":Lorg/ros/internal/node/topic/PublisherDeclaration;
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    if-nez v3, :cond_1f

    .line 103
    iget-object v3, v2, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    if-eqz v3, :cond_2a

    .line 104
    return v1

    .line 105
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/PublisherIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 106
    return v1

    .line 107
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-nez v3, :cond_33

    .line 108
    iget-object v3, v2, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-eqz v3, :cond_3e

    .line 109
    return v1

    .line 110
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    iget-object v4, v2, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/TopicDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 111
    return v1

    .line 112
    :cond_3e
    return v0
.end method

.method public getSlaveIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveUri()Ljava/net/URI;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTopicMessageType()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getMessageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 86
    const/16 v0, 0x1f

    .line 87
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 88
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/PublisherIdentifier;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 89
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/TopicDeclaration;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 90
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 3

    .line 54
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/PublisherIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v0

    .line 55
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 56
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublisherDefinition<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
