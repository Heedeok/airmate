.class public Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.source "XmlRpcCommonsTransport.java"


# static fields
.field private static final MAX_REDIRECT_ATTEMPTS:I = 0x64

.field private static final userAgent:Ljava/lang/String;


# instance fields
.field protected final client:Lorg/apache/commons/httpclient/HttpClient;

.field private config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

.field private contentLength:I

.field protected method:Lorg/apache/commons/httpclient/methods/PostMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Jakarta Commons httpclient Transport)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;)V
    .registers 4
    .param p1, "pFactory"    # Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;

    .line 69
    invoke-virtual {p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->userAgent:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    .line 70
    invoke-virtual {p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->getHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v0

    .line 71
    .local v0, "httpClient":Lorg/apache/commons/httpclient/HttpClient;
    if-nez v0, :cond_16

    .line 72
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->newHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v0

    .line 74
    :cond_16
    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    .line 53
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    .line 53
    iget v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    return v0
.end method

.method private checkStatus(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 5
    .param p1, "pMethod"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;
        }
    .end annotation

    .line 255
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    .line 258
    .local v0, "status":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_d

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_d

    .line 261
    return-void

    .line 259
    :cond_d
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 144
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->checkStatus(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 119
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_b
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_b} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 122
    :catch_c
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error in server communication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catch_28
    move-exception v0

    .line 121
    .local v0, "e":Lorg/apache/commons/httpclient/HttpException;
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in HTTP transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 87
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->newPostMethod(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Lorg/apache/commons/httpclient/methods/PostMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    .line 88
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    .line 90
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 91
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 93
    :cond_2e
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v0

    if-eqz v0, :cond_49

    .line 94
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 96
    :cond_49
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 97
    return-void
.end method

.method protected isRedirectRequired()Z
    .registers 3

    .line 156
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getStatusCode()I

    move-result v0

    const/16 v1, 0x133

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_12

    .line 163
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_f
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x12d
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method protected isResponseGzipCompressed()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 109
    .local v0, "h":Lorg/apache/commons/httpclient/Header;
    if-nez v0, :cond_c

    .line 110
    const/4 v1, 0x0

    return v1

    .line 112
    :cond_c
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 147
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 148
    .local v0, "h":Lorg/apache/commons/httpclient/Header;
    if-nez v0, :cond_c

    .line 149
    const/4 v1, 0x0

    return v1

    .line 151
    :cond_c
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected newHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .registers 2

    .line 82
    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    return-object v0
.end method

.method protected newPostMethod(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Lorg/apache/commons/httpclient/methods/PostMethod;
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    .line 100
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getServerURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected resetClientForRedirect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 171
    .local v0, "locationHeader":Lorg/apache/commons/httpclient/Header;
    if-eqz v0, :cond_3d

    .line 174
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "location":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "redirectUri":Lorg/apache/commons/httpclient/URI;
    const/4 v3, 0x0

    .line 179
    .local v3, "currentUri":Lorg/apache/commons/httpclient/URI;
    :try_start_10
    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->getURI()Lorg/apache/commons/httpclient/URI;

    move-result-object v4

    move-object v3, v4

    .line 180
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "charset":Ljava/lang/String;
    new-instance v5, Lorg/apache/commons/httpclient/URI;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6, v4}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    move-object v2, v5

    .line 182
    iget-object v5, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v5, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V
    :try_end_27
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_10 .. :try_end_27} :catch_32

    .line 185
    .end local v4    # "charset":Ljava/lang/String;
    nop

    .line 188
    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 189
    return-void

    .line 183
    :catch_32
    move-exception v4

    .line 184
    .local v4, "ex":Lorg/apache/commons/httpclient/URIException;
    new-instance v5, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/URIException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 172
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "redirectUri":Lorg/apache/commons/httpclient/URI;
    .end local v3    # "currentUri":Lorg/apache/commons/httpclient/URI;
    .end local v4    # "ex":Lorg/apache/commons/httpclient/URIException;
    :cond_3d
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    const-string v2, "Invalid redirect: Missing location header"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setContentLength(I)V
    .registers 2
    .param p1, "pLength"    # I

    .line 78
    iput p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    .line 79
    return-void
.end method

.method protected setCredentials(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V
    .registers 9
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicUserName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "userName":Ljava/lang/String;
    if-eqz v0, :cond_3e

    .line 130
    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "enc":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 132
    const-string v1, "UTF-8"

    .line 134
    :cond_e
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v2

    const-string v3, "http.protocol.credential-charset"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance v2, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v2, "creds":Lorg/apache/commons/httpclient/Credentials;
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v4, -0x1

    sget-object v5, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v6, v5}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v3, "scope":Lorg/apache/commons/httpclient/auth/AuthScope;
    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 138
    iget-object v4, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setAuthenticationPreemptive(Z)V

    .line 140
    .end local v1    # "enc":Ljava/lang/String;
    .end local v2    # "creds":Lorg/apache/commons/httpclient/Credentials;
    .end local v3    # "scope":Lorg/apache/commons/httpclient/auth/AuthScope;
    :cond_3e
    return-void
.end method

.method protected setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pHeader"    # Ljava/lang/String;
    .param p2, "pValue"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    new-instance v1, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 105
    return-void
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .registers 7
    .param p1, "pWriter"    # Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "redirectAttempts":I
    :goto_b
    :try_start_b
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 228
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->isRedirectRequired()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 229
    nop

    .line 245
    .end local v0    # "redirectAttempts":I
    nop

    .line 246
    return-void

    .line 231
    .restart local v0    # "redirectAttempts":I
    :cond_1b
    add-int/lit8 v1, v0, 0x1

    .local v1, "redirectAttempts":I
    const/16 v2, 0x64

    if-gt v0, v2, :cond_26

    .line 234
    .end local v0    # "redirectAttempts":I
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->resetClientForRedirect()V

    .line 225
    move v0, v1

    goto :goto_b

    .line 232
    :cond_26
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    const-string v2, "Too many redirects."

    invoke-direct {v0, v2}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catch Lorg/apache/xmlrpc/util/XmlRpcIOException; {:try_start_b .. :try_end_2e} :catch_4a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2e} :catch_2e

    .line 243
    .end local v1    # "redirectAttempts":I
    :catch_2e
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error while communicating with HTTP server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4a
    move-exception v0

    .line 237
    .local v0, "e":Lorg/apache/xmlrpc/util/XmlRpcIOException;
    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/XmlRpcIOException;->getLinkedException()Ljava/lang/Throwable;

    move-result-object v1

    .line 238
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v2, :cond_57

    .line 239
    move-object v2, v1

    check-cast v2, Lorg/apache/xmlrpc/XmlRpcException;

    throw v2

    .line 241
    :cond_57
    new-instance v2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
