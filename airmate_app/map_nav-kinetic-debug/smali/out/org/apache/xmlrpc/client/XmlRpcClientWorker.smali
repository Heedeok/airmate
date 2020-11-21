.class public Lorg/apache/xmlrpc/client/XmlRpcClientWorker;
.super Ljava/lang/Object;
.source "XmlRpcClientWorker.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcWorker;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;)V
    .registers 2
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;)Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    .line 32
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    return-object v0
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

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 56
    .local v0, "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;->getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_18

    .line 58
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v2, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    .line 56
    return-object v1

    .line 58
    .end local v0    # "client":Lorg/apache/xmlrpc/client/XmlRpcClient;
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v1, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    .line 59
    throw v0
.end method

.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .registers 5
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .param p2, "pCallback"    # Lorg/apache/xmlrpc/client/AsyncCallback;

    .line 74
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 92
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .registers 2

    .line 44
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    return-object v0
.end method

.method protected newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .local v0, "result":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 65
    return-object v0
.end method
