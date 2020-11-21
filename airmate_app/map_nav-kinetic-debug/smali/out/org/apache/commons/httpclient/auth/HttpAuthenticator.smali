.class public final Lorg/apache/commons/httpclient/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PROXY_AUTH:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field public static final WWW_AUTH:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"

.field static synthetic class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.auth.HttpAuthenticator"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->class$org$apache$commons$httpclient$auth$HttpAuthenticator:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .registers 6
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 354
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticate(AuthScheme, HttpMethod, HttpConnection, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .registers 5
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 218
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateDefault(HttpMethod, HttpConnection, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 220
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateProxy(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .registers 6
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 390
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateProxy(AuthScheme, HttpMethod, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 391
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method public static authenticateProxyDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;)Z
    .registers 5
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 251
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.authenticateProxyDefault(HttpMethod, HttpState)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 252
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 76
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

.method private static doAuthenticate(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z
    .registers 12
    .param p0, "authscheme"    # Lorg/apache/commons/httpclient/auth/AuthScheme;
    .param p1, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p3, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p4, "proxy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 263
    if-eqz p0, :cond_bb

    .line 266
    if-eqz p1, :cond_b3

    .line 269
    if-eqz p3, :cond_ab

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "host":Ljava/lang/String;
    if-eqz p2, :cond_1e

    .line 274
    if-eqz p4, :cond_10

    .line 275
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 277
    :cond_10
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_1e

    .line 279
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1e
    :goto_1e
    invoke-interface {p0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "realm":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    const/16 v3, 0x27

    if-eqz v2, :cond_58

    .line 285
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 286
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "Using credentials for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    if-nez v1, :cond_3e

    .line 288
    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 290
    :cond_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :goto_47
    const-string v4, " authentication realm at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    sget-object v4, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 298
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    :cond_58
    if-eqz p4, :cond_5f

    invoke-virtual {p3, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    goto :goto_63

    :cond_5f
    invoke-virtual {p3, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v2

    .line 301
    .local v2, "credentials":Lorg/apache/commons/httpclient/Credentials;
    :goto_63
    if-nez v2, :cond_92

    .line 302
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const-string v5, "No credentials available for the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    if-nez v1, :cond_77

    .line 305
    const-string v3, "default"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_80

    .line 307
    :cond_77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    :goto_80
    const-string v3, " authentication realm at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    new-instance v3, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_92
    invoke-interface {p0, v2, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "auth":Ljava/lang/String;
    if-eqz v3, :cond_a9

    .line 317
    if-eqz p4, :cond_9d

    const-string v4, "Proxy-Authorization"

    goto :goto_9f

    :cond_9d
    const-string v4, "Authorization"

    .line 318
    .local v4, "s":Ljava/lang/String;
    :goto_9f
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v3, v6}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    .local v5, "header":Lorg/apache/commons/httpclient/Header;
    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 320
    return v6

    .line 322
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_a9
    const/4 v4, 0x0

    return v4

    .line 270
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "realm":Ljava/lang/String;
    .end local v2    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    .end local v3    # "auth":Ljava/lang/String;
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP state may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scheme may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doAuthenticateDefault(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpState;Z)Z
    .registers 10
    .param p0, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;
    .param p2, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p3, "proxy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 157
    if-eqz p0, :cond_6d

    .line 160
    if-eqz p2, :cond_65

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "host":Ljava/lang/String;
    if-eqz p1, :cond_13

    .line 165
    if-eqz p3, :cond_e

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_12
    move-object v0, v1

    .line 167
    :cond_13
    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v1

    .line 169
    .local v1, "credentials":Lorg/apache/commons/httpclient/Credentials;
    :goto_1f
    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 170
    return v2

    .line 172
    :cond_23
    instance-of v3, v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    if-eqz v3, :cond_4a

    .line 177
    move-object v3, v1

    check-cast v3, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    invoke-interface {p0}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/auth/BasicScheme;->authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "auth":Ljava/lang/String;
    if-eqz v3, :cond_49

    .line 181
    if-eqz p3, :cond_3d

    const-string v2, "Proxy-Authorization"

    goto :goto_3f

    :cond_3d
    const-string v2, "Authorization"

    .line 182
    .local v2, "s":Ljava/lang/String;
    :goto_3f
    new-instance v4, Lorg/apache/commons/httpclient/Header;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    .local v4, "header":Lorg/apache/commons/httpclient/Header;
    invoke-interface {p0, v4}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 184
    return v5

    .line 186
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "header":Lorg/apache/commons/httpclient/Header;
    :cond_49
    return v2

    .line 173
    .end local v3    # "auth":Ljava/lang/String;
    :cond_4a
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for basic authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP state may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static selectAuthScheme([Lorg/apache/commons/httpclient/Header;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .registers 6
    .param p0, "challenges"    # [Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 121
    sget-object v0, Lorg/apache/commons/httpclient/auth/HttpAuthenticator;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpAuthenticator.selectAuthScheme(Header[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 122
    if-eqz p0, :cond_7d

    .line 125
    array-length v0, p0

    if-eqz v0, :cond_75

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "challenge":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 130
    .local v1, "challengemap":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, p0

    if-ge v2, v3, :cond_27

    .line 131
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 135
    .end local v2    # "i":I
    :cond_27
    const-string v2, "ntlm"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 136
    if-eqz v0, :cond_38

    .line 137
    new-instance v2, Lorg/apache/commons/httpclient/auth/NTLMScheme;

    invoke-direct {v2, v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 139
    :cond_38
    const-string v2, "digest"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 140
    if-eqz v0, :cond_49

    .line 141
    new-instance v2, Lorg/apache/commons/httpclient/auth/DigestScheme;

    invoke-direct {v2, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 143
    :cond_49
    const-string v2, "basic"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 144
    if-eqz v0, :cond_5a

    .line 145
    new-instance v2, Lorg/apache/commons/httpclient/auth/BasicScheme;

    invoke-direct {v2, v0}, Lorg/apache/commons/httpclient/auth/BasicScheme;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 147
    :cond_5a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Authentication scheme(s) not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v1    # "challengemap":Ljava/util/Map;
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of challenges may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of challenges may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
