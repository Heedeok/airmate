.class public Lorg/ros/internal/node/service/ServiceDeclaration;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# instance fields
.field private final description:Lorg/ros/internal/message/service/ServiceDescription;

.field private final identifier:Lorg/ros/internal/node/service/ServiceIdentifier;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/service/ServiceIdentifier;Lorg/ros/internal/message/service/ServiceDescription;)V
    .registers 3
    .param p1, "identifier"    # Lorg/ros/internal/node/service/ServiceIdentifier;
    .param p2, "description"    # Lorg/ros/internal/message/service/ServiceDescription;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    .line 40
    iput-object p2, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 90
    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 92
    return v1

    .line 93
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 94
    return v1

    .line 95
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/service/ServiceDeclaration;

    .line 96
    .local v2, "other":Lorg/ros/internal/node/service/ServiceDeclaration;
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    if-nez v3, :cond_1f

    .line 97
    iget-object v3, v2, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    if-eqz v3, :cond_2a

    .line 98
    return v1

    .line 99
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    iget-object v4, v2, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    invoke-virtual {v3, v4}, Lorg/ros/internal/node/service/ServiceIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 100
    return v1

    .line 101
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    if-nez v3, :cond_33

    .line 102
    iget-object v3, v2, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    if-eqz v3, :cond_3e

    .line 103
    return v1

    .line 104
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    iget-object v4, v2, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/service/ServiceDescription;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 105
    return v1

    .line 106
    :cond_3e
    return v0
.end method

.method public getDefinition()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDescription;->getDefinition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDescription;->getMd5Checksum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v0}, Lorg/ros/internal/message/service/ServiceDescription;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    invoke-virtual {v0}, Lorg/ros/internal/node/service/ServiceIdentifier;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->identifier:Lorg/ros/internal/node/service/ServiceIdentifier;

    invoke-virtual {v3}, Lorg/ros/internal/node/service/ServiceIdentifier;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 83
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v3}, Lorg/ros/internal/message/service/ServiceDescription;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 84
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 4

    .line 44
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 45
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v1, "service"

    invoke-virtual {p0}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "type"

    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v2}, Lorg/ros/internal/message/service/ServiceDescription;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "message_definition"

    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    .line 48
    invoke-virtual {v2}, Lorg/ros/internal/message/service/ServiceDescription;->getDefinition()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "md5sum"

    iget-object v2, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v2}, Lorg/ros/internal/message/service/ServiceDescription;->getMd5Checksum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceDeclaration<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/node/service/ServiceDeclaration;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/service/ServiceDeclaration;->description:Lorg/ros/internal/message/service/ServiceDescription;

    invoke-virtual {v1}, Lorg/ros/internal/message/service/ServiceDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
