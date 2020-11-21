.class public Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;
.source "XmlRpcSun15HttpTransport.java"


# instance fields
.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 6
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 65
    .local v0, "config":Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result v1

    .line 66
    .local v1, "connectionTimeout":I
    if-lez v1, :cond_13

    .line 67
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 69
    :cond_13
    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v2

    .line 70
    .local v2, "replyTimeout":I
    if-lez v2, :cond_20

    .line 71
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 73
    :cond_20
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;->initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 74
    return-void
.end method

.method protected newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 6
    .param p1, "pURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 78
    .local v0, "prox":Ljava/net/Proxy;
    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 79
    .local v1, "conn":Ljava/net/URLConnection;
    :goto_f
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 80
    .local v2, "sslSockFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v2, :cond_1f

    instance-of v3, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1f

    .line 81
    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 83
    :cond_1f
    return-object v1
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .registers 2
    .param p1, "pProxy"    # Ljava/net/Proxy;

    .line 52
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->proxy:Ljava/net/Proxy;

    .line 53
    return-void
.end method
