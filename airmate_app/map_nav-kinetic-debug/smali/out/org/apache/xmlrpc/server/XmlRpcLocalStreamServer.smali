.class public Lorg/apache/xmlrpc/server/XmlRpcLocalStreamServer;
.super Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
.source "XmlRpcLocalStreamServer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessorFactory;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessorFactory;->getXmlRpcServer()Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    move-result-object v0

    .line 32
    .local v0, "server":Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;
    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
