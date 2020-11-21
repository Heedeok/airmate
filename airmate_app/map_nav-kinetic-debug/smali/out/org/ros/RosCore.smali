.class public Lorg/ros/RosCore;
.super Ljava/lang/Object;
.source "RosCore.java"


# instance fields
.field private final masterServer:Lorg/ros/internal/node/server/master/MasterServer;


# direct methods
.method private constructor <init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V
    .registers 4
    .param p1, "bindAddress"    # Lorg/ros/address/BindAddress;
    .param p2, "advertiseAddress"    # Lorg/ros/address/AdvertiseAddress;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/ros/internal/node/server/master/MasterServer;

    invoke-direct {v0, p1, p2}, Lorg/ros/internal/node/server/master/MasterServer;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    iput-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    .line 65
    return-void
.end method

.method public static newPrivate()Lorg/ros/RosCore;
    .registers 3

    .line 60
    new-instance v0, Lorg/ros/RosCore;

    invoke-static {}, Lorg/ros/address/BindAddress;->newPrivate()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-static {}, Lorg/ros/address/AdvertiseAddress;->newPrivate()Lorg/ros/address/AdvertiseAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/RosCore;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    return-object v0
.end method

.method public static newPrivate(I)Lorg/ros/RosCore;
    .registers 4
    .param p0, "port"    # I

    .line 56
    new-instance v0, Lorg/ros/RosCore;

    invoke-static {p0}, Lorg/ros/address/BindAddress;->newPrivate(I)Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-static {}, Lorg/ros/address/AdvertiseAddress;->newPrivate()Lorg/ros/address/AdvertiseAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/RosCore;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    return-object v0
.end method

.method public static newPublic()Lorg/ros/RosCore;
    .registers 3

    .line 52
    new-instance v0, Lorg/ros/RosCore;

    invoke-static {}, Lorg/ros/address/BindAddress;->newPublic()Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-static {}, Lorg/ros/address/AdvertiseAddress;->newPublic()Lorg/ros/address/AdvertiseAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/RosCore;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    return-object v0
.end method

.method public static newPublic(I)Lorg/ros/RosCore;
    .registers 4
    .param p0, "port"    # I

    .line 48
    new-instance v0, Lorg/ros/RosCore;

    invoke-static {p0}, Lorg/ros/address/BindAddress;->newPublic(I)Lorg/ros/address/BindAddress;

    move-result-object v1

    invoke-static {}, Lorg/ros/address/AdvertiseAddress;->newPublic()Lorg/ros/address/AdvertiseAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/RosCore;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    return-object v0
.end method

.method public static newPublic(Ljava/lang/String;I)Lorg/ros/RosCore;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 44
    new-instance v0, Lorg/ros/RosCore;

    invoke-static {p1}, Lorg/ros/address/BindAddress;->newPublic(I)Lorg/ros/address/BindAddress;

    move-result-object v1

    new-instance v2, Lorg/ros/address/AdvertiseAddress;

    invoke-direct {v2, p0}, Lorg/ros/address/AdvertiseAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ros/RosCore;-><init>(Lorg/ros/address/BindAddress;Lorg/ros/address/AdvertiseAddress;)V

    return-object v0
.end method


# virtual methods
.method public awaitStart()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/master/MasterServer;->awaitStart()V

    .line 77
    return-void
.end method

.method public awaitStart(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ros/internal/node/server/master/MasterServer;->awaitStart(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public getMasterServer()Lorg/ros/internal/node/server/master/MasterServer;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/master/MasterServer;->getUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/master/MasterServer;->shutdown()V

    .line 85
    return-void
.end method

.method public start()V
    .registers 2

    .line 68
    iget-object v0, p0, Lorg/ros/RosCore;->masterServer:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/master/MasterServer;->start()V

    .line 69
    return-void
.end method
