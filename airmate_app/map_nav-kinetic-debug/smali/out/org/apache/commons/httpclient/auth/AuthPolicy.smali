.class public abstract Lorg/apache/commons/httpclient/auth/AuthPolicy;
.super Ljava/lang/Object;
.source "AuthPolicy.java"


# static fields
.field public static final AUTH_SCHEME_PRIORITY:Ljava/lang/String; = "http.auth.scheme-priority"

.field public static final BASIC:Ljava/lang/String; = "Basic"

.field public static final DIGEST:Ljava/lang/String; = "Digest"

.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field public static final NTLM:Ljava/lang/String; = "NTLM"

.field private static final SCHEMES:Ljava/util/HashMap;

.field private static final SCHEME_LIST:Ljava/util/ArrayList;

.field static synthetic class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    .line 100
    const-string v0, "NTLM"

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    if-nez v1, :cond_1d

    const-string v1, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    goto :goto_1f

    :cond_1d
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    :goto_1f
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 101
    const-string v0, "Digest"

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    if-nez v1, :cond_31

    const-string v1, "org.apache.commons.httpclient.auth.DigestScheme"

    invoke-static {v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    goto :goto_33

    :cond_31
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    :goto_33
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    const-string v0, "Basic"

    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    if-nez v1, :cond_45

    const-string v1, "org.apache.commons.httpclient.auth.BasicScheme"

    invoke-static {v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    goto :goto_47

    :cond_45
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    :goto_47
    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 106
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    if-nez v0, :cond_57

    const-string v0, "org.apache.commons.httpclient.auth.AuthPolicy"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    goto :goto_59

    :cond_57
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    :goto_59
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 100
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

.method public static declared-synchronized getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .registers 7
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v0

    .line 162
    if-eqz p0, :cond_6c

    .line 165
    :try_start_5
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_74

    .line 166
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_55

    .line 168
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_1b
    .catchall {:try_start_13 .. :try_end_19} :catchall_74

    monitor-exit v0

    return-object v2

    .line 169
    :catch_1b
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1c
    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error initializing authentication scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " authentication scheme implemented by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " could not be initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_55
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported authentication scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_74

    .line 161
    .end local p0    # "id":Ljava/lang/String;
    :catchall_74
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDefaultAuthPrefs()Ljava/util/List;
    .registers 2

    const-class v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v0

    .line 187
    :try_start_3
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;

    const-class v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v0

    .line 126
    if-eqz p0, :cond_23

    .line 129
    if-eqz p1, :cond_1b

    .line 132
    :try_start_7
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_2b

    .line 134
    monitor-exit v0

    return-void

    .line 130
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authentication scheme class may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2b

    .line 125
    .end local p0    # "id":Ljava/lang/String;
    .end local p1    # "clazz":Ljava/lang/Class;
    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterAuthScheme(Ljava/lang/String;)V
    .registers 4
    .param p0, "id"    # Ljava/lang/String;

    const-class v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v0

    .line 143
    if-eqz p0, :cond_19

    .line 146
    :try_start_5
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_21

    .line 148
    monitor-exit v0

    return-void

    .line 144
    :cond_19
    :try_start_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    .line 142
    .end local p0    # "id":Ljava/lang/String;
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method
