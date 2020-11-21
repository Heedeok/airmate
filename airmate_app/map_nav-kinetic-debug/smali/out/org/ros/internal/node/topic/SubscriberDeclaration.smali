.class public Lorg/ros/internal/node/topic/SubscriberDeclaration;
.super Ljava/lang/Object;
.source "SubscriberDeclaration.java"


# instance fields
.field private final subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

.field private final topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/topic/SubscriberIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)V
    .registers 3
    .param p1, "subscriberIdentifier"    # Lorg/ros/internal/node/topic/SubscriberIdentifier;
    .param p2, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 54
    iput-object p2, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 55
    return-void
.end method

.method public static newFromHeader(Ljava/util/Map;)Lorg/ros/internal/node/topic/SubscriberDeclaration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/ros/internal/node/topic/SubscriberDeclaration;"
        }
    .end annotation

    .line 44
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    const-string v1, "callerid"

    .line 45
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 46
    .local v0, "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    invoke-static {p0}, Lorg/ros/internal/node/topic/TopicDeclaration;->newFromHeader(Ljava/util/Map;)Lorg/ros/internal/node/topic/TopicDeclaration;

    move-result-object v1

    .line 47
    .local v1, "topicDeclaration":Lorg/ros/internal/node/topic/TopicDeclaration;
    new-instance v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;

    new-instance v3, Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 48
    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/ros/internal/node/topic/SubscriberIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    invoke-direct {v2, v3, v1}, Lorg/ros/internal/node/topic/SubscriberDeclaration;-><init>(Lorg/ros/internal/node/topic/SubscriberIdentifier;Lorg/ros/internal/node/topic/TopicDeclaration;)V

    .line 47
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 95
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 96
    return v1

    .line 97
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 98
    return v1

    .line 99
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;

    .line 100
    .local v2, "other":Lorg/ros/internal/node/topic/SubscriberDeclaration;
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    if-nez v3, :cond_1f

    .line 101
    iget-object v3, v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    if-eqz v3, :cond_2a

    .line 102
    return v1

    .line 103
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 104
    return v1

    .line 105
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-nez v3, :cond_33

    .line 106
    iget-object v3, v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-eqz v3, :cond_3e

    .line 107
    return v1

    .line 108
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    iget-object v4, v2, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/TopicDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 109
    return v1

    .line 110
    :cond_3e
    return v0
.end method

.method public getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveUri()Ljava/net/URI;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 83
    const/16 v0, 0x1f

    .line 84
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 85
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    .line 86
    const/4 v3, 0x0

    goto :goto_12

    .line 85
    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    .line 86
    invoke-virtual {v3}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 87
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/TopicDeclaration;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 88
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 3

    .line 70
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 71
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/SubscriberIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 72
    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicDeclaration;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 73
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriberDefinition<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->subscriberIdentifier:Lorg/ros/internal/node/topic/SubscriberIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/SubscriberDeclaration;->topicDeclaration:Lorg/ros/internal/node/topic/TopicDeclaration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
