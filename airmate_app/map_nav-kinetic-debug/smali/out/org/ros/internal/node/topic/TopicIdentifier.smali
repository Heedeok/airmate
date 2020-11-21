.class public Lorg/ros/internal/node/topic/TopicIdentifier;
.super Ljava/lang/Object;
.source "TopicIdentifier.java"


# instance fields
.field private final name:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 41
    iput-object p1, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    .line 42
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/ros/internal/node/topic/TopicIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/ros/internal/node/topic/TopicIdentifier;

    invoke-static {p0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/internal/node/topic/TopicIdentifier;-><init>(Lorg/ros/namespace/GraphName;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 70
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 71
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 72
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/topic/TopicIdentifier;

    .line 73
    .local v2, "other":Lorg/ros/internal/node/topic/TopicIdentifier;
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_1f

    .line 74
    iget-object v3, v2, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-eqz v3, :cond_2a

    return v1

    .line 75
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    return v1

    .line 76
    :cond_2a
    return v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 51
    iget-object v0, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 61
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 64
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 4

    .line 45
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 46
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v1, "topic"

    iget-object v2, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicIdentifier<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/topic/TopicIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
