.class public Lorg/apache/commons/httpclient/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;,
        Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    }
.end annotation


# instance fields
.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/ProxyClient;-><init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/apache/commons/httpclient/HttpState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 70
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 91
    if-eqz p1, :cond_19

    .line 94
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 95
    return-void

    .line 92
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 183
    .local v0, "hostconf":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 189
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 193
    new-instance v1, Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 194
    .local v1, "method":Lorg/apache/commons/httpclient/ConnectMethod;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 196
    new-instance v2, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;-><init>()V

    .line 197
    .local v2, "connectionManager":Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->setConnectionParams(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 199
    new-instance v3, Lorg/apache/commons/httpclient/HttpMethodDirector;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/ProxyClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v5

    invoke-direct {v3, v2, v0, v4, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V

    .line 206
    .local v3, "director":Lorg/apache/commons/httpclient/HttpMethodDirector;
    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 208
    new-instance v4, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;-><init>(Lorg/apache/commons/httpclient/ProxyClient$1;)V

    .line 209
    .local v4, "response":Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    invoke-static {v4, v1}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->access$100(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Lorg/apache/commons/httpclient/ConnectMethod;)V

    .line 212
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_67

    .line 213
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;->access$200(Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;Ljava/net/Socket;)V

    goto :goto_6e

    .line 215
    :cond_67
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;->getConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 218
    :goto_6e
    return-object v4

    .line 190
    .end local v1    # "method":Lorg/apache/commons/httpclient/ConnectMethod;
    .end local v2    # "connectionManager":Lorg/apache/commons/httpclient/ProxyClient$DummyConnectionManager;
    .end local v3    # "director":Lorg/apache/commons/httpclient/HttpMethodDirector;
    .end local v4    # "response":Lorg/apache/commons/httpclient/ProxyClient$ConnectResponse;
    :cond_6f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "secure protocol socket factory may not be used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "destination host must be configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "proxy host must be configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 2

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;
    .registers 2

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lorg/apache/commons/httpclient/HttpState;
    .registers 2

    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHostConfiguration(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 2
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 136
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 137
    monitor-exit p0

    return-void

    .line 135
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParams(Lorg/apache/commons/httpclient/params/HttpClientParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpClientParams;

    monitor-enter p0

    .line 154
    if-eqz p1, :cond_7

    .line 157
    :try_start_3
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    .line 158
    monitor-exit p0

    return-void

    .line 155
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 153
    .end local p1    # "params":Lorg/apache/commons/httpclient/params/HttpClientParams;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(Lorg/apache/commons/httpclient/HttpState;)V
    .registers 2
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;

    monitor-enter p0

    .line 116
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/ProxyClient;->state:Lorg/apache/commons/httpclient/HttpState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 117
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "state":Lorg/apache/commons/httpclient/HttpState;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
