.class public Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;
.super Ljava/lang/Object;
.source "SlaveXmlRpcEndpointImpl.java"

# interfaces
.implements Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpoint;


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final slave:Lorg/ros/internal/node/server/SlaveServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/server/SlaveServer;)V
    .registers 2
    .param p1, "slave"    # Lorg/ros/internal/node/server/SlaveServer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    .line 54
    return-void
.end method

.method private parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ros/internal/node/server/SlaveServer;->paramUpdate(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 112
    const-string v0, "Success"

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No subscribers for parameter key \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    .line 114
    return-object v0
.end method


# virtual methods
.method public getBusInfo(Ljava/lang/String;)Ljava/util/List;
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

    .line 63
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/server/SlaveServer;->getBusInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "busInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v1, "bus info"

    invoke-static {v1, v0}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getBusStats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    .line 58
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/server/SlaveServer;->getBusStats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMasterUri(Ljava/lang/String;)Ljava/util/List;
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

    .line 69
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getMasterUri()Ljava/net/URI;

    move-result-object v0

    .line 70
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lorg/ros/internal/node/response/Response;

    sget-object v2, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    const-string v3, ""

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/ros/internal/node/response/Response;-><init>(Lorg/ros/internal/node/response/StatusCode;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPid(Ljava/lang/String;)Ljava/util/List;
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

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getPid()I

    move-result v0

    .line 84
    .local v0, "pid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    .line 85
    .end local v0    # "pid":I
    :catch_24
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "Cannot retrieve PID on this platform."

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ros/internal/node/response/Response;->newFailure(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPublications(Ljava/lang/String;)Ljava/util/List;
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

    .line 102
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getPublications()Ljava/util/Collection;

    move-result-object v0

    .line 103
    .local v0, "publishers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/DefaultPublisher<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, "publications":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/topic/DefaultPublisher;

    .line 105
    .local v3, "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    invoke-virtual {v3}, Lorg/ros/internal/node/topic/DefaultPublisher;->getTopicDeclarationAsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "publisher":Lorg/ros/internal/node/topic/DefaultPublisher;, "Lorg/ros/internal/node/topic/DefaultPublisher<*>;"
    goto :goto_e

    .line 107
    :cond_22
    const-string v2, "Success"

    invoke-static {v2, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getSubscriptions(Ljava/lang/String;)Ljava/util/List;
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

    .line 92
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->getSubscriptions()Ljava/util/Collection;

    move-result-object v0

    .line 93
    .local v0, "subscribers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ros/internal/node/topic/DefaultSubscriber<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    .local v1, "subscriptions":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 95
    .local v3, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    invoke-virtual {v3}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicDeclarationAsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<*>;"
    goto :goto_e

    .line 97
    :cond_22
    const-string v2, "Success"

    invoke-static {v2, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;B)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;C)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;D)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
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

    .line 150
    invoke-direct {p0, p2, p3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    .line 155
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0, p2, p3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 5
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

    .line 165
    .local p3, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0, p2, p3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 160
    .local p3, "value":Ljava/util/Vector;, "Ljava/util/Vector<*>;"
    invoke-direct {p0, p2, p3}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;S)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public paramUpdate(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->parameterUpdate(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public publisherUpdate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .registers 12
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topicName"    # Ljava/lang/String;
    .param p3, "publishers"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v1, "publisherUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URI;>;"
    array-length v2, p3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_43

    aget-object v4, p3, v3

    .line 173
    .local v4, "publisher":Ljava/lang/Object;
    new-instance v5, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 175
    const-string v2, "Unknown URI scheme sent in update."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 177
    :cond_3d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v4    # "publisher":Ljava/lang/Object;
    .end local v5    # "uri":Ljava/net/URI;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 179
    :cond_43
    iget-object v2, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v2, p1, p2, v1}, Lorg/ros/internal/node/server/SlaveServer;->publisherUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 180
    const-string v2, "Publisher update received."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2
    :try_end_56
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_56} :catch_57

    return-object v2

    .line 181
    .end local v1    # "publisherUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/URI;>;"
    :catch_57
    move-exception v1

    .line 182
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "Invalid URI sent in update."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public requestTopic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 189
    .local v0, "requestedProtocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p3

    if-ge v2, v3, :cond_17

    .line 190
    aget-object v3, p3, v2

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 194
    .end local v2    # "i":I
    :cond_17
    :try_start_17
    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v1, p2, v0}, Lorg/ros/internal/node/server/SlaveServer;->requestTopic(Ljava/lang/String;Ljava/util/Collection;)Lorg/ros/internal/transport/ProtocolDescription;

    move-result-object v1
    :try_end_1d
    .catch Lorg/ros/internal/node/server/ServerException; {:try_start_17 .. :try_end_1d} :catch_30

    .line 197
    .local v1, "protocol":Lorg/ros/internal/transport/ProtocolDescription;
    nop

    .line 196
    nop

    .line 198
    invoke-virtual {v1}, Lorg/ros/internal/transport/ProtocolDescription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/ros/internal/transport/ProtocolDescription;->toList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    return-object v2

    .line 195
    .end local v1    # "protocol":Lorg/ros/internal/transport/ProtocolDescription;
    .end local v2    # "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_30
    move-exception v1

    .line 196
    .local v1, "e":Lorg/ros/internal/node/server/ServerException;
    invoke-virtual {v1}, Lorg/ros/internal/node/server/ServerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/ros/internal/node/response/Response;->newError(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
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

    .line 75
    sget-object v0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutdown requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with message \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/SlaveXmlRpcEndpointImpl;->slave:Lorg/ros/internal/node/server/SlaveServer;

    invoke-virtual {v0}, Lorg/ros/internal/node/server/SlaveServer;->shutdown()V

    .line 77
    const-string v0, "Shutdown successful."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ros/internal/node/response/Response;->newSuccess(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
