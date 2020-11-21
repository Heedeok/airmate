.class public Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;
.source "XmlRpcSunHttpTransportFactory.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .registers 3

    .line 36
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v0
.end method
