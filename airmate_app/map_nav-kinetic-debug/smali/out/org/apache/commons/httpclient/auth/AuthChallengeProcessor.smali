.class public final Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;
.super Ljava/lang/Object;
.source "AuthChallengeProcessor.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;


# instance fields
.field private params:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.auth.AuthChallengeProcessor"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->class$org$apache$commons$httpclient$auth$AuthChallengeProcessor:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpParams;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 63
    if-eqz p1, :cond_b

    .line 66
    iput-object p1, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 67
    return-void

    .line 64
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter collection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 51
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
.method public processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .registers 9
    .param p1, "state"    # Lorg/apache/commons/httpclient/auth/AuthState;
    .param p2, "challenges"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 141
    if-eqz p1, :cond_73

    .line 144
    if-eqz p2, :cond_6b

    .line 148
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    if-nez v0, :cond_17

    .line 150
    :cond_10
    invoke-virtual {p0, p2}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->selectAuthScheme(Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    .line 152
    :cond_17
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 153
    .local v0, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 155
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Using authentication scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 157
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "challenge":Ljava/lang/String;
    if-eqz v2, :cond_54

    .line 162
    invoke-interface {v0, v2}, Lorg/apache/commons/httpclient/auth/AuthScheme;->processChallenge(Ljava/lang/String;)V

    .line 163
    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Authorization challenge processed"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 164
    return-object v0

    .line 159
    :cond_54
    new-instance v3, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " authorization challenge expected, but not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    .end local v0    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "challenge":Ljava/lang/String;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge map may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication state may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectAuthScheme(Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .registers 10
    .param p1, "challenges"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthChallengeException;
        }
    .end annotation

    .line 81
    if-eqz p1, :cond_c2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->params:Lorg/apache/commons/httpclient/params/HttpParams;

    const-string v1, "http.auth.scheme-priority"

    invoke-interface {v0, v1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 86
    .local v0, "authPrefs":Ljava/util/Collection;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 87
    :cond_14
    invoke-static {}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->getDefaultAuthPrefs()Ljava/util/List;

    move-result-object v0

    .line 89
    :cond_18
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 90
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Supported authentication schemes in the order of preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 93
    :cond_36
    const/4 v1, 0x0

    .line 94
    .local v1, "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    const/4 v2, 0x0

    .line 95
    .local v2, "challenge":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 96
    .local v3, "item":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 98
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 99
    if-eqz v2, :cond_84

    .line 100
    sget-object v5, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 101
    sget-object v5, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " authentication scheme selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 104
    :cond_73
    :try_start_73
    invoke-static {v4}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v5
    :try_end_77
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_77} :catch_79

    move-object v1, v5

    .line 107
    goto :goto_a8

    .line 105
    :catch_79
    move-exception v5

    .line 106
    .local v5, "e":Ljava/lang/IllegalStateException;
    new-instance v6, Lorg/apache/commons/httpclient/auth/AuthChallengeException;

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_84
    sget-object v5, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 111
    sget-object v5, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Challenge for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " authentication scheme not available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    .end local v4    # "id":Ljava/lang/String;
    :cond_a7
    goto :goto_3c

    .line 116
    :cond_a8
    :goto_a8
    if-eqz v1, :cond_ab

    .line 122
    return-object v1

    .line 118
    :cond_ab
    new-instance v4, Lorg/apache/commons/httpclient/auth/AuthChallengeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to respond to any of these challenges: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    .end local v0    # "authPrefs":Ljava/util/Collection;
    .end local v1    # "authscheme":Lorg/apache/commons/httpclient/auth/AuthScheme;
    .end local v2    # "challenge":Ljava/lang/String;
    .end local v3    # "item":Ljava/util/Iterator;
    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge map may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
