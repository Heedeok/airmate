.class public Lorg/ros/internal/node/response/ProtocolDescriptionResultFactory;
.super Ljava/lang/Object;
.source "ProtocolDescriptionResultFactory.java"

# interfaces
.implements Lorg/ros/internal/node/response/ResultFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ros/internal/node/response/ResultFactory<",
        "Lorg/ros/internal/transport/ProtocolDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/ros/internal/node/response/ProtocolDescriptionResultFactory;->newFromValue(Ljava/lang/Object;)Lorg/ros/internal/transport/ProtocolDescription;

    move-result-object p1

    return-object p1
.end method

.method public newFromValue(Ljava/lang/Object;)Lorg/ros/internal/transport/ProtocolDescription;
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "protocolParameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TCPROS"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 39
    new-instance v1, Lorg/ros/address/AdvertiseAddress;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/ros/address/AdvertiseAddress;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "address":Lorg/ros/address/AdvertiseAddress;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/ros/address/AdvertiseAddress;->setStaticPort(I)V

    .line 41
    new-instance v2, Lorg/ros/internal/transport/tcp/TcpRosProtocolDescription;

    invoke-direct {v2, v1}, Lorg/ros/internal/transport/tcp/TcpRosProtocolDescription;-><init>(Lorg/ros/address/AdvertiseAddress;)V

    return-object v2
.end method
