.class public Lorg/apache/commons/httpclient/HttpState;
.super Ljava/lang/Object;
.source "HttpState.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field public static final PREEMPTIVE_DEFAULT:Ljava/lang/String; = "false"

.field public static final PREEMPTIVE_PROPERTY:Ljava/lang/String; = "httpclient.authentication.preemptive"

.field static synthetic class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;


# instance fields
.field private cookiePolicy:I

.field protected cookies:Ljava/util/ArrayList;

.field protected credMap:Ljava/util/HashMap;

.field private preemptive:Z

.field protected proxyCred:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.HttpState"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpState;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->class$org$apache$commons$httpclient$HttpState:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    .line 110
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 103
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

.method private static getCookiesStringRepresentation(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .param p0, "cookies"    # Ljava/util/List;

    .line 585
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 586
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 587
    .local v1, "iter":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 588
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    .line 589
    .local v2, "ck":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 590
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    :cond_20
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Cookie;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    .end local v2    # "ck":Lorg/apache/commons/httpclient/Cookie;
    goto :goto_9

    .line 594
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .param p0, "credMap"    # Ljava/util/Map;

    .line 564
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    .local v1, "iter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 568
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/Credentials;

    .line 569
    .local v3, "cred":Lorg/apache/commons/httpclient/Credentials;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_28

    .line 570
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 573
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "cred":Lorg/apache/commons/httpclient/Credentials;
    goto :goto_d

    .line 576
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 8
    .param p0, "map"    # Ljava/util/HashMap;
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 373
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/Credentials;

    .line 374
    .local v0, "creds":Lorg/apache/commons/httpclient/Credentials;
    if-nez v0, :cond_30

    .line 377
    const/4 v1, -0x1

    .line 378
    .local v1, "bestMatchFactor":I
    const/4 v2, 0x0

    .line 379
    .local v2, "bestMatch":Lorg/apache/commons/httpclient/auth/AuthScope;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 380
    .local v3, "items":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/httpclient/auth/AuthScope;

    .line 382
    .local v4, "current":Lorg/apache/commons/httpclient/auth/AuthScope;
    invoke-virtual {p1, v4}, Lorg/apache/commons/httpclient/auth/AuthScope;->match(Lorg/apache/commons/httpclient/auth/AuthScope;)I

    move-result v5

    .line 383
    .local v5, "factor":I
    if-le v5, v1, :cond_26

    .line 384
    move v1, v5

    .line 385
    move-object v2, v4

    .line 387
    .end local v4    # "current":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v5    # "factor":I
    :cond_26
    goto :goto_12

    .line 388
    :cond_27
    if-eqz v2, :cond_30

    .line 389
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/httpclient/Credentials;

    .line 392
    .end local v1    # "bestMatchFactor":I
    .end local v2    # "bestMatch":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v3    # "items":Ljava/util/Iterator;
    :cond_30
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/commons/httpclient/Cookie;)V
    .registers 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    monitor-enter p0

    .line 125
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.addCookie(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 127
    if-eqz p1, :cond_32

    .line 129
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 131
    .local v1, "tmp":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p1, v1}, Lorg/apache/commons/httpclient/Cookie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 133
    goto :goto_27

    .line 135
    .end local v1    # "tmp":Lorg/apache/commons/httpclient/Cookie;
    :cond_26
    goto :goto_10

    .line 136
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->isExpired()Z

    move-result v0

    if-nez v0, :cond_32

    .line 137
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 140
    :cond_32
    monitor-exit p0

    return-void

    .line 124
    .end local p1    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addCookies([Lorg/apache/commons/httpclient/Cookie;)V
    .registers 4
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    monitor-enter p0

    .line 154
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.addCookies(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 156
    if-eqz p1, :cond_16

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/HttpState;->addCookie(Lorg/apache/commons/httpclient/Cookie;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 161
    .end local v0    # "i":I
    :cond_16
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .registers 1

    .line 622
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearCookies()V

    .line 623
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearCredentials()V

    .line 624
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpState;->clearProxyCredentials()V

    .line 625
    return-void
.end method

.method public declared-synchronized clearCookies()V
    .registers 2

    monitor-enter p0

    .line 615
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 616
    monitor-exit p0

    return-void

    .line 614
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCredentials()V
    .registers 2

    .line 601
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    return-void
.end method

.method public clearProxyCredentials()V
    .registers 2

    .line 608
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 609
    return-void
.end method

.method public getCookiePolicy()I
    .registers 2

    .line 261
    iget v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    return v0
.end method

.method public declared-synchronized getCookies()[Lorg/apache/commons/httpclient/Cookie;
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCookies()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 172
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookies(Ljava/lang/String;ILjava/lang/String;Z)[Lorg/apache/commons/httpclient/Cookie;
    .registers 15
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z

    monitor-enter p0

    .line 198
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCookies(String, int, String, boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getDefaultSpec()Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v2

    .line 201
    .local v2, "matcher":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v0, "list":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "m":I
    :goto_1e
    move v8, v3

    .end local v3    # "m":I
    .local v8, "m":I
    if-ge v1, v8, :cond_3e

    .line 203
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/Cookie;

    check-cast v3, Lorg/apache/commons/httpclient/Cookie;

    move-object v9, v3

    .line 204
    .local v9, "cookie":Lorg/apache/commons/httpclient/Cookie;
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, v9

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 205
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v9    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    move v3, v8

    goto :goto_1e

    .line 208
    .end local v1    # "i":I
    .end local v8    # "m":I
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/httpclient/Cookie;

    check-cast v1, [Lorg/apache/commons/httpclient/Cookie;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-object v1

    .line 197
    .end local v0    # "list":Ljava/util/ArrayList;
    .end local v2    # "matcher":Lorg/apache/commons/httpclient/cookie/CookieSpec;
    .end local p1    # "domain":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "path":Ljava/lang/String;
    .end local p4    # "secure":Z
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;
    .registers 7
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 417
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(String, String"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 416
    .end local p1    # "realm":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 4
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    monitor-enter p0

    .line 433
    if-eqz p1, :cond_12

    .line 436
    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(AuthScope)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 434
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    .line 432
    .end local p1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProxyCredentials(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/httpclient/Credentials;
    .registers 7
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "proxyHost"    # Ljava/lang/String;

    monitor-enter p0

    .line 512
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getCredentials(String, String"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 511
    .end local p1    # "realm":Ljava/lang/String;
    .end local p2    # "proxyHost":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 4
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;

    monitor-enter p0

    .line 528
    if-eqz p1, :cond_12

    .line 531
    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.getProxyCredentials(AuthScope)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpState;->matchCredentials(Ljava/util/HashMap;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 529
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    .line 527
    .end local p1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAuthenticationPreemptive()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    return v0
.end method

.method public declared-synchronized purgeExpiredCookies()Z
    .registers 3

    monitor-enter p0

    .line 219
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.purgeExpiredCookies()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 220
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpState;->purgeExpiredCookies(Ljava/util/Date;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    .line 218
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized purgeExpiredCookies(Ljava/util/Date;)Z
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    monitor-enter p0

    .line 236
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.purgeExpiredCookies(Date)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "removed":Z
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, "it":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    check-cast v2, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    .line 242
    const/4 v0, 0x1

    goto :goto_f

    .line 245
    :cond_28
    monitor-exit p0

    return v0

    .line 235
    .end local v0    # "removed":Z
    .end local v1    # "it":Ljava/util/Iterator;
    .end local p1    # "date":Ljava/util/Date;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAuthenticationPreemptive(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 278
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpState;->preemptive:Z

    .line 279
    return-void
.end method

.method public setCookiePolicy(I)V
    .registers 2
    .param p1, "policy"    # I

    .line 313
    iput p1, p0, Lorg/apache/commons/httpclient/HttpState;->cookiePolicy:I

    .line 314
    return-void
.end method

.method public declared-synchronized setCredentials(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/httpclient/Credentials;)V
    .registers 8
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    monitor-enter p0

    .line 338
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setCredentials(String, String, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 340
    monitor-exit p0

    return-void

    .line 337
    .end local p1    # "realm":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V
    .registers 5
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    monitor-enter p0

    .line 356
    if-eqz p1, :cond_11

    .line 359
    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setCredentials(AuthScope, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 361
    monitor-exit p0

    return-void

    .line 357
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    .line 355
    .end local p1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local p2    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyCredentials(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/httpclient/Credentials;)V
    .registers 8
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    monitor-enter p0

    .line 465
    :try_start_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setProxyCredentials(String, String, Credentials"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v2, -0x1

    sget-object v3, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {v1, p2, v2, p1, v3}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 467
    monitor-exit p0

    return-void

    .line 464
    .end local p1    # "realm":Ljava/lang/String;
    .end local p2    # "proxyHost":Ljava/lang/String;
    .end local p3    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V
    .registers 5
    .param p1, "authscope"    # Lorg/apache/commons/httpclient/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/commons/httpclient/Credentials;

    monitor-enter p0

    .line 485
    if-eqz p1, :cond_11

    .line 488
    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/HttpState;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpState.setProxyCredentials(AuthScope, Credentials)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 490
    monitor-exit p0

    return-void

    .line 486
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_19

    .line 484
    .end local p1    # "authscope":Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local p2    # "credentials":Lorg/apache/commons/httpclient/Credentials;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 543
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 545
    .local v0, "sbResult":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->proxyCred:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/apache/commons/httpclient/HttpState;->getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->credMap:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/apache/commons/httpclient/HttpState;->getCredentialsStringRepresentation(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpState;->cookies:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/apache/commons/httpclient/HttpState;->getCookiesStringRepresentation(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 555
    .local v1, "strResult":Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 542
    .end local v0    # "sbResult":Ljava/lang/StringBuffer;
    .end local v1    # "strResult":Ljava/lang/String;
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
