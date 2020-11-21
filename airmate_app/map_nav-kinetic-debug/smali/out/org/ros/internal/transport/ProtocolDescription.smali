.class public Lorg/ros/internal/transport/ProtocolDescription;
.super Ljava/lang/Object;
.source "ProtocolDescription.java"


# instance fields
.field private final address:Lorg/ros/address/AdvertiseAddress;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ros/address/AdvertiseAddress;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Lorg/ros/address/AdvertiseAddress;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 72
    return v0

    .line 73
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 74
    return v1

    .line 75
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 76
    return v1

    .line 77
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/transport/ProtocolDescription;

    .line 78
    .local v2, "other":Lorg/ros/internal/transport/ProtocolDescription;
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    if-nez v3, :cond_1f

    .line 79
    iget-object v3, v2, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    if-eqz v3, :cond_2a

    .line 80
    return v1

    .line 81
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    iget-object v4, v2, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v3, v4}, Lorg/ros/address/AdvertiseAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 82
    return v1

    .line 83
    :cond_2a
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    if-nez v3, :cond_33

    .line 84
    iget-object v3, v2, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 85
    return v1

    .line 86
    :cond_33
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 87
    return v1

    .line 88
    :cond_3e
    return v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v0}, Lorg/ros/address/AdvertiseAddress;->toInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAdverstiseAddress()Lorg/ros/address/AdvertiseAddress;
    .registers 2

    .line 44
    iget-object v0, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 62
    const/16 v0, 0x1f

    .line 63
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 64
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_12

    :cond_c
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v3}, Lorg/ros/address/AdvertiseAddress;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v2, v3

    .line 65
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    if-nez v3, :cond_1a

    goto :goto_20

    :cond_1a
    iget-object v3, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_20
    add-int/2addr v1, v4

    .line 66
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v1}, Lorg/ros/address/AdvertiseAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/ros/internal/transport/ProtocolDescription;->address:Lorg/ros/address/AdvertiseAddress;

    invoke-virtual {v1}, Lorg/ros/address/AdvertiseAddress;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protocol<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ros/internal/transport/ProtocolDescription;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ros/internal/transport/ProtocolDescription;->getAdverstiseAddress()Lorg/ros/address/AdvertiseAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
