.class public Lorg/ros/internal/node/service/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# instance fields
.field private listener:Lorg/ros/internal/node/service/ServiceManagerListener;

.field private final serviceClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final serviceServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public addClient(Lorg/ros/internal/node/service/DefaultServiceClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "**>;)V"
        }
    .end annotation

    .line 85
    .local p1, "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/service/DefaultServiceClient;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public addServer(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation

    .line 63
    .local p1, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/service/DefaultServiceServer;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->listener:Lorg/ros/internal/node/service/ServiceManagerListener;

    if-eqz v0, :cond_12

    .line 65
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->listener:Lorg/ros/internal/node/service/ServiceManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/service/ServiceManagerListener;->onServiceServerAdded(Lorg/ros/internal/node/service/DefaultServiceServer;)V

    .line 67
    :cond_12
    return-void
.end method

.method public getClient(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceClient;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "**>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/service/DefaultServiceClient;

    return-object v0
.end method

.method public getClients()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "**>;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getServer(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/service/DefaultServiceServer;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/service/DefaultServiceServer;

    return-object v0
.end method

.method public getServers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public hasClient(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 81
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasServer(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 59
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeClient(Lorg/ros/internal/node/service/DefaultServiceClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceClient<",
            "**>;)V"
        }
    .end annotation

    .line 89
    .local p1, "serviceClient":Lorg/ros/internal/node/service/DefaultServiceClient;, "Lorg/ros/internal/node/service/DefaultServiceClient<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceClients:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/service/DefaultServiceClient;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public removeServer(Lorg/ros/internal/node/service/DefaultServiceServer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/service/DefaultServiceServer<",
            "**>;)V"
        }
    .end annotation

    .line 70
    .local p1, "serviceServer":Lorg/ros/internal/node/service/DefaultServiceServer;, "Lorg/ros/internal/node/service/DefaultServiceServer<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->serviceServers:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/ros/internal/node/service/DefaultServiceServer;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->listener:Lorg/ros/internal/node/service/ServiceManagerListener;

    if-eqz v0, :cond_12

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/service/ServiceManager;->listener:Lorg/ros/internal/node/service/ServiceManagerListener;

    invoke-interface {v0, p1}, Lorg/ros/internal/node/service/ServiceManagerListener;->onServiceServerRemoved(Lorg/ros/internal/node/service/DefaultServiceServer;)V

    .line 74
    :cond_12
    return-void
.end method

.method public setListener(Lorg/ros/internal/node/service/ServiceManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/ros/internal/node/service/ServiceManagerListener;

    .line 55
    iput-object p1, p0, Lorg/ros/internal/node/service/ServiceManager;->listener:Lorg/ros/internal/node/service/ServiceManagerListener;

    .line 56
    return-void
.end method
