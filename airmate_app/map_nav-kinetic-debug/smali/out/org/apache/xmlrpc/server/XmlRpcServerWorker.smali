.class public Lorg/apache/xmlrpc/server/XmlRpcServerWorker;
.super Ljava/lang/Object;
.source "XmlRpcServerWorker.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcWorker;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 6
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/server/XmlRpcServer;

    .line 44
    .local v0, "server":Lorg/apache/xmlrpc/server/XmlRpcServer;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcServer;->getHandlerMapping()Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    move-result-object v1

    .line 45
    .local v1, "mapping":Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v2

    .line 46
    .local v2, "handler":Lorg/apache/xmlrpc/XmlRpcHandler;
    invoke-interface {v2, p1}, Lorg/apache/xmlrpc/XmlRpcHandler;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    return-object v0
.end method
