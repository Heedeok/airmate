.class public Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;
.super Ljava/lang/Object;
.source "DefaultHttpParamsFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# static fields
.field static synthetic class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private httpParams:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 72
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
.method protected createParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 8

    .line 68
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 70
    .local v0, "params":Lorg/apache/commons/httpclient/params/HttpClientParams;
    const-string v2, "http.useragent"

    const-string v3, "Jakarta Commons-HttpClient/3.1"

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 72
    sget-object v2, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    if-nez v2, :cond_1f

    const-string v2, "org.apache.commons.httpclient.SimpleHttpConnectionManager"

    invoke-static {v2}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    goto :goto_21

    :cond_1f
    sget-object v2, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->class$org$apache$commons$httpclient$SimpleHttpConnectionManager:Ljava/lang/Class;

    :goto_21
    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerClass(Ljava/lang/Class;)V

    .line 73
    const-string v2, "default"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 74
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setHttpElementCharset(Ljava/lang/String;)V

    .line 75
    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setContentCharset(Ljava/lang/String;)V

    .line 76
    const-string v2, "http.method.retry-handler"

    new-instance v3, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v3}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "datePatterns":Ljava/util/ArrayList;
    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "EEE MMM d HH:mm:ss yyyy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "EEE dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    const-string v3, "http.dateparser.patterns"

    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    move-object v3, v1

    .line 104
    .local v3, "agent":Ljava/lang/String;
    :try_start_9f
    const-string v4, "httpclient.useragent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_9f .. :try_end_a5} :catch_a7

    move-object v3, v4

    .line 106
    goto :goto_a8

    .line 105
    :catch_a7
    move-exception v4

    .line 107
    :goto_a8
    if-eqz v3, :cond_af

    .line 108
    const-string v4, "http.useragent"

    invoke-virtual {v0, v4, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_af
    move-object v4, v1

    .line 114
    .local v4, "preemptiveDefault":Ljava/lang/String;
    :try_start_b0
    const-string v5, "httpclient.authentication.preemptive"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_b6
    .catch Ljava/lang/SecurityException; {:try_start_b0 .. :try_end_b6} :catch_b8

    move-object v4, v5

    .line 116
    goto :goto_b9

    .line 115
    :catch_b8
    move-exception v5

    .line 117
    :goto_b9
    if-eqz v4, :cond_e2

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 120
    const-string v5, "http.authentication.preemptive"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e2

    .line 121
    :cond_d3
    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 122
    const-string v5, "http.authentication.preemptive"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_e2
    :goto_e2
    nop

    .line 129
    .local v1, "defaultCookiePolicy":Ljava/lang/String;
    :try_start_e3
    const-string v5, "apache.commons.httpclient.cookiespec"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_e9
    .catch Ljava/lang/SecurityException; {:try_start_e3 .. :try_end_e9} :catch_eb

    move-object v1, v5

    .line 131
    goto :goto_ec

    .line 130
    :catch_eb
    move-exception v5

    .line 132
    :goto_ec
    if-eqz v1, :cond_117

    .line 133
    const-string v5, "COMPATIBILITY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 134
    const-string v5, "compatibility"

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_117

    .line 135
    :cond_fc
    const-string v5, "NETSCAPE_DRAFT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 136
    const-string v5, "netscape"

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_117

    .line 137
    :cond_10a
    const-string v5, "RFC2109"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 138
    const-string v5, "rfc2109"

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 142
    :cond_117
    :goto_117
    return-object v0
.end method

.method public declared-synchronized getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    if-nez v0, :cond_b

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->createParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 64
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
