.class public Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;
.source "XmlRpcCommonsTransportFactory.java"


# instance fields
.field private httpClient:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    return-object v0
.end method

.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .registers 2

    .line 38
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;)V

    return-object v0
.end method

.method public setHttpClient(Lorg/apache/commons/httpclient/HttpClient;)V
    .registers 2
    .param p1, "pHttpClient"    # Lorg/apache/commons/httpclient/HttpClient;

    .line 51
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 52
    return-void
.end method
