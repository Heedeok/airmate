.class public Lorg/apache/xmlrpc/server/XmlRpcServer;
.super Lorg/apache/xmlrpc/common/XmlRpcController;
.source "XmlRpcServer.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;


# instance fields
.field private config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

.field private handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

.field private typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 42
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 5
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcServer;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    .line 84
    .local v0, "factory":Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v1

    .line 86
    .local v1, "worker":Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :try_start_8
    invoke-interface {v1, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 88
    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    .line 86
    return-object v2

    .line 88
    :catchall_10
    move-exception v2

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    .line 89
    throw v2
.end method

.method public getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-object v0
.end method

.method protected getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .registers 2

    .line 45
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;-><init>(Lorg/apache/xmlrpc/server/XmlRpcServer;)V

    return-object v0
.end method

.method public getHandlerMapping()Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    return-object v0
.end method

.method public getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method

.method public setConfig(Lorg/apache/xmlrpc/server/XmlRpcServerConfig;)V
    .registers 2
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    .line 60
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-void
.end method

.method public setHandlerMapping(Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;)V
    .registers 2
    .param p1, "pMapping"    # Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    .line 67
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    .line 68
    return-void
.end method

.method public setTypeConverterFactory(Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 51
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 52
    return-void
.end method
