.class public Lorg/apache/commons/httpclient/HostConfiguration;
.super Ljava/lang/Object;
.source "HostConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;


# instance fields
.field private host:Lorg/apache/commons/httpclient/HttpHost;

.field private localAddress:Ljava/net/InetAddress;

.field private params:Lorg/apache/commons/httpclient/params/HostParams;

.field private proxyHost:Lorg/apache/commons/httpclient/ProxyHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 66
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 69
    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 66
    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 69
    new-instance v0, Lorg/apache/commons/httpclient/params/HostParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HostParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 85
    return-void
.end method

.method private init(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 90
    monitor-enter p1

    .line 92
    :try_start_1
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 93
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    goto :goto_13

    .line 95
    :cond_11
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    .line 97
    :goto_13
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_22

    .line 98
    iget-object v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/ProxyHost;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    goto :goto_24

    .line 100
    :cond_22
    iput-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    .line 102
    :goto_24
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 103
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HostParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/HostParams;

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;
    :try_end_36
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_36} :catch_3b
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    .line 106
    nop

    .line 107
    :try_start_37
    monitor-exit p1

    .line 108
    return-void

    .line 107
    :catchall_39
    move-exception v0

    goto :goto_44

    .line 104
    :catch_3b
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host configuration could not be cloned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_39

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .line 116
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_b

    .line 119
    .local v0, "copy":Lorg/apache/commons/httpclient/HostConfiguration;
    nop

    .line 120
    invoke-direct {v0, p0}, Lorg/apache/commons/httpclient/HostConfiguration;->init(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 121
    return-object v0

    .line 117
    .end local v0    # "copy":Lorg/apache/commons/httpclient/HostConfiguration;
    :catch_b
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host configuration could not be cloned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    monitor-enter p0

    .line 500
    :try_start_1
    instance-of v0, p1, Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 502
    const/4 v0, 0x1

    if-ne p1, p0, :cond_b

    .line 503
    monitor-exit p0

    return v0

    .line 505
    :cond_b
    :try_start_b
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/httpclient/HostConfiguration;

    .line 506
    .local v2, "that":Lorg/apache/commons/httpclient/HostConfiguration;
    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    iget-object v4, v2, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    iget-object v4, v2, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    iget-object v4, v2, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_32

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    monitor-exit p0

    return v0

    .line 510
    .end local v2    # "that":Lorg/apache/commons/httpclient/HostConfiguration;
    :cond_30
    monitor-exit p0

    return v1

    .line 499
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHost()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_d

    .line 343
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object v0

    .line 345
    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 341
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostURL()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 327
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_d

    .line 330
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-object v0

    .line 328
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Host must be set to create a host URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 326
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    monitor-enter p0

    .line 468
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HostParams;
    .registers 2

    .line 479
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    monitor-enter p0

    .line 368
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_d

    .line 369
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return v0

    .line 371
    :cond_d
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 367
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .registers 2

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v0, :cond_d

    .line 381
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object v0

    .line 383
    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyHost()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 426
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_d

    .line 427
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object v0

    .line 429
    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 425
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyPort()I
    .registers 2

    monitor-enter p0

    .line 441
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v0, :cond_d

    .line 442
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return v0

    .line 444
    :cond_d
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 440
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HostParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .registers 3

    monitor-enter p0

    .line 519
    const/16 v0, 0x11

    .line 520
    .local v0, "hash":I
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 521
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 522
    iget-object v1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1a

    move v0, v1

    .line 523
    monitor-exit p0

    return v0

    .line 518
    .end local v0    # "hash":I
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .registers 5
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    monitor-enter p0

    .line 175
    if-eqz p1, :cond_59

    .line 178
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 179
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_61

    if-nez v0, :cond_1a

    .line 180
    monitor-exit p0

    return v1

    .line 182
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getPort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_61

    if-eq v0, v2, :cond_28

    .line 183
    monitor-exit p0

    return v1

    .line 185
    :cond_28
    :try_start_28
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpHost;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/protocol/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_61

    if-nez v0, :cond_3a

    .line 186
    monitor-exit p0

    return v1

    .line 188
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_4c

    .line 189
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_61

    if-nez v0, :cond_54

    .line 190
    monitor-exit p0

    return v1

    .line 193
    :cond_4c
    :try_start_4c
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_61

    if-eqz v0, :cond_54

    .line 194
    monitor-exit p0

    return v1

    .line 197
    :cond_54
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 199
    :cond_57
    monitor-exit p0

    return v1

    .line 176
    :cond_59
    :try_start_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_61

    .line 174
    .end local p1    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isHostSet()Z
    .registers 2

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isProxySet()Z
    .registers 2

    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized proxyEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .registers 6
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    monitor-enter p0

    .line 214
    if-eqz p1, :cond_33

    .line 217
    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 218
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ProxyHost;->getPort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3b

    if-ne v0, v3, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    monitor-exit p0

    return v1

    .line 222
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3b

    if-nez v0, :cond_31

    const/4 v1, 0x1

    nop

    :cond_31
    monitor-exit p0

    return v1

    .line 215
    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 213
    .end local p1    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;

    monitor-enter p0

    .line 305
    :try_start_1
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    .line 306
    .local v0, "defaultProtocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getDefaultPort()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 307
    monitor-exit p0

    return-void

    .line 304
    .end local v0    # "defaultProtocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    .end local p1    # "host":Ljava/lang/String;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;I)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    monitor-enter p0

    .line 296
    :try_start_1
    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 297
    monitor-exit p0

    return-void

    .line 295
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;

    monitor-enter p0

    .line 253
    :try_start_1
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-static {p3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 254
    monitor-exit p0

    return-void

    .line 252
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "protocol":Ljava/lang/String;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    monitor-enter p0

    .line 280
    if-eqz p1, :cond_16

    .line 283
    if-eqz p3, :cond_e

    .line 286
    :try_start_5
    new-instance v0, Lorg/apache/commons/httpclient/HttpHost;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/httpclient/HttpHost;-><init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    .line 287
    monitor-exit p0

    return-void

    .line 284
    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1e

    .line 279
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "virtualHost"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "protocol"    # Lorg/apache/commons/httpclient/protocol/Protocol;

    monitor-enter p0

    .line 268
    :try_start_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 269
    iget-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/params/HostParams;->setVirtualHost(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 270
    monitor-exit p0

    return-void

    .line 267
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "virtualHost":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "protocol":Lorg/apache/commons/httpclient/protocol/Protocol;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/HttpHost;)V
    .registers 2
    .param p1, "host"    # Lorg/apache/commons/httpclient/HttpHost;

    monitor-enter p0

    .line 242
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 243
    monitor-exit p0

    return-void

    .line 241
    .end local p1    # "host":Lorg/apache/commons/httpclient/HttpHost;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHost(Lorg/apache/commons/httpclient/URI;)V
    .registers 5
    .param p1, "uri"    # Lorg/apache/commons/httpclient/URI;

    monitor-enter p0

    .line 315
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_1 .. :try_end_10} :catch_15
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    .line 318
    nop

    .line 319
    monitor-exit p0

    return-void

    .line 314
    .end local p1    # "uri":Lorg/apache/commons/httpclient/URI;
    :catchall_13
    move-exception p1

    goto :goto_20

    .line 316
    .restart local p1    # "uri":Lorg/apache/commons/httpclient/URI;
    :catch_15
    move-exception v0

    .line 317
    .local v0, "e":Lorg/apache/commons/httpclient/URIException;
    :try_start_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    .line 314
    .end local v0    # "e":Lorg/apache/commons/httpclient/URIException;
    .end local p1    # "uri":Lorg/apache/commons/httpclient/URI;
    :goto_20
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocalAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "localAddress"    # Ljava/net/InetAddress;

    monitor-enter p0

    .line 457
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 458
    monitor-exit p0

    return-void

    .line 456
    .end local p1    # "localAddress":Ljava/net/InetAddress;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HostParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HostParams;

    .line 490
    if-eqz p1, :cond_5

    .line 493
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    .line 494
    return-void

    .line 491
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setProxy(Ljava/lang/String;I)V
    .registers 4
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    monitor-enter p0

    .line 415
    :try_start_1
    new-instance v0, Lorg/apache/commons/httpclient/ProxyHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/httpclient/ProxyHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 416
    monitor-exit p0

    return-void

    .line 414
    .end local p1    # "proxyHost":Ljava/lang/String;
    .end local p2    # "proxyPort":I
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyHost(Lorg/apache/commons/httpclient/ProxyHost;)V
    .registers 2
    .param p1, "proxyHost"    # Lorg/apache/commons/httpclient/ProxyHost;

    monitor-enter p0

    .line 406
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 407
    monitor-exit p0

    return-void

    .line 405
    .end local p1    # "proxyHost":Lorg/apache/commons/httpclient/ProxyHost;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "appendComma":Z
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 131
    .local v1, "b":Ljava/lang/StringBuffer;
    const-string v2, "HostConfiguration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    if-eqz v2, :cond_1d

    .line 134
    const/4 v0, 0x1

    .line 135
    const-string v2, "host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->host:Lorg/apache/commons/httpclient/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 137
    :cond_1d
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    if-eqz v2, :cond_34

    .line 138
    if-eqz v0, :cond_29

    .line 139
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 141
    :cond_29
    const/4 v0, 0x1

    .line 143
    :goto_2a
    const-string v2, "proxyHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->proxyHost:Lorg/apache/commons/httpclient/ProxyHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    :cond_34
    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_5e

    .line 146
    if-eqz v0, :cond_40

    .line 147
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 149
    :cond_40
    const/4 v0, 0x1

    .line 151
    :goto_41
    const-string v2, "localAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 152
    if-eqz v0, :cond_53

    .line 153
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_54

    .line 155
    :cond_53
    const/4 v0, 0x1

    .line 157
    :goto_54
    const-string v2, "params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/httpclient/HostConfiguration;->params:Lorg/apache/commons/httpclient/params/HostParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 159
    :cond_5e
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_67
    .catchall {:try_start_2 .. :try_end_67} :catchall_69

    monitor-exit p0

    return-object v2

    .line 128
    .end local v0    # "appendComma":Z
    .end local v1    # "b":Ljava/lang/StringBuffer;
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method
