.class Lorg/apache/commons/httpclient/HttpMethodDirector;
.super Ljava/lang/Object;
.source "HttpMethodDirector.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PROXY_AUTH_CHALLENGE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field public static final WWW_AUTH_CHALLENGE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"

.field static synthetic class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;


# instance fields
.field private authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

.field private conn:Lorg/apache/commons/httpclient/HttpConnection;

.field private connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

.field private connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private redirectLocations:Ljava/util/Set;

.field private releaseConnection:Z

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HttpMethodDirector"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V
    .registers 7
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;
    .param p2, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p3, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;
    .param p4, "state"    # Lorg/apache/commons/httpclient/HttpState;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 97
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    .line 106
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 107
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 108
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 109
    iput-object p4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 110
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 111
    return-void
.end method

.method private applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 6
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "timeout":I
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    .local v1, "param":Ljava/lang/Object;
    if-nez v1, :cond_19

    .line 350
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 352
    :cond_19
    if-eqz v1, :cond_22

    .line 353
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    :cond_22
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 356
    return-void
.end method

.method private authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 5
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-nez v0, :cond_13

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 234
    :cond_13
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_16
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_16} :catch_17

    .line 237
    goto :goto_21

    .line 235
    :catch_17
    move-exception v0

    .line 236
    .local v0, "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 238
    .end local v0    # "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    :goto_21
    return-void
.end method

.method private authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 12
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 258
    const-string v0, "Authorization"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 260
    return-void

    .line 262
    :cond_9
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 263
    .local v0, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    .line 264
    .local v1, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    if-nez v1, :cond_14

    .line 265
    return-void

    .line 267
    :cond_14
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 268
    :cond_20
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "host":Ljava/lang/String;
    if-nez v2, :cond_30

    .line 270
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_30
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v3

    .line 273
    .local v3, "port":I
    new-instance v4, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v3, v5, v6}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v4, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 278
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Authenticating with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 280
    :cond_61
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v5, v4}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    .line 281
    .local v5, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-eqz v5, :cond_7b

    .line 282
    invoke-interface {v1, v5, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "authstring":Ljava/lang/String;
    if-eqz v6, :cond_7a

    .line 284
    new-instance v7, Lorg/apache/commons/httpclient/Header;

    const-string v8, "Authorization"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v7}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 286
    .end local v6    # "authstring":Ljava/lang/String;
    :cond_7a
    goto :goto_aa

    .line 287
    :cond_7b
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 288
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Required credentials not available for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 289
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 290
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v7, "Preemptive authentication requested but no default credentials available"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 296
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v5    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_aa
    :goto_aa
    return-void
.end method

.method private authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 10
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 301
    const-string v0, "Proxy-Authorization"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 303
    return-void

    .line 305
    :cond_9
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 306
    .local v0, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    .line 307
    .local v1, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    if-nez v1, :cond_14

    .line 308
    return-void

    .line 310
    :cond_14
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 311
    :cond_20
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v4

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v2, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 316
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Authenticating with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_57
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3, v2}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 319
    .local v3, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-eqz v3, :cond_71

    .line 320
    invoke-interface {v1, v3, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "authstring":Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 322
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    const-string v6, "Proxy-Authorization"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 324
    .end local v4    # "authstring":Ljava/lang/String;
    :cond_70
    goto :goto_a0

    .line 325
    :cond_71
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 326
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Required proxy credentials not available for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 327
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 328
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Preemptive authentication requested but no default proxy credentials available"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 334
    .end local v2    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_a0
    :goto_a0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z
    .registers 8
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 242
    invoke-interface {p1, p2}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 243
    .local v0, "authheaders":[Lorg/apache/commons/httpclient/Header;
    const/4 v1, 0x1

    .line 244
    .local v1, "clean":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 245
    aget-object v3, v0, v2

    .line 246
    .local v3, "authheader":Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 247
    invoke-interface {p1, v3}, Lorg/apache/commons/httpclient/HttpMethod;->removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_16

    .line 249
    :cond_15
    const/4 v1, 0x0

    .line 244
    .end local v3    # "authheader":Lorg/apache/commons/httpclient/Header;
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 252
    .end local v2    # "i":I
    :cond_19
    return v1
.end method

.method private executeConnect()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 476
    new-instance v0, Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 477
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 481
    :goto_18
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_25

    .line 482
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 484
    :cond_25
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_36

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 486
    :cond_36
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Preemptively sending default basic credentials"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 488
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 491
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_54
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_4f .. :try_end_54} :catch_55

    .line 494
    goto :goto_5f

    .line 492
    :catch_55
    move-exception v0

    .line 493
    .local v0, "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 495
    .end local v0    # "e":Lorg/apache/commons/httpclient/auth/AuthenticationException;
    :goto_5f
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 496
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/httpclient/ConnectMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I

    .line 497
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v0

    .line 498
    .local v0, "code":I
    const/4 v2, 0x0

    .line 499
    .local v2, "retry":Z
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    .line 500
    .local v3, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const/16 v4, 0x197

    const/4 v5, 0x0

    if-ne v0, v4, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x0

    :goto_82
    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 501
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 502
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 503
    const/4 v2, 0x1

    .line 506
    :cond_94
    if-nez v2, :cond_ae

    .line 507
    nop

    .line 513
    .end local v2    # "retry":Z
    .end local v3    # "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_a8

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_a8

    .line 514
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->tunnelCreated()V

    .line 516
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 517
    return v1

    .line 519
    :cond_a8
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 520
    return v5

    .line 509
    .restart local v2    # "retry":Z
    .restart local v3    # "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    :cond_ae
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 510
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 512
    .end local v2    # "retry":Z
    .end local v3    # "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    :cond_bf
    goto/16 :goto_18
.end method

.method private executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 12
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    .line 375
    .local v0, "execCount":I
    :goto_1
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 378
    :try_start_3
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 379
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempt number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " to process request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 381
    :cond_26
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 382
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->closeIfStale()Z

    .line 384
    :cond_37
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 387
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 388
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_5f

    instance-of v2, p1, Lorg/apache/commons/httpclient/ConnectMethod;

    if-nez v2, :cond_5f

    .line 391
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeConnect()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 393
    return-void

    .line 397
    :cond_5f
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 398
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    :try_end_69
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_3 .. :try_end_69} :catch_11a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_69} :catch_6f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_69} :catch_6c

    .line 399
    nop

    .line 462
    nop

    .line 463
    return-void

    .line 455
    :catch_6c
    move-exception v2

    goto/16 :goto_11c

    .line 403
    :catch_6f
    move-exception v2

    move-object v8, v2

    .line 404
    .local v8, "e":Ljava/io/IOException;
    :try_start_71
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 405
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 410
    instance-of v2, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v2, :cond_ac

    .line 411
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;

    move-result-object v2

    move-object v9, v2

    .line 413
    .local v9, "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    if-eqz v9, :cond_ac

    .line 414
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    new-instance v5, Lorg/apache/commons/httpclient/HttpRecoverableException;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/apache/commons/httpclient/HttpRecoverableException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v7

    move-object v2, v9

    move-object v3, p1

    move v6, v0

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/httpclient/MethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpRecoverableException;IZ)Z

    move-result v2

    if-eqz v2, :cond_a4

    .end local v9    # "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    goto :goto_ac

    .line 420
    .restart local v9    # "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    :cond_a4
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 422
    throw v8

    .line 427
    .end local v9    # "handler":Lorg/apache/commons/httpclient/MethodRetryHandler;
    :cond_ac
    :goto_ac
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.method.retry-handler"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;

    .line 430
    .local v2, "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    if-nez v2, :cond_c0

    .line 431
    new-instance v3, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v3}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    move-object v2, v3

    .line 433
    :cond_c0
    invoke-interface {v2, p1, v8, v0}, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 438
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 439
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ") caught when processing request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 442
    :cond_f8
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 443
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 445
    :cond_109
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Retrying request"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 446
    .end local v2    # "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    .end local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 434
    .restart local v2    # "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    .restart local v8    # "e":Ljava/io/IOException;
    :cond_112
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 436
    throw v8

    .line 400
    .end local v2    # "handler":Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    .end local v8    # "e":Ljava/io/IOException;
    :catch_11a
    move-exception v2

    .line 402
    .local v2, "e":Lorg/apache/commons/httpclient/HttpException;
    throw v2
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_11c} :catch_134
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_11c} :catch_6c

    .line 455
    .end local v2    # "e":Lorg/apache/commons/httpclient/HttpException;
    :goto_11c
    nop

    .line 456
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_131

    .line 457
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Closing the connection."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 458
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 460
    :cond_131
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 461
    throw v2

    .line 448
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_134
    move-exception v2

    .line 449
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 450
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Closing the connection."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 453
    :cond_149
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 454
    throw v2
.end method

.method private fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 6
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 542
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "CONNECT failed, fake the response for the original method"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 550
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v0, :cond_38

    .line 551
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->fakeResponse(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V

    .line 556
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    goto :goto_42

    .line 560
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 561
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to fake response on method as it is not derived from HttpMethodBase."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 564
    :goto_42
    return-void
.end method

.method private isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 7
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .line 837
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x191

    if-ne v1, v4, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 839
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    const/16 v4, 0x197

    if-ne v1, v4, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 841
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3c

    .line 852
    :cond_3b
    return v3

    .line 843
    :cond_3c
    :goto_3c
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Authorization required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 844
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getDoAuthentication()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 845
    return v2

    .line 847
    :cond_4a
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Authentication requested but doAuthentication is disabled"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 849
    return v3
.end method

.method private isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 5
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .line 813
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v1, 0x133

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    packed-switch v0, :pswitch_data_1e

    .line 825
    return v2

    .line 818
    :cond_d
    :pswitch_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Redirect required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 819
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getFollowRedirects()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 820
    const/4 v0, 0x1

    return v0

    .line 822
    :cond_1c
    return v2

    nop

    :pswitch_data_1e
    .packed-switch 0x12d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 6
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;

    .line 662
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpMethodBase.processAuthenticationResponse(HttpState, HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 666
    const/4 v0, 0x0

    :try_start_8
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x197

    if-eq v1, v2, :cond_15

    .line 672
    return v0

    .line 670
    :cond_15
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v1

    return v1

    .line 668
    :cond_1a
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    return v1

    .line 674
    :catch_1f
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 676
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 678
    :cond_31
    return v0
.end method

.method private processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 11
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 749
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 750
    .local v0, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v1, "Proxy-Authenticate"

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v1

    .line 752
    .local v1, "proxyChallenges":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 753
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy authentication challenge(s) not found"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 754
    return v3

    .line 756
    :cond_1d
    const/4 v2, 0x0

    .line 758
    .local v2, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_1e
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v4
    :try_end_24
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_1e .. :try_end_24} :catch_26

    move-object v2, v4

    .line 763
    goto :goto_38

    .line 759
    :catch_26
    move-exception v4

    .line 760
    .local v4, "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 761
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 764
    .end local v4    # "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    :cond_38
    :goto_38
    if-nez v2, :cond_3b

    .line 765
    return v3

    .line 767
    :cond_3b
    new-instance v4, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v6

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v4, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 773
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Proxy authentication scope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 775
    :cond_72
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a9

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 777
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    invoke-direct {p0, v2, v5, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    .line 779
    .local v5, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v5, :cond_a8

    .line 780
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 781
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Failure authenticating with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 783
    :cond_a7
    return v3

    .line 785
    :cond_a8
    return v6

    .line 788
    .end local v5    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_a9
    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 789
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v5, v4}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    .line 790
    .restart local v5    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v5, :cond_bc

    .line 791
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    invoke-direct {p0, v2, v7, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v5

    .line 794
    :cond_bc
    if-nez v5, :cond_dd

    .line 795
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 796
    sget-object v6, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "No credentials available for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 798
    :cond_dc
    return v3

    .line 800
    :cond_dd
    return v6
.end method

.method private processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 15
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/RedirectException;
        }
    .end annotation

    .line 574
    const-string v0, "location"

    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 575
    .local v0, "locationHeader":Lorg/apache/commons/httpclient/Header;
    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 577
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Received redirect response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " but no location header"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 579
    return v1

    .line 581
    :cond_29
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "location":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 583
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Redirect requested to location \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_50
    const/4 v3, 0x0

    .line 589
    .local v3, "redirectUri":Lorg/apache/commons/httpclient/URI;
    const/4 v4, 0x0

    move-object v5, v4

    .line 592
    .local v5, "currentUri":Lorg/apache/commons/httpclient/URI;
    :try_start_53
    new-instance v12, Lorg/apache/commons/httpclient/URI;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v9

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v10

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v12

    .line 600
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, "charset":Ljava/lang/String;
    new-instance v7, Lorg/apache/commons/httpclient/URI;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8, v6}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    move-object v3, v7

    .line 603
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/URI;->isRelativeURI()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 604
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v9, "http.protocol.reject-relative-redirect"

    invoke-virtual {v7, v9}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 605
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Relative redirect location \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\' not allowed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 606
    return v1

    .line 609
    :cond_b0
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v9, "Redirect URI is not absolute - parsing as relative"

    invoke-interface {v7, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 610
    new-instance v7, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v7, v5, v3}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    move-object v3, v7

    goto :goto_c7

    .line 614
    :cond_be
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    iget-object v9, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v7, v9}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 616
    :goto_c7
    invoke-interface {p1, v3}, Lorg/apache/commons/httpclient/HttpMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V

    .line 617
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v7, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V
    :try_end_cf
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_53 .. :try_end_cf} :catch_151

    .line 621
    .end local v6    # "charset":Ljava/lang/String;
    nop

    .line 623
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v7, "http.protocol.allow-circular-redirects"

    invoke-virtual {v6, v7}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 624
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    if-nez v6, :cond_e5

    .line 625
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    .line 627
    :cond_e5
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    :try_start_ea
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/URI;->hasQuery()Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 630
    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/URI;->setQuery(Ljava/lang/String;)V
    :try_end_f3
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_ea .. :try_end_f3} :catch_119

    .line 635
    :cond_f3
    nop

    .line 637
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    goto :goto_11b

    .line 638
    :cond_fd
    new-instance v1, Lorg/apache/commons/httpclient/CircularRedirectException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Circular redirect to \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/commons/httpclient/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :catch_119
    move-exception v4

    .line 634
    .local v4, "e":Lorg/apache/commons/httpclient/URIException;
    return v1

    .line 643
    .end local v4    # "e":Lorg/apache/commons/httpclient/URIException;
    :cond_11b
    :goto_11b
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_149

    .line 644
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Redirecting from \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\' to \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 648
    :cond_149
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 649
    return v8

    .line 618
    :catch_151
    move-exception v1

    .line 619
    .local v1, "ex":Lorg/apache/commons/httpclient/URIException;
    new-instance v4, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid redirect location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2, v1}, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 13
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 685
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 686
    .local v0, "authstate":Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v1, "WWW-Authenticate"

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v1

    .line 688
    .local v1, "challenges":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 689
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Authentication challenge(s) not found"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 690
    return v3

    .line 692
    :cond_1d
    const/4 v2, 0x0

    .line 694
    .local v2, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_1e
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v4
    :try_end_24
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_1e .. :try_end_24} :catch_26

    move-object v2, v4

    .line 699
    goto :goto_38

    .line 695
    :catch_26
    move-exception v4

    .line 696
    .local v4, "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 697
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 700
    .end local v4    # "e":Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    :cond_38
    :goto_38
    if-nez v2, :cond_3b

    .line 701
    return v3

    .line 703
    :cond_3b
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "host":Ljava/lang/String;
    if-nez v4, :cond_4b

    .line 705
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 707
    :cond_4b
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v5

    .line 708
    .local v5, "port":I
    new-instance v6, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v4, v5, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v6, "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 714
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Authentication scope: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 716
    :cond_7c
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_b3

    invoke-interface {v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 718
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    invoke-direct {p0, v2, v7, v6}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v7

    .line 720
    .local v7, "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v7, :cond_b2

    .line 721
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 722
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Failure authenticating with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 724
    :cond_b1
    return v3

    .line 726
    :cond_b2
    return v8

    .line 729
    .end local v7    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_b3
    invoke-virtual {v0, v8}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 730
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v7, v6}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v7

    .line 731
    .restart local v7    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    if-nez v7, :cond_c6

    .line 732
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v9

    invoke-direct {p0, v2, v9, v6}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v7

    .line 735
    :cond_c6
    if-nez v7, :cond_e7

    .line 736
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 737
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "No credentials available for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 739
    :cond_e6
    return v3

    .line 741
    :cond_e7
    return v8
.end method

.method private promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 9
    .param p1, "authScheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p2, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;
    .param p3, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 861
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Credentials required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "creds":Lorg/apache/commons/httpclient/Credentials;
    const-string v1, "http.authentication.credential-provider"

    invoke-interface {p2, v1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 865
    .local v1, "credProvider":Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v1, :cond_51

    .line 867
    :try_start_12
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2
    :try_end_1f
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_12 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 871
    goto :goto_2b

    .line 869
    :catch_21
    move-exception v2

    .line 870
    .local v2, "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 872
    .end local v2    # "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :goto_2b
    if-eqz v0, :cond_58

    .line 873
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v2, p3, v0}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 874
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 875
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " new credentials given"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_58

    .line 879
    :cond_51
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Credentials provider not available"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 881
    :cond_58
    :goto_58
    return-object v0
.end method

.method private promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 9
    .param p1, "authScheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p2, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;
    .param p3, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 889
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Proxy credentials required"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "creds":Lorg/apache/commons/httpclient/Credentials;
    const-string v1, "http.authentication.credential-provider"

    invoke-interface {p2, v1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 893
    .local v1, "credProvider":Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v1, :cond_51

    .line 895
    :try_start_12
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, p1, v2, v3, v4}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2
    :try_end_1f
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_12 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 899
    goto :goto_2b

    .line 897
    :catch_21
    move-exception v2

    .line 898
    .local v2, "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 900
    .end local v2    # "e":Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :goto_2b
    if-eqz v0, :cond_58

    .line 901
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v2, p3, v0}, Lorg/apache/commons/httpclient/HttpState;->setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 902
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 903
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " new credentials given"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_58

    .line 907
    :cond_51
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Proxy credentials provider not available"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 909
    :cond_58
    :goto_58
    return-object v0
.end method


# virtual methods
.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 10
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_18d

    .line 126
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HostParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 127
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 130
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    const-string v1, "http.default-headers"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HostParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 132
    .local v0, "defaults":Ljava/util/Collection;
    if-eqz v0, :cond_3e

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, "i":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Header;

    invoke-interface {p1, v2}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_2e

    .line 140
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_3e
    const/4 v1, 0x0

    :try_start_3f
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    .line 142
    .local v2, "maxRedirects":I
    const/4 v3, 0x0

    .line 145
    .local v3, "redirectCount":I
    :goto_4a
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v4, :cond_65

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 146
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 147
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 148
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    .line 152
    :cond_65
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v4, :cond_c2

    .line 153
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerTimeout()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    .line 157
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 158
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v4

    if-nez v4, :cond_8f

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 161
    :cond_8f
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Preemptively sending default basic credentials"

    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 163
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 164
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v4

    if-eqz v4, :cond_c2

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v4

    if-nez v4, :cond_c2

    .line 165
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 166
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 170
    :cond_c2
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 171
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 172
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    if-eqz v4, :cond_d0

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 174
    goto :goto_143

    .line 177
    :cond_d0
    const/4 v4, 0x0

    .line 178
    .local v4, "retry":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 180
    const/4 v4, 0x1

    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 182
    if-ge v3, v2, :cond_109

    .line 187
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 188
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Execute redirect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_12c

    .line 183
    :cond_109
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Narrowly avoided an infinite loop in execute"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 184
    new-instance v5, Lorg/apache/commons/httpclient/RedirectException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Maximum redirects ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, ") exceeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 192
    :cond_12c
    :goto_12c
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 193
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_140

    .line 194
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Retry authentication"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_13f
    .catchall {:try_start_3f .. :try_end_13f} :catchall_16f

    .line 195
    const/4 v4, 0x1

    .line 198
    :cond_140
    if-nez v4, :cond_160

    .line 199
    nop

    .line 210
    .end local v2    # "maxRedirects":I
    .end local v3    # "redirectCount":I
    .end local v4    # "retry":Z
    :goto_143
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v2, :cond_14c

    .line 211
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_14c
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v1, :cond_156

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_15f

    :cond_156
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v1, :cond_15f

    .line 222
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 226
    :cond_15f
    return-void

    .line 204
    .restart local v2    # "maxRedirects":I
    .restart local v3    # "redirectCount":I
    .restart local v4    # "retry":Z
    :cond_160
    :try_start_160
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_16d

    .line 205
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catchall {:try_start_160 .. :try_end_16d} :catchall_16f

    .line 208
    .end local v4    # "retry":Z
    :cond_16d
    goto/16 :goto_4a

    .line 210
    .end local v2    # "maxRedirects":I
    .end local v3    # "redirectCount":I
    :catchall_16f
    move-exception v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v3, :cond_179

    .line 211
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_179
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v1, :cond_183

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_18c

    :cond_183
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v1, :cond_18c

    .line 222
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    :cond_18c
    throw v2

    .line 122
    .end local v0    # "defaults":Ljava/util/Collection;
    :cond_18d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .registers 2

    .line 930
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    return-object v0
.end method

.method public getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 2

    .line 916
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 2

    .line 937
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/httpclient/HttpState;
    .registers 2

    .line 923
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    return-object v0
.end method
