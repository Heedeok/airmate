.class public Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.source "XmlRpcSunHttpTransport.java"


# static fields
.field private static final userAgent:Ljava/lang/String;


# instance fields
.field private conn:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Sun HTTP Transport)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;

    .line 45
    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->userAgent:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 78
    .local v0, "c":Ljava/net/URLConnection;
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_e

    .line 79
    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 81
    :cond_e
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 90
    .local v0, "connection":Ljava/net/URLConnection;
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_22

    .line 91
    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 92
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 93
    .local v2, "responseCode":I
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_18

    const/16 v3, 0x12b

    if-gt v2, v3, :cond_18

    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    goto :goto_22

    .line 94
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "responseCode":I
    :cond_18
    new-instance v3, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 97
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v1

    .line 98
    .end local v0    # "connection":Ljava/net/URLConnection;
    :catch_27
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getURLConnection()Ljava/net/URLConnection;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->conn:Ljava/net/URLConnection;

    return-object v0
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 84
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "pURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 7
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 62
    .local v0, "config":Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    :try_start_6
    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getServerURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->conn:Ljava/net/URLConnection;

    .line 63
    .local v1, "c":Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 65
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_21

    .line 68
    .end local v1    # "c":Ljava/net/URLConnection;
    nop

    .line 69
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 66
    :catch_21
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create URLConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pHeader"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 3
    .param p1, "pWriter"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlrpc/XmlRpcException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    .line 105
    return-void
.end method
