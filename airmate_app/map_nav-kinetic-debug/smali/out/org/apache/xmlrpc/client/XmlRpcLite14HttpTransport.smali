.class public Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;
.source "XmlRpcLite14HttpTransport.java"


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 2
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 46
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method protected newSocket(ZLjava/lang/String;I)Ljava/net/Socket;
    .registers 6
    .param p1, "pSSL"    # Z
    .param p2, "pHostName"    # Ljava/lang/String;
    .param p3, "pPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    if-eqz p1, :cond_14

    .line 58
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 59
    .local v0, "sslSockFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-nez v0, :cond_f

    .line 60
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 62
    :cond_f
    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    return-object v1

    .line 64
    .end local v0    # "sslSockFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->newSocket(ZLjava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .param p1, "pSSLSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 54
    return-void
.end method
