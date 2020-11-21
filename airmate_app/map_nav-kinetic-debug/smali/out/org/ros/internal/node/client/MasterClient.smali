.class public Lorg/ros/internal/node/client/MasterClient;
.super Lorg/ros/internal/node/client/Client;
.source "MasterClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ros/internal/node/client/Client<",
        "Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 60
    const-class v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/client/Client;-><init>(Ljava/net/URI;Ljava/lang/Class;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getPublishedTopics(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "callerName"    # Lorg/ros/namespace/GraphName;
    .param p2, "subgraph"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ">;>;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    .line 210
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->getPublishedTopics(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/TopicListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/TopicListResultFactory;-><init>()V

    .line 209
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteUri()Ljava/net/URI;
    .registers 2

    .line 50
    invoke-super {p0}, Lorg/ros/internal/node/client/Client;->getRemoteUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getSystemState(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p1, "callerName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Lorg/ros/master/client/SystemState;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->getSystemState(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/SystemStateResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/SystemStateResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getTopicTypes(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p1, "callerName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Lorg/ros/master/client/TopicType;",
            ">;>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->getTopicTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/TopicTypeListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/TopicTypeListResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public getUri(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;
    .registers 4
    .param p1, "slaveName"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->getUri(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/UriResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/UriResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public lookupNode(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "slaveName"    # Lorg/ros/namespace/GraphName;
    .param p2, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->lookupNode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/UriResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/UriResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public lookupService(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;
    .registers 5
    .param p1, "callerName"    # Lorg/ros/namespace/GraphName;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    .line 198
    invoke-virtual {p1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->lookupService(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/UriResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/UriResultFactory;-><init>()V

    .line 197
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListCheckedFailure(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public registerPublisher(Lorg/ros/internal/node/topic/PublisherDeclaration;)Lorg/ros/internal/node/response/Response;
    .registers 8
    .param p1, "publisherDeclaration"    # Lorg/ros/internal/node/topic/PublisherDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/PublisherDeclaration;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherDeclaration;->getSlaveName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "slaveName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherDeclaration;->getSlaveUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "slaveUri":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherDeclaration;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "topicName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherDeclaration;->getTopicMessageType()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "messageType":Ljava/lang/String;
    iget-object v4, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v4, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    .line 145
    invoke-interface {v4, v0, v2, v3, v1}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->registerPublisher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/ros/internal/node/response/UriListResultFactory;

    invoke-direct {v5}, Lorg/ros/internal/node/response/UriListResultFactory;-><init>()V

    .line 144
    invoke-static {v4, v5}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v4

    return-object v4
.end method

.method public registerService(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/node/service/ServiceServer;)Lorg/ros/internal/node/response/Response;
    .registers 8
    .param p1, "slave"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/node/service/ServiceServer<",
            "**>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 74
    .local p2, "service":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p2}, Lorg/ros/node/service/ServiceServer;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/ros/node/service/ServiceServer;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/VoidResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/VoidResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public registerSubscriber(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/node/topic/Subscriber;)Lorg/ros/internal/node/response/Response;
    .registers 8
    .param p1, "slave"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/node/topic/Subscriber<",
            "*>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    .line 110
    .local p2, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/ros/node/topic/Subscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/ros/node/topic/Subscriber;->getTopicMessageType()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-interface {v0, v1, v2, v3, v4}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->registerSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/UriListResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/UriListResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public unregisterPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .param p1, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeName()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "slaveName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "slaveUri":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "topicName":Ljava/lang/String;
    iget-object v3, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v3, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    .line 162
    invoke-interface {v3, v0, v2, v1}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->unregisterPublisher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/ros/internal/node/response/IntegerResultFactory;

    invoke-direct {v4}, Lorg/ros/internal/node/response/IntegerResultFactory;-><init>()V

    .line 161
    invoke-static {v3, v4}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v3

    return-object v3
.end method

.method public unregisterService(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/node/service/ServiceServer;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .param p1, "slave"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/node/service/ServiceServer<",
            "**>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    .local p2, "service":Lorg/ros/node/service/ServiceServer;, "Lorg/ros/node/service/ServiceServer<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    .line 91
    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/ros/node/service/ServiceServer;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/ros/node/service/ServiceServer;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-interface {v0, v1, v2, v3}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->unregisterService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/IntegerResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/IntegerResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method

.method public unregisterSubscriber(Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/node/topic/Subscriber;)Lorg/ros/internal/node/response/Response;
    .registers 7
    .param p1, "slave"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/node/topic/Subscriber<",
            "*>;)",
            "Lorg/ros/internal/node/response/Response<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    .local p2, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/client/MasterClient;->xmlRpcEndpoint:Lorg/ros/internal/node/xmlrpc/XmlRpcEndpoint;

    check-cast v0, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;

    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/ros/node/topic/Subscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/namespace/GraphName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/ros/internal/node/server/NodeIdentifier;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-interface {v0, v1, v2, v3}, Lorg/ros/internal/node/xmlrpc/MasterXmlRpcEndpoint;->unregisterSubscriber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/ros/internal/node/response/IntegerResultFactory;

    invoke-direct {v1}, Lorg/ros/internal/node/response/IntegerResultFactory;-><init>()V

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->fromListChecked(Ljava/util/List;Lorg/ros/internal/node/response/ResultFactory;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    return-object v0
.end method
