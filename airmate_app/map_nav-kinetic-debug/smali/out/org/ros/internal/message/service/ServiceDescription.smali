.class public Lorg/ros/internal/message/service/ServiceDescription;
.super Lorg/ros/message/MessageDeclaration;
.source "ServiceDescription.java"


# instance fields
.field private final md5Checksum:Ljava/lang/String;

.field private final requestDefinition:Ljava/lang/String;

.field private final requestType:Ljava/lang/String;

.field private final responseDefinition:Ljava/lang/String;

.field private final responseType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "definition"    # Ljava/lang/String;
    .param p3, "md5Checksum"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lorg/ros/message/MessageIdentifier;->of(Ljava/lang/String;)Lorg/ros/message/MessageIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ros/message/MessageDeclaration;-><init>(Lorg/ros/message/MessageIdentifier;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    .line 42
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/ros/internal/message/definition/MessageDefinitionTupleParser;->parse(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "requestAndResponse":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/internal/message/service/ServiceDescription;->requestType:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/internal/message/service/ServiceDescription;->responseType:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/ros/internal/message/service/ServiceDescription;->requestDefinition:Ljava/lang/String;

    .line 46
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/ros/internal/message/service/ServiceDescription;->responseDefinition:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 85
    return v0

    .line 86
    :cond_4
    invoke-super {p0, p1}, Lorg/ros/message/MessageDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 87
    return v2

    .line 88
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 89
    return v2

    .line 90
    :cond_17
    move-object v1, p1

    check-cast v1, Lorg/ros/internal/message/service/ServiceDescription;

    .line 91
    .local v1, "other":Lorg/ros/internal/message/service/ServiceDescription;
    iget-object v3, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    if-nez v3, :cond_23

    .line 92
    iget-object v3, v1, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 93
    return v2

    .line 94
    :cond_23
    iget-object v3, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    iget-object v4, v1, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 95
    return v2

    .line 96
    :cond_2e
    return v0
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDefinition()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescription;->requestDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescription;->requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseDefinition()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescription;->responseDefinition:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/ros/internal/message/service/ServiceDescription;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, "prime":I
    invoke-super {p0}, Lorg/ros/message/MessageDeclaration;->hashCode()I

    move-result v1

    .line 78
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_14

    :cond_e
    iget-object v3, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v2, v3

    .line 79
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceDescription<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/message/service/ServiceDescription;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/message/service/ServiceDescription;->md5Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
