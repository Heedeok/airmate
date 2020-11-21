.class public abstract Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.source "XmlRpcHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;
    }
.end annotation


# static fields
.field public static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 67
    const-string v0, "XmlRpcClient.properties"

    .line 68
    .local v0, "p":Ljava/lang/String;
    const-class v1, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;

    const-string v2, "XmlRpcClient.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 69
    .local v1, "url":Ljava/net/URL;
    if-eqz v1, :cond_74

    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_d
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 75
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 76
    .local v3, "props":Ljava/util/Properties;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 77
    const-string v4, "user.agent"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->USER_AGENT:Ljava/lang/String;

    .line 78
    sget-object v4, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->USER_AGENT:Ljava/lang/String;

    if-eqz v4, :cond_3e

    sget-object v4, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_35} :catch_48
    .catchall {:try_start_d .. :try_end_35} :catchall_46

    .line 82
    const/4 v2, 0x0

    .line 86
    .end local v3    # "props":Ljava/util/Properties;
    if-eqz v2, :cond_3d

    :try_start_38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v3

    .line 88
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_3d
    :goto_3d
    return-void

    .line 79
    .restart local v0    # "p":Ljava/lang/String;
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v3    # "props":Ljava/util/Properties;
    :cond_3e
    :try_start_3e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The property user.agent is not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_48
    .catchall {:try_start_3e .. :try_end_46} :catchall_46

    .line 86
    .end local v3    # "props":Ljava/util/Properties;
    :catchall_46
    move-exception v3

    goto :goto_6c

    .line 83
    :catch_48
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    :try_start_49
    new-instance v4, Ljava/lang/reflect/UndeclaredThrowableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v4
    :try_end_6c
    .catchall {:try_start_49 .. :try_end_6c} :catchall_46

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6c
    if-eqz v2, :cond_73

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v4

    .line 87
    :cond_73
    :goto_73
    throw v3

    .line 70
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_74
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to locate resource: XmlRpcClient.properties"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "pClient"    # Lorg/apache/xmlrpc/client/XmlRpcClient;
    .param p2, "pUserAgent"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    .line 95
    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->userAgent:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method protected getUserAgent()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method protected initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 5
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 132
    .local v0, "config":Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 134
    const-string v1, "User-Agent"

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 136
    :cond_1d
    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_26
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setCredentials(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setCompressionHeaders(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V

    .line 139
    return-void
.end method

.method protected isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z
    .registers 3
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 147
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->isContentLengthOptional()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 147
    :goto_10
    return v0
.end method

.method protected newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .registers 5
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 154
    .local v0, "config":Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 155
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;-><init>(Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 156
    .local v1, "reqWriter":Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;
    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->getContentLength()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setContentLength(I)V

    .line 157
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->isCompressingRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 158
    new-instance v2, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;

    invoke-direct {v2, p0, v1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    return-object v2

    .line 160
    :cond_24
    return-object v1

    .line 162
    .end local v1    # "reqWriter":Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;
    :cond_25
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    move-result-object v1

    return-object v1
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .registers 3
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 143
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setCompressionHeaders(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 122
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->isGzipCompressing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_d
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->isGzipRequesting()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 126
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1a
    return-void
.end method

.method protected setContentLength(I)V
    .registers 4
    .param p1, "pLength"    # I

    .line 118
    const-string v0, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected setCredentials(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicUserName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicPassword()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lorg/apache/xmlrpc/util/HttpUtil;->encodeBasicAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_2b

    .line 111
    .local v0, "auth":Ljava/lang/String;
    nop

    .line 110
    nop

    .line 112
    if-eqz v0, :cond_2a

    .line 113
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_2a
    return-void

    .line 109
    .end local v0    # "auth":Ljava/lang/String;
    :catch_2b
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
