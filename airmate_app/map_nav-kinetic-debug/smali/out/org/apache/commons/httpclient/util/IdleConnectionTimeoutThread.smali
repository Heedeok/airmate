.class public Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;
.super Ljava/lang/Thread;
.source "IdleConnectionTimeoutThread.java"


# instance fields
.field private connectionManagers:Ljava/util/List;

.field private connectionTimeout:J

.field private shutdown:Z

.field private timeoutInterval:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->setDaemon(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    monitor-enter p0

    .line 67
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v0, :cond_c

    .line 70
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 71
    monitor-exit p0

    return-void

    .line 68
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 66
    .end local p1    # "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 92
    iget-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->closeIdleConnections(J)V

    .line 93
    return-void
.end method

.method public declared-synchronized removeConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .param p1, "connectionManager"    # Lorg/apache/commons/httpclient/HttpConnectionManager;

    monitor-enter p0

    .line 80
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v0, :cond_c

    .line 83
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 84
    monitor-exit p0

    return-void

    .line 81
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 79
    .end local p1    # "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .registers 4

    monitor-enter p0

    .line 99
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v0, :cond_23

    .line 100
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "iter":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 104
    .local v1, "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2a

    .line 105
    .end local v1    # "connectionManager":Lorg/apache/commons/httpclient/HttpConnectionManager;
    goto :goto_b

    .line 108
    :cond_1b
    :try_start_1b
    iget-wide v1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_2a

    .line 110
    goto :goto_22

    .line 109
    :catch_21
    move-exception v1

    .line 111
    .end local v0    # "iter":Ljava/util/Iterator;
    :goto_22
    goto :goto_1

    .line 113
    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    .line 114
    monitor-exit p0

    return-void

    .line 98
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectionTimeout(J)V
    .registers 5
    .param p1, "connectionTimeout"    # J

    monitor-enter p0

    .line 132
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v0, :cond_9

    .line 135
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 136
    monitor-exit p0

    return-void

    .line 133
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 131
    .end local p1    # "connectionTimeout":J
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTimeoutInterval(J)V
    .registers 5
    .param p1, "timeoutInterval"    # J

    monitor-enter p0

    .line 144
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v0, :cond_9

    .line 147
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11

    .line 148
    monitor-exit p0

    return-void

    .line 145
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 143
    .end local p1    # "timeoutInterval":J
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    monitor-enter p0

    .line 120
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 122
    monitor-exit p0

    return-void

    .line 119
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
