.class public Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;
.super Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.source "XmlRpcServerWorkerFactory.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcServer;)V
    .registers 2
    .param p1, "pServer"    # Lorg/apache/xmlrpc/server/XmlRpcServer;

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
    .registers 2

    .line 36
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;-><init>(Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;)V

    return-object v0
.end method
