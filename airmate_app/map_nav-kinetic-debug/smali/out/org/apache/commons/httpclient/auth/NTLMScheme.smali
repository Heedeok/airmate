.class public Lorg/apache/commons/httpclient/auth/NTLMScheme;
.super Ljava/lang/Object;
.source "NTLMScheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# static fields
.field private static final FAILED:I = 0x7fffffff

.field private static final INITIATED:I = 0x1

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final TYPE1_MSG_GENERATED:I = 0x2

.field private static final TYPE2_MSG_RECEIVED:I = 0x3

.field private static final TYPE3_MSG_GENERATED:I = 0x4

.field private static final UNINITIATED:I

.field static synthetic class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;


# instance fields
.field private ntlmchallenge:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 78
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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->processChallenge(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/NTCredentials;
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 220
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 222
    if-eqz p0, :cond_35

    .line 226
    new-instance v2, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 227
    .local v2, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "NTLM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "credentials"    # Lorg/apache/commons/httpclient/NTCredentials;
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 254
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 256
    if-eqz p0, :cond_39

    .line 260
    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 261
    .local v0, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "NTLM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 257
    .end local v0    # "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    .end local v1    # "s":Ljava/lang/String;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
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

    .line 289
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(Credentials, String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "ntcredentials":Lorg/apache/commons/httpclient/NTCredentials;
    :try_start_8
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/NTCredentials;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_14

    move-object v0, v1

    .line 298
    nop

    .line 299
    iget-object v1, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 294
    :catch_14
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for NTLM authentication: "

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
    .registers 12
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 324
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-eqz v0, :cond_8f

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, "ntcredentials":Lorg/apache/commons/httpclient/NTCredentials;
    :try_start_c
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/NTCredentials;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_6f

    move-object v0, v1

    .line 335
    nop

    .line 336
    new-instance v1, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    .line 337
    .local v1, "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, "response":Ljava/lang/String;
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4e

    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2f

    goto :goto_4e

    .line 345
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v7

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 351
    .end local v8    # "response":Ljava/lang/String;
    .local v2, "response":Ljava/lang/String;
    const/4 v3, 0x4

    iput v3, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_5d

    .line 340
    .end local v2    # "response":Ljava/lang/String;
    .restart local v8    # "response":Ljava/lang/String;
    :cond_4e
    :goto_4e
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .end local v8    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    const/4 v3, 0x2

    iput v3, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 353
    :goto_5d
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 331
    .end local v1    # "ntlm":Lorg/apache/commons/httpclient/auth/NTLM;
    .end local v2    # "response":Ljava/lang/String;
    :catch_6f
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for NTLM authentication: "

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

    .line 325
    .end local v0    # "ntcredentials":Lorg/apache/commons/httpclient/NTCredentials;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NTLM authentication process has not been initiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    if-eqz p1, :cond_4

    .line 190
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 141
    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .line 132
    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .registers 6
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 108
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 109
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 112
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_3a

    .line 114
    :cond_29
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    .line 115
    iget v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-nez v2, :cond_35

    .line 116
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_3a

    .line 118
    :cond_35
    const v2, 0x7fffffff

    iput v2, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    .line 121
    :goto_3a
    return-void

    .line 106
    .end local v1    # "i":I
    :cond_3b
    new-instance v1, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid NTLM challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
