.class public Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
.super Ljava/lang/Object;
.source "ServiceRegistrationInfo.java"


# instance fields
.field private final node:Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

.field private final serviceName:Lorg/ros/namespace/GraphName;

.field private final serviceUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/internal/node/server/master/NodeRegistrationInfo;)V
    .registers 4
    .param p1, "serviceName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceUri"    # Ljava/net/URI;
    .param p3, "node"    # Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceName:Lorg/ros/namespace/GraphName;

    .line 47
    iput-object p2, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceUri:Ljava/net/URI;

    .line 48
    iput-object p3, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->node:Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 89
    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 91
    return v1

    .line 92
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 93
    return v1

    .line 94
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;

    .line 95
    .local v2, "other":Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;
    iget-object v3, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceName:Lorg/ros/namespace/GraphName;

    iget-object v4, v2, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3, v4}, Lorg/ros/namespace/GraphName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 96
    return v1

    .line 97
    :cond_21
    return v0
.end method

.method public getNode()Lorg/ros/internal/node/server/master/NodeRegistrationInfo;
    .registers 2

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->node:Lorg/ros/internal/node/server/master/NodeRegistrationInfo;

    return-object v0
.end method

.method public getServiceName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 57
    iget-object v0, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceName:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getServiceUri()Ljava/net/URI;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceUri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/node/server/master/ServiceRegistrationInfo;->serviceName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 83
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
