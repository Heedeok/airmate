.class public Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
.super Lorg/apache/commons/httpclient/params/HttpConnectionParams;
.source "HttpConnectionManagerParams.java"


# static fields
.field public static final MAX_HOST_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-per-host"

.field public static final MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-total"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMaxConnectionsPerHost()I
    .registers 2

    .line 129
    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .registers 6
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 144
    const-string v0, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 145
    .local v0, "m":Ljava/util/Map;
    const/4 v1, 0x2

    if-nez v0, :cond_c

    .line 147
    return v1

    .line 149
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 150
    .local v2, "max":Ljava/lang/Integer;
    if-nez v2, :cond_1f

    sget-object v3, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    if-eq p1, v3, :cond_1f

    .line 153
    sget-object v1, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v1

    return v1

    .line 155
    :cond_1f
    if-nez v2, :cond_22

    goto :goto_26

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_26
    return v1
.end method

.method public getMaxTotalConnections()I
    .registers 3

    .line 185
    const-string v0, "http.connection-manager.max-total"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDefaultMaxConnectionsPerHost(I)V
    .registers 3
    .param p1, "maxHostConnections"    # I

    .line 86
    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V

    .line 87
    return-void
.end method

.method public setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V
    .registers 6
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "maxHostConnections"    # I

    .line 103
    if-lez p2, :cond_28

    .line 107
    const-string v0, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 110
    .local v0, "currentValues":Ljava/util/Map;
    const/4 v1, 0x0

    .line 111
    .local v1, "newValues":Ljava/util/Map;
    if-nez v0, :cond_14

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    goto :goto_1a

    .line 114
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    .line 116
    :goto_1a
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void

    .line 104
    .end local v0    # "currentValues":Ljava/util/Map;
    .end local v1    # "newValues":Ljava/util/Map;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxHostConnections must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxTotalConnections(I)V
    .registers 3
    .param p1, "maxTotalConnections"    # I

    .line 172
    const-string v0, "http.connection-manager.max-total"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setIntParameter(Ljava/lang/String;I)V

    .line 175
    return-void
.end method
