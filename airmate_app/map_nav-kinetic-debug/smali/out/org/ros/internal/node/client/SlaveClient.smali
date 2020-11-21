.class public Lorg/ros/internal/node/client/SlaveClient;
.super Lorg/ros/internal/node/client/Client;
.source "SlaveClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/internal/node/client/Client<",
        "Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final nodeName:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V
    .registers 4
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "uri"    # Ljava/net/URI;

    .line 45
    const-class v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/client/Client;-><init>(Ljava/net/URI;Ljava/lang/Class;)V

    .line 46
    iput-object p1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    .line 47
    return-void
.end method


# virtual methods
.method public getBusInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBusStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMasterUri()Lorg/ros/internal/node/response/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->getMasterUri(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/UriResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/UriResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getPid()Lorg/ros/internal/node/response/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->getPid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/IntegerResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/IntegerResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getPublications()Lorg/ros/internal/node/response/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->getPublications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/TopicListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/TopicListResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteUri()Ljava/net/URI;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/ros/internal/node/client/Client;->getRemoteUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions()Lorg/ros/internal/node/response/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->getSubscriptions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/TopicListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/TopicListResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;C)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "C)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;C)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;D)Lorg/ros/internal/node/response/Response;
    .registers 7
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "D)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;D)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;I)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "I)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/String;
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

    .line 100
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;Ljava/util/List;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
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

    .line 105
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
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

    .line 110
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Lorg/ros/namespace/GraphName;Z)Lorg/ros/internal/node/response/Response;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Z)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->paramUpdate(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public publisherUpdate(Lorg/ros/namespace/GraphName;Ljava/util/Collection;)Lorg/ros/internal/node/response/Response;
    .registers 8
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Collection<",
            "Ljava/net/URI;",
            ">;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 115
    .local p2, "publisherUris":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URI;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    .local v0, "publishers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URI;

    .line 117
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "uri":Ljava/net/URI;
    goto :goto_8

    .line 119
    :cond_1c
    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v1, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v2, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    .line 120
    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->publisherUpdate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v2}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    .line 119
    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    return-object v1
.end method

.method public requestTopic(Lorg/ros/namespace/GraphName;Ljava/util/Collection;)Lorg/ros/internal/node/response/Response;
    .registers 9
    .param p1, "topic"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/ros/internal/node/response/Response<",
            "Lorg/ros/internal/transport/ProtocolDescription;",
            ">;"
        }
    .end annotation

    .line 126
    .local p2, "requestedProtocols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    iget-object v1, p0, Lorg/ros/internal/node/client/SlaveClient;->nodeName:Lorg/ros/namespace/GraphName;

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [[Ljava/lang/Object;

    .line 127
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 126
    invoke-interface {v0, v1, v2, v3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->requestTopic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/ProtocolDescriptionResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/ProtocolDescriptionResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public shutdown(Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/ros/internal/node/client/SlaveClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;

    const-string v1, "/master"

    invoke-interface {v0, v1, p1}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;->shutdown(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method
