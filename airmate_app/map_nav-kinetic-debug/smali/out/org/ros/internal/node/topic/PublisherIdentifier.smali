.class public Lorg/ros/internal/node/topic/PublisherIdentifier;
.super Ljava/lang/Object;
.source "PublisherIdentifier.java"


# instance fields
.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V
    .registers 3
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "topicIdentifier"    # Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 61
    iput-object p2, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 62
    return-void
.end method

.method public static newCollectionFromUris(Ljava/util/Collection;Lorg/ros/internal/node/topic/TopicDeclaration;)Ljava/util/Collection;
    .registers 8
    .param p1, "topicDeclaration"    # Lorg/ros/internal/node/topic/TopicDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/URI;",
            ">;",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ">;"
        }
    .end annotation

    .line 44
    .local p0, "publisherUris":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URI;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 45
    .local v0, "publishers":Ljava/util/Set;, "Ljava/util/Set<Lorg/ros/internal/node/topic/PublisherIdentifier;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    .line 46
    .local v2, "uri":Ljava/net/URI;
    new-instance v3, Lorg/ros/internal/node/server/NodeIdentifier;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 47
    .local v3, "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    new-instance v4, Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {p1}, Lorg/ros/internal/node/topic/TopicDeclaration;->getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/ros/internal/node/topic/PublisherIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    goto :goto_8

    .line 49
    :cond_27
    return-object v0
.end method

.method public static newFromStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/topic/PublisherIdentifier;
    .registers 6
    .param p0, "nodeName"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-static {p0, p1}, Lorg/ros/internal/node/server/NodeIdentifier;->forNameAndUri(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v1

    .line 54
    invoke-static {p2}, Lorg/ros/internal/node/topic/TopicIdentifier;->forName(Ljava/lang/String;)Lorg/ros/internal/node/topic/TopicIdentifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/topic/PublisherIdentifier;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/TopicIdentifier;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 121
    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 123
    return v1

    .line 124
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 125
    return v1

    .line 126
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 127
    .local v2, "other":Lorg/ros/internal/node/topic/PublisherIdentifier;
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/server/NodeIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 128
    return v1

    .line 129
    :cond_21
    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/TopicIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 130
    return v1

    .line 131
    :cond_2c
    return v0
.end method

.method public getNodeIdentifier()Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    return-object v0
.end method

.method public getNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTopicIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    return-object v0
.end method

.method public getTopicName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 111
    const/16 v0, 0x1f

    .line 112
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 113
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/server/NodeIdentifier;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 114
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/TopicIdentifier;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 115
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 3

    .line 65
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 66
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/NodeIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 67
    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 68
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublisherIdentifier<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/PublisherIdentifier;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
