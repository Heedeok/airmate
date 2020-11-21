.class public Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;
.super Ljava/lang/Object;
.source "MasterXmlRpcEndpointImpl.java"

# interfaces
.implements Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;
.implements Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;


# instance fields
.field private final master:Lorg/ros/internal/node/server/master/MasterServer;

.field private final parameterServer:Lorg/ros/internal/node/server/ParameterServer;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/master/MasterServer;)V
    .registers 3
    .param p1, "master"    # Lorg/ros/internal/node/server/master/MasterServer;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    .line 48
    new-instance v0, Lorg/ros/internal/node/server/ParameterServer;

    invoke-direct {v0}, Lorg/ros/internal/node/server/ParameterServer;-><init>()V

    iput-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    .line 49
    return-void
.end method


# virtual methods
.method public deleteParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->delete(Lorg/ros/namespace/GraphName;)V

    .line 248
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->get(Lorg/ros/namespace/GraphName;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_2c

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 212
    :cond_2c
    const-string v1, "Success"

    invoke-static {v1, v0}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getParamNames(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/ParameterServer;->getNames()Ljava/util/Collection;

    move-result-object v0

    .line 259
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/namespace/GraphName;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 260
    .local v1, "stringNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/namespace/GraphName;

    .line 261
    .local v3, "name":Lorg/ros/namespace/GraphName;
    invoke-virtual {v3}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v3    # "name":Lorg/ros/namespace/GraphName;
    goto :goto_e

    .line 263
    :cond_22
    const-string v2, "Success"

    invoke-static {v2, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getPid(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 53
    const-string v0, "server pid"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/MasterServer;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedTopics(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "subgraph"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    const-string v0, "current topics"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    .line 59
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/ros/internal/node/server/master/MasterServer;->getPublishedTopics(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public getSystemState(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    const-string v0, "current system state"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/MasterServer;->getSystemState()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopicTypes(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    const-string v0, "topic types"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/internal/node/server/master/MasterServer;->getTopicTypes(Lorg/ros/namespace/GraphName;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public getUri(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    const-string v0, "Success"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/master/MasterServer;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 253
    const-string v0, "Success"

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ros/internal/node/server/ParameterServer;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lookupNode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/master/MasterServer;->lookupNode(Lorg/ros/namespace/GraphName;)Ljava/net/URI;

    move-result-object v0

    .line 81
    .local v0, "nodeSlaveUri":Ljava/net/URI;
    if-eqz v0, :cond_1b

    .line 82
    const-string v1, "Success"

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 84
    :cond_1b
    const-string v1, "No such node"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public lookupService(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/master/MasterServer;->lookupService(Lorg/ros/namespace/GraphName;)Ljava/net/URI;

    move-result-object v0

    .line 140
    .local v0, "slaveUri":Ljava/net/URI;
    if-eqz v0, :cond_1b

    .line 141
    const-string v1, "Success"

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 143
    :cond_1b
    const-string v1, "No such service."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public registerPublisher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "topicMessageType"    # Ljava/lang/String;
    .param p4, "callerSlaveUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    .line 93
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lorg/ros/internal/node/server/master/MasterServer;->registerPublisher(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 97
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "uri":Ljava/net/URI;
    goto :goto_1b

    .line 99
    :cond_2f
    const-string v2, "Success"

    invoke-static {v2, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2
    :try_end_39
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object v2

    .line 100
    .end local v0    # "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v1    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3a
    move-exception v0

    .line 101
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const-string v3, "Improperly formatted URI %s for publisher"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceUri"    # Ljava/lang/String;
    .param p4, "callerSlaveUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ros/internal/node/server/master/MasterServer;->registerService(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 152
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0
    :try_end_26
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v0

    .line 153
    :catch_27
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "topicMessageType"    # Ljava/lang/String;
    .param p4, "callerSlaveUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    .line 117
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v1, v2, v3, p3}, Lorg/ros/internal/node/server/master/MasterServer;->registerSubscriber(Lorg/ros/namespace/GraphName;Ljava/net/URI;Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "publishers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URI;

    .line 121
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v3    # "uri":Ljava/net/URI;
    goto :goto_1b

    .line 123
    :cond_2f
    const-string v2, "Success"

    invoke-static {v2, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2
    :try_end_39
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object v2

    .line 124
    .end local v0    # "publishers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v1    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3a
    move-exception v0

    .line 125
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const-string v3, "Improperly formatted URI %s for subscriber"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public searchParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 218
    .local v0, "ns":Lorg/ros/namespace/GraphName;
    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 219
    .local v1, "searchKey":Lorg/ros/namespace/GraphName;
    iget-object v2, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-virtual {v2, v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->search(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1f

    .line 221
    const-string v3, "Success"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 223
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" in namespace \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" not found in parameter server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v3

    .line 223
    return-object v3
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;Z)V

    .line 173
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/util/List;
    .registers 8
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;D)V

    .line 185
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;I)V

    .line 179
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 191
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 196
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V

    .line 197
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    .local p3, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/ros/internal/node/server/ParameterServer;->set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    .line 203
    const-string v0, "Success"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public subscribeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "callerSlaveUri"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p3}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 231
    invoke-static {p1, p2}, Lorg/ros/internal/node/server/NodeIdentifier;->forNameAndUri(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/internal/node/server/NodeIdentifier;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/server/ParameterServer;->subscribe(Lorg/ros/namespace/GraphName;Lorg/ros/internal/node/server/NodeIdentifier;)V

    .line 232
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->parameterServer:Lorg/ros/internal/node/server/ParameterServer;

    invoke-static {p3}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/server/ParameterServer;->get(Lorg/ros/namespace/GraphName;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1f

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 237
    :cond_1f
    const-string v1, "Success"

    invoke-static {v1, v0}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public unregisterPublisher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "callerSlaveUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/server/master/MasterServer;->unregisterPublisher(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z

    move-result v0

    .line 109
    .local v0, "result":Z
    const-string v1, "Success"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public unregisterService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "serviceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    .line 162
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/ros/internal/node/server/master/MasterServer;->unregisterService(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;Ljava/net/URI;)Z

    move-result v0

    .line 164
    .local v0, "result":Z
    const-string v1, "Success"

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1
    :try_end_26
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v1

    .line 165
    .end local v0    # "result":Z
    :catch_27
    move-exception v0

    .line 166
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v1, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "callerSlaveUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpointImpl;->master:Lorg/ros/internal/node/server/master/MasterServer;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/server/master/MasterServer;->unregisterSubscriber(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Z

    move-result v0

    .line 134
    .local v0, "result":Z
    const-string v1, "Success"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "callerSlaveUri"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
