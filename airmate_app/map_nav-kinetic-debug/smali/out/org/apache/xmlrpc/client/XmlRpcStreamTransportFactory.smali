.class public abstract Lorg/apache/xmlrpc/client/XmlRpcStreamTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;
.source "XmlRpcStreamTransportFactory.java"


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 26
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 27
    return-void
.end method
