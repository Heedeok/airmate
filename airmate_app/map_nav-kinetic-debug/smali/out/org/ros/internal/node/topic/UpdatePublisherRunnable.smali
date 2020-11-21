.class Lorg/ros/internal/node/topic/UpdatePublisherRunnable;
.super Ljava/lang/Object;
.source "UpdatePublisherRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

.field private final publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

.field private final subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "TMessageType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/ros/internal/node/topic/DefaultSubscriber;Lorg/ros/internal/node/server/NodeIdentifier;Lorg/ros/internal/node/topic/PublisherIdentifier;)V
    .registers 4
    .param p2, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p3, "publisherIdentifier"    # Lorg/ros/internal/node/topic/PublisherIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/internal/node/topic/DefaultSubscriber<",
            "TMessageType;>;",
            "Lorg/ros/internal/node/server/NodeIdentifier;",
            "Lorg/ros/internal/node/topic/PublisherIdentifier;",
            ")V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/ros/internal/node/topic/UpdatePublisherRunnable;, "Lorg/ros/internal/node/topic/UpdatePublisherRunnable<TMessageType;>;"
    .local p1, "subscriber":Lorg/ros/internal/node/topic/DefaultSubscriber;, "Lorg/ros/internal/node/topic/DefaultSubscriber<TMessageType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 58
    iput-object p2, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    .line 59
    iput-object p3, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 66
    .local p0, "this":Lorg/ros/internal/node/topic/UpdatePublisherRunnable;, "Lorg/ros/internal/node/topic/UpdatePublisherRunnable<TMessageType;>;"
    :try_start_0
    new-instance v0, Lorg/ros/internal/node/client/SlaveClient;

    iget-object v1, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->nodeIdentifier:Lorg/ros/internal/node/server/NodeIdentifier;

    invoke-virtual {v1}, Lorg/ros/internal/node/server/NodeIdentifier;->getName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v2}, Lorg/ros/internal/node/topic/PublisherIdentifier;->getNodeUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/client/SlaveClient;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 67
    .local v0, "slaveClient":Lorg/ros/internal/node/client/SlaveClient;
    iget-object v1, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    .line 68
    invoke-virtual {v1}, Lorg/ros/internal/node/topic/DefaultSubscriber;->getTopicName()Lorg/ros/namespace/GraphName;

    move-result-object v1

    sget-object v2, Lorg/ros/internal/transport/ProtocolNames;->SUPPORTED:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lorg/ros/internal/node/client/SlaveClient;->requestTopic(Lorg/ros/namespace/GraphName;Ljava/util/Collection;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    .line 71
    .local v1, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Lorg/ros/internal/transport/ProtocolDescription;>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/internal/transport/ProtocolDescription;

    .line 72
    .local v2, "selected":Lorg/ros/internal/transport/ProtocolDescription;
    sget-object v3, Lorg/ros/internal/transport/ProtocolNames;->SUPPORTED:Ljava/util/Collection;

    invoke-virtual {v2}, Lorg/ros/internal/transport/ProtocolDescription;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 73
    iget-object v3, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->subscriber:Lorg/ros/internal/node/topic/DefaultSubscriber;

    iget-object v4, p0, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->publisherIdentifier:Lorg/ros/internal/node/topic/PublisherIdentifier;

    invoke-virtual {v2}, Lorg/ros/internal/transport/ProtocolDescription;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/ros/internal/node/topic/DefaultSubscriber;->addPublisher(Lorg/ros/internal/node/topic/PublisherIdentifier;Ljava/net/InetSocketAddress;)V

    goto :goto_66

    .line 75
    :cond_3b
    sget-object v3, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Publisher returned unsupported protocol selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_51
    .catch Lorg/ros/exception/RemoteException; {:try_start_0 .. :try_end_51} :catch_60
    .catch Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException; {:try_start_0 .. :try_end_51} :catch_59
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_66

    .line 83
    .end local v0    # "slaveClient":Lorg/ros/internal/node/client/SlaveClient;
    .end local v1    # "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Lorg/ros/internal/transport/ProtocolDescription;>;"
    .end local v2    # "selected":Lorg/ros/internal/transport/ProtocolDescription;
    :catch_52
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_67

    .line 80
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_59
    move-exception v0

    .line 82
    .local v0, "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    sget-object v1, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .end local v0    # "e":Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;
    goto :goto_66

    .line 77
    :catch_60
    move-exception v0

    .line 79
    .local v0, "e":Lorg/ros/exception/RemoteException;
    sget-object v1, Lorg/ros/internal/node/topic/UpdatePublisherRunnable;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 90
    .end local v0    # "e":Lorg/ros/exception/RemoteException;
    :goto_66
    nop

    .line 91
    :goto_67
    return-void
.end method
