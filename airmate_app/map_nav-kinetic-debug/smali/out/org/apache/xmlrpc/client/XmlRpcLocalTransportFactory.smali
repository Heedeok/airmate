.class public Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;
.source "XmlRpcLocalTransportFactory.java"


# instance fields
.field private final LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 4
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 38
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;

    .line 36
    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;

    return-object v0
.end method
