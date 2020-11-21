.class public Lorg/apache/xmlrpc/client/XmlRpcClient;
.super Lorg/apache/xmlrpc/common/XmlRpcController;
.source "XmlRpcClient.java"


# instance fields
.field private config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

.field private transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

.field private xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;-><init>()V

    .line 52
    invoke-static {p0}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcClient;)Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    .line 53
    invoke-static {}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newXmlRpcClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    .line 54
    invoke-static {}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .param p1, "pMethodName"    # Ljava/lang/String;
    .param p2, "pParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pMethodName"    # Ljava/lang/String;
    .param p2, "pParams"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 3
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 158
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 5
    .param p1, "pMethodName"    # Ljava/lang/String;
    .param p2, "pParams"    # Ljava/util/List;
    .param p3, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 204
    return-void
.end method

.method public executeAsync(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 5
    .param p1, "pMethodName"    # Ljava/lang/String;
    .param p2, "pParams"    # [Ljava/lang/Object;
    .param p3, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 179
    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .param p2, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    .line 227
    .local v0, "w":Lorg/apache/xmlrpc/client/XmlRpcClientWorker;
    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 228
    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # Ljava/util/List;
    .param p4, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 217
    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .param p2, "pMethodName"    # Ljava/lang/String;
    .param p3, "pParams"    # [Ljava/lang/Object;
    .param p4, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 193
    return-void
.end method

.method public getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    return-object v0
.end method

.method public getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    return-object v0
.end method

.method protected getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .registers 2

    .line 57
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v0
.end method

.method public getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;
    .registers 2

    .line 116
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    return-object v0
.end method

.method public getXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .registers 2

    .line 236
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method

.method public setConfig(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;)V
    .registers 2
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    .line 71
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    .line 72
    return-void
.end method

.method public setTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    .line 107
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    .line 108
    return-void
.end method

.method public setXmlWriterFactory(Lorg/apache/xmlrpc/serializer/XmlWriterFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 245
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    .line 246
    return-void
.end method
