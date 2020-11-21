.class public Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;
.super Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.source "XmlRpcClientWorkerFactory.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
    .registers 2

    .line 40
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;)V

    return-object v0
.end method
