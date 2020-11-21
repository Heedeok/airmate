.class public Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;
.source "XmlRpcSun14HttpTransport.java"


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method protected newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "pURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 61
    .local v0, "conn":Ljava/net/URLConnection;
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 62
    .local v1, "sslSockFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v1, :cond_14

    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_14

    .line 63
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 64
    :cond_14
    return-object v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .param p1, "pSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 49
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 50
    return-void
.end method
