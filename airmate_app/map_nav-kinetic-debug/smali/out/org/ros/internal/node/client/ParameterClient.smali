.class public Lorg/ros/internal/node/client/ParameterClient;
.super Lorg/ros/internal/node/client/Client;
.source "ParameterClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/internal/node/client/Client<",
        "Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final nodeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;)V
    .registers 4
    .param p1, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p2, "uri"    # Ljava/net/URI;

    .line 56
    const-class v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/client/Client;-><init>(Ljava/net/URI;Ljava/lang/Class;)V

    .line 57
    iput-object p1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 58
    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public deleteParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->deleteParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/ObjectResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/ObjectResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListCheckedFailure(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getParamNames()Lorg/ros/internal/node/response/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Lorg/ros/namespace/GraphName;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 127
    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->getParamNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/StringListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/StringListResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 128
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, "graphNames":Ljava/util/List;, "Ljava/util/List<Lorg/ros/namespace/GraphName;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_21

    .line 132
    :cond_35
    new-instance v2, Lorg/ros/internal/node/response/Response;

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v3

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic getRemoteUri()Ljava/net/URI;
    .registers 2

    .line 43
    invoke-super {p0}, Lorg/ros/internal/node/client/Client;->getRemoteUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public hasParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->hasParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/BooleanResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/BooleanResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public searchParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->searchParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/StringResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/StringResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListCheckedFailure(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 100
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/lang/String;>;"
    new-instance v1, Lorg/ros/internal/node/response/Response;

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v2

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-object v1
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Boolean;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "parameterValue"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 67
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Double;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "parameterValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/Double;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 77
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Integer;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "parameterValue"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/Integer;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 72
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .param p2, "parameterValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 82
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/util/List;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 87
    .local p2, "parameterValue":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 87
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public setParam(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 92
    .local p2, "parameterValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->setParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 92
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public subscribeParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v2}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {v0, v1, v2, v3}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->subscribeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/ObjectResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/ObjectResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "parameterName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/ros/internal/node/client/ParameterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeName:Ljava/lang/String;

    iget-object v2, p0, Lorg/ros/internal/node/client/ParameterClient;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 111
    invoke-virtual {v2}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {v0, v1, v2, v3}, Lorg/ros/internal/node/xmlrpc/ParameterServerXmlRpcEndpoint;->unsubscribeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/IntegerResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/IntegerResultFactory;-><init>()V

    .line 110
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method
