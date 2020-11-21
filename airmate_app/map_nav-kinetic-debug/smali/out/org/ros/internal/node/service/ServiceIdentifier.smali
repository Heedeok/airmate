.class public Lorg/ros/internal/node/service/ServiceIdentifier;
.super Ljava/lang/Object;
.source "ServiceIdentifier.java"


# instance fields
.field private final name:Lorg/ros/namespace/GraphName;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "uri"    # Ljava/net/URI;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    .line 37
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 66
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 67
    return v1

    .line 68
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 69
    return v1

    .line 70
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/service/ServiceIdentifier;

    .line 71
    .local v2, "other":Lorg/ros/internal/node/service/ServiceIdentifier;
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_1f

    .line 72
    iget-object v3, v2, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-eqz v3, :cond_2a

    .line 73
    return v1

    .line 74
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 75
    return v1

    .line 76
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    if-nez v3, :cond_33

    .line 77
    iget-object v3, v2, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    if-eqz v3, :cond_3e

    .line 78
    return v1

    .line 79
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    iget-object v4, v2, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 80
    return v1

    .line 81
    :cond_3e
    return v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 58
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 59
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceIdentifier<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
