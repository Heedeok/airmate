.class public Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransportFactory;
.source "XmlRpcLite14HttpTransportFactory.java"


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 43
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .registers 3

    .line 54
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 55
    .local v0, "transport":Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 56
    return-object v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .param p1, "pSSLSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 50
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 51
    return-void
.end method
