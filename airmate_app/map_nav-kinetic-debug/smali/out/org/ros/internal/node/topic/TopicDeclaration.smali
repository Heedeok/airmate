.class public Lorg/ros/internal/node/topic/TopicDeclaration;
.super Ljava/lang/Object;
.source "TopicDeclaration.java"


# instance fields
.field private final topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

.field private final topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/topic/TopicIdentifier;Lorg/ros/internal/message/topic/TopicDescription;)V
    .registers 3
    .param p1, "topicIdentifier"    # Lorg/ros/internal/node/topic/TopicIdentifier;
    .param p2, "topicDescription"    # Lorg/ros/internal/message/topic/TopicDescription;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 64
    iput-object p2, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    .line 65
    return-void
.end method

.method public static newFromHeader(Ljava/util/Map;)Lorg/ros/internal/node/topic/TopicDeclaration;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/ros/internal/node/topic/TopicDeclaration;"
        }
    .end annotation

    .line 46
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "topic"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    const-string v0, "topic"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 48
    .local v0, "name":Lorg/ros/namespace/GraphName;
    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "type":Ljava/lang/String;
    const-string v2, "message_definition"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "definition":Ljava/lang/String;
    const-string v3, "md5sum"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "md5Checksum":Ljava/lang/String;
    new-instance v4, Lorg/ros/internal/message/topic/TopicDescription;

    invoke-direct {v4, v1, v2, v3}, Lorg/ros/internal/message/topic/TopicDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v4, "topicDescription":Lorg/ros/internal/message/topic/TopicDescription;
    new-instance v5, Lorg/ros/internal/node/topic/TopicDeclaration;

    new-instance v6, Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-direct {v6, v0}, Lorg/ros/internal/node/topic/TopicIdentifier;-><init>(Lorg/ros/namespace/GraphName;)V

    invoke-direct {v5, v6, v4}, Lorg/ros/internal/node/topic/TopicDeclaration;-><init>(Lorg/ros/internal/node/topic/TopicIdentifier;Lorg/ros/internal/message/topic/TopicDescription;)V

    return-object v5
.end method

.method public static newFromTopicName(Lorg/ros/namespace/GraphName;Lorg/ros/internal/message/topic/TopicDescription;)Lorg/ros/internal/node/topic/TopicDeclaration;
    .registers 4
    .param p0, "topicName"    # Lorg/ros/namespace/GraphName;
    .param p1, "topicDescription"    # Lorg/ros/internal/message/topic/TopicDescription;

    .line 57
    new-instance v0, Lorg/ros/internal/node/topic/TopicDeclaration;

    new-instance v1, Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-direct {v1, p0}, Lorg/ros/internal/node/topic/TopicIdentifier;-><init>(Lorg/ros/namespace/GraphName;)V

    invoke-direct {v0, v1, p1}, Lorg/ros/internal/node/topic/TopicDeclaration;-><init>(Lorg/ros/internal/node/topic/TopicIdentifier;Lorg/ros/internal/message/topic/TopicDescription;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 111
    return v0

    .line 112
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 113
    return v1

    .line 114
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 115
    return v1

    .line 116
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/TopicDeclaration;

    .line 117
    .local v2, "other":Lorg/ros/internal/node/topic/TopicDeclaration;
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    if-nez v3, :cond_1f

    .line 118
    iget-object v3, v2, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    if-eqz v3, :cond_2a

    .line 119
    return v1

    .line 120
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    iget-object v4, v2, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/topic/TopicDescription;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 121
    return v1

    .line 122
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-nez v3, :cond_33

    .line 123
    iget-object v3, v2, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-eqz v3, :cond_3e

    .line 124
    return v1

    .line 125
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/topic/TopicIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 126
    return v1

    .line 127
    :cond_3e
    return v0
.end method

.method public getIdentifier()Lorg/ros/internal/node/topic/TopicIdentifier;
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    invoke-virtual {v0}, Lorg/ros/internal/message/topic/TopicDescription;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/topic/TopicIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 101
    const/16 v0, 0x1f

    .line 102
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 103
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    invoke-virtual {v3}, Lorg/ros/internal/message/topic/TopicDescription;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 104
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/topic/TopicIdentifier;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 105
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 4

    .line 80
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 81
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v1, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/topic/TopicIdentifier;->toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/transport/ConnectionHeader;->merge(Lorg/ros/internal/transport/ConnectionHeader;)V

    .line 82
    const-string v1, "type"

    iget-object v2, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    invoke-virtual {v2}, Lorg/ros/internal/message/topic/TopicDescription;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "message_definition"

    iget-object v2, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    .line 84
    invoke-virtual {v2}, Lorg/ros/internal/message/topic/TopicDescription;->getDefinition()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "md5sum"

    iget-object v2, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    .line 86
    invoke-virtual {v2}, Lorg/ros/internal/message/topic/TopicDescription;->getMd5Checksum()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method public toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/ros/internal/node/topic/TopicDeclaration;->getMessageType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Topic<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicIdentifier:Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/TopicDeclaration;->topicDescription:Lorg/ros/internal/message/topic/TopicDescription;

    invoke-virtual {v1}, Lorg/ros/internal/message/topic/TopicDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
