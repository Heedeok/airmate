.class public Lorg/ros/master/client/MasterStateClient;
.super Ljava/lang/Object;
.source "MasterStateClient.java"


# instance fields
.field private final caller:Lorg/ros/node/Node;

.field private final masterClient:Lorg/ros/internal/node/client/MasterClient;


# direct methods
.method public constructor <init>(Lorg/ros/node/Node;Ljava/net/URI;)V
    .registers 4
    .param p1, "caller"    # Lorg/ros/node/Node;
    .param p2, "masterUri"    # Ljava/net/URI;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    .line 48
    new-instance v0, Lorg/ros/internal/node/client/MasterClient;

    invoke-direct {v0, p2}, Lorg/ros/internal/node/client/MasterClient;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    .line 49
    return-void
.end method


# virtual methods
.method public getPublishedTopics(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "subgraph"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/ros/internal/node/topic/TopicDeclaration;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSystemState()Lorg/ros/master/client/SystemState;
    .registers 3

    .line 101
    iget-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    invoke-interface {v1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/MasterClient;->getSystemState(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 102
    .local v0, "result":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Lorg/ros/master/client/SystemState;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ros/master/client/SystemState;

    return-object v1
.end method

.method public getTopicTypes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/master/client/TopicType;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    invoke-interface {v1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/MasterClient;->getTopicTypes(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 94
    .local v0, "result":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/util/List<Lorg/ros/master/client/TopicType;>;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getUri()Ljava/net/URI;
    .registers 3

    .line 65
    iget-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    invoke-interface {v1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/internal/node/client/MasterClient;->getUri(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 66
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/net/URI;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    return-object v1
.end method

.method public lookupNode(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    invoke-interface {v1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/ros/internal/node/client/MasterClient;->lookupNode(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 58
    .local v0, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/net/URI;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    return-object v1
.end method

.method public lookupService(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lorg/ros/master/client/MasterStateClient;->masterClient:Lorg/ros/internal/node/client/MasterClient;

    iget-object v1, p0, Lorg/ros/master/client/MasterStateClient;->caller:Lorg/ros/node/Node;

    invoke-interface {v1}, Lorg/ros/node/Node;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/ros/internal/node/client/MasterClient;->lookupService(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    .line 76
    .local v0, "result":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/net/URI;>;"
    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    return-object v1
.end method
