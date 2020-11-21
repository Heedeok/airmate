.class public Lcom/github/rosjava/android_apps/map_nav/MapManager;
.super Lorg/ros/node/AbstractNodeMain;
.source "MapManager.java"


# instance fields
.field private connectedNode:Lorg/ros/node/ConnectedNode;

.field private function:Ljava/lang/String;

.field private listServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lworld_canvas_msgs/ListMapsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private listSrvName:Ljava/lang/String;

.field private mapId:Ljava/lang/String;

.field private nameResolver:Lorg/ros/namespace/NameResolver;

.field private nameResolverSet:Z

.field private pubSrvName:Ljava/lang/String;

.field private publishServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lworld_canvas_msgs/PublishMapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remaps"    # Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;

    .line 32
    invoke-direct {p0}, Lorg/ros/node/AbstractNodeMain;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolverSet:Z

    .line 33
    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listSrvName:Ljava/lang/String;

    .line 34
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/rosjava/android_remocons/common_tools/apps/AppRemappings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->pubSrvName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public listMaps()V
    .registers 4

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolverSet:Z

    if-eqz v0, :cond_12

    .line 61
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolver:Lorg/ros/namespace/NameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listSrvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listSrvName:Ljava/lang/String;

    .line 63
    :cond_12
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listSrvName:Ljava/lang/String;

    const-string v2, "world_canvas_msgs/ListMaps"

    invoke-interface {v0, v1, v2}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v0

    .line 64
    .local v0, "listMapsClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lworld_canvas_msgs/ListMapsRequest;Lworld_canvas_msgs/ListMapsResponse;>;"
    invoke-interface {v0}, Lorg/ros/node/service/ServiceClient;->newMessage()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    invoke-interface {v0, v1, v2}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V
    :try_end_25
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_0 .. :try_end_25} :catch_26

    .line 73
    .end local v0    # "listMapsClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lworld_canvas_msgs/ListMapsRequest;Lworld_canvas_msgs/ListMapsResponse;>;"
    goto :goto_30

    .line 65
    :catch_26
    move-exception v0

    .line 67
    .local v0, "e":Lorg/ros/exception/ServiceNotFoundException;
    const-wide/16 v1, 0x3e8

    :try_start_29
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listMaps()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2f} :catch_31

    .line 72
    nop

    .line 74
    .end local v0    # "e":Lorg/ros/exception/ServiceNotFoundException;
    :goto_30
    return-void

    .line 69
    .restart local v0    # "e":Lorg/ros/exception/ServiceNotFoundException;
    :catch_31
    move-exception v1

    .line 70
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v0}, Lorg/ros/exception/ServiceNotFoundException;->printStackTrace()V

    .line 71
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode2"    # Lorg/ros/node/ConnectedNode;

    .line 100
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    .line 101
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->function:Ljava/lang/String;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listMaps()V

    goto :goto_1d

    .line 103
    :cond_10
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->function:Ljava/lang/String;

    const-string v1, "publish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 104
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->publishMap()V

    .line 106
    :cond_1d
    :goto_1d
    return-void
.end method

.method public publishMap()V
    .registers 4

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolverSet:Z

    if-eqz v0, :cond_12

    .line 79
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolver:Lorg/ros/namespace/NameResolver;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->pubSrvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->pubSrvName:Ljava/lang/String;

    .line 81
    :cond_12
    iget-object v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->connectedNode:Lorg/ros/node/ConnectedNode;

    iget-object v1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->pubSrvName:Ljava/lang/String;

    const-string v2, "world_canvas_msgs/PublishMap"

    invoke-interface {v0, v1, v2}, Lorg/ros/node/ConnectedNode;->newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;

    move-result-object v0

    .line 82
    .local v0, "publishMapClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lworld_canvas_msgs/PublishMapRequest;Lworld_canvas_msgs/PublishMapResponse;>;"
    invoke-interface {v0}, Lorg/ros/node/service/ServiceClient;->newMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lworld_canvas_msgs/PublishMapRequest;

    .line 83
    .local v1, "request":Lworld_canvas_msgs/PublishMapRequest;
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->mapId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lworld_canvas_msgs/PublishMapRequest;->setMapId(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->publishServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    invoke-interface {v0, v1, v2}, Lorg/ros/node/service/ServiceClient;->call(Ljava/lang/Object;Lorg/ros/node/service/ServiceResponseListener;)V
    :try_end_2c
    .catch Lorg/ros/exception/ServiceNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 92
    .end local v0    # "publishMapClient":Lorg/ros/node/service/ServiceClient;, "Lorg/ros/node/service/ServiceClient<Lworld_canvas_msgs/PublishMapRequest;Lworld_canvas_msgs/PublishMapResponse;>;"
    .end local v1    # "request":Lworld_canvas_msgs/PublishMapRequest;
    goto :goto_37

    .line 85
    :catch_2d
    move-exception v0

    .line 87
    .local v0, "e":Lorg/ros/exception/ServiceNotFoundException;
    const-wide/16 v1, 0x3e8

    :try_start_30
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 88
    invoke-virtual {p0}, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listMaps()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_38

    .line 91
    nop

    .line 93
    .end local v0    # "e":Lorg/ros/exception/ServiceNotFoundException;
    :goto_37
    return-void

    .line 89
    .restart local v0    # "e":Lorg/ros/exception/ServiceNotFoundException;
    :catch_38
    move-exception v1

    .line 90
    .local v1, "e2":Ljava/lang/Exception;
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFunction(Ljava/lang/String;)V
    .registers 2
    .param p1, "function2"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->function:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setListService(Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lworld_canvas_msgs/ListMapsResponse;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "listServiceResponseListener2":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<Lworld_canvas_msgs/ListMapsResponse;>;"
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->listServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    .line 52
    return-void
.end method

.method public setMapId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mapId2"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->mapId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setNameResolver(Lorg/ros/namespace/NameResolver;)V
    .registers 3
    .param p1, "newNameResolver"    # Lorg/ros/namespace/NameResolver;

    .line 42
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolver:Lorg/ros/namespace/NameResolver;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->nameResolverSet:Z

    .line 44
    return-void
.end method

.method public setPublishService(Lorg/ros/node/service/ServiceResponseListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/service/ServiceResponseListener<",
            "Lworld_canvas_msgs/PublishMapResponse;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "publishServiceResponseListener2":Lorg/ros/node/service/ServiceResponseListener;, "Lorg/ros/node/service/ServiceResponseListener<Lworld_canvas_msgs/PublishMapResponse;>;"
    iput-object p1, p0, Lcom/github/rosjava/android_apps/map_nav/MapManager;->publishServiceResponseListener:Lorg/ros/node/service/ServiceResponseListener;

    .line 56
    return-void
.end method
