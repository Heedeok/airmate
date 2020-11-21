.class public abstract Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.super Ljava/lang/Object;
.source "RFC2617Scheme.java"

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# instance fields
.field private params:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 58
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->processChallenge(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 114
    if-eqz p1, :cond_15

    .line 117
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 115
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getParameters()Ljava/util/Map;
    .registers 2

    .line 103
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .registers 6
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 94
    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 95
    return-void

    .line 91
    :cond_15
    new-instance v1, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
