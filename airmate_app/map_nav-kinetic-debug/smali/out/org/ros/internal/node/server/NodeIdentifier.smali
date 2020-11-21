.class public Lorg/ros/internal/node/server/NodeIdentifier;
.super Ljava/lang/Object;
.source "NodeIdentifier.java"


# instance fields
.field private final name:Lorg/ros/namespace/GraphName;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "uri"    # Ljava/net/URI;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_a

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    if-eqz p1, :cond_17

    .line 82
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    :cond_17
    iput-object p1, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    .line 85
    iput-object p2, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    .line 86
    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-static {p0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    return-object v0
.end method

.method public static forNameAndUri(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .line 55
    :try_start_0
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-static {p0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 56
    :catch_f
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static forUri(Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .line 47
    :try_start_0
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    const/4 v1, 0x0

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 48
    :catch_c
    move-exception v0

    .line 49
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 119
    return v0

    .line 120
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 121
    return v1

    .line 122
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 123
    return v1

    .line 124
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/server/NodeIdentifier;

    .line 125
    .local v2, "other":Lorg/ros/internal/node/server/NodeIdentifier;
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-nez v3, :cond_1f

    .line 126
    iget-object v3, v2, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    if-eqz v3, :cond_2a

    .line 127
    return v1

    .line 128
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 129
    return v1

    .line 130
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    if-nez v3, :cond_33

    .line 131
    iget-object v3, v2, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    if-eqz v3, :cond_3e

    .line 132
    return v1

    .line 133
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    iget-object v4, v2, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 134
    return v1

    .line 135
    :cond_3e
    return v0
.end method

.method public getName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 109
    const/16 v0, 0x1f

    .line 110
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 111
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 112
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 113
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toConnectionHeader()Lorg/ros/internal/transport/ConnectionHeader;
    .registers 4

    .line 97
    new-instance v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v0}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 98
    .local v0, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    const-string v1, "callerid"

    iget-object v2, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeIdentifier<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/server/NodeIdentifier;->name:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/node/server/NodeIdentifier;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
