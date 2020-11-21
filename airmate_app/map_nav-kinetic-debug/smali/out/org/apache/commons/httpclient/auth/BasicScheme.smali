.class public Lorg/apache/commons/httpclient/auth/BasicScheme;
.super Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.source "BasicScheme.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;


# instance fields
.field private complete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    sget-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.auth.BasicScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/BasicScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/BasicScheme;->complete:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/BasicScheme;->complete:Z

    .line 88
    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;)Ljava/lang/String;
    .registers 2
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    .line 216
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lorg/apache/commons/httpclient/auth/BasicScheme;->authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    .param p1, "charset"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter BasicScheme.authenticate(UsernamePasswordCredentials, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 234
    if-eqz p0, :cond_53

    .line 237
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 59
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


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter BasicScheme.authenticate(Credentials, String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_8
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_12

    move-object v0, v1

    .line 156
    nop

    .line 157
    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/BasicScheme;->authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :catch_12
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for basic authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .registers 8
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 187
    sget-object v0, Lorg/apache/commons/httpclient/auth/BasicScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter BasicScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 189
    if-eqz p2, :cond_3c

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_d} :catch_1c

    move-object v0, v1

    .line 199
    nop

    .line 200
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/BasicScheme;->authenticate(Lorg/apache/commons/httpclient/UsernamePasswordCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    :catch_1c
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for basic authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v0    # "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .registers 3
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->processChallenge(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/BasicScheme;->complete:Z

    .line 114
    return-void
.end method
