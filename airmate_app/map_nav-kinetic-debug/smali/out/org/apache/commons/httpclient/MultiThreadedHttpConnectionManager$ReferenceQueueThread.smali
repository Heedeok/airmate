.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;
.super Ljava/lang/Thread;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueThread"
.end annotation


# instance fields
.field private volatile shutdown:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1080
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    .line 1081
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->setDaemon(Z)V

    .line 1082
    const-string v0, "MultiThreadedHttpConnectionManager cleanup"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->setName(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method private handleReference(Ljava/lang/ref/Reference;)V
    .registers 6
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    .line 1097
    const/4 v0, 0x0

    .line 1099
    .local v0, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1400()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 1100
    :try_start_6
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1400()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    move-object v0, v2

    .line 1101
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_40

    .line 1104
    if-eqz v0, :cond_3f

    .line 1105
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1106
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Connection reclaimed by garbage collector, hostConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1111
    :cond_38
    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    iget-object v2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 1113
    :cond_3f
    return-void

    .line 1101
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1119
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    if-nez v0, :cond_1d

    .line 1122
    :try_start_4
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1500()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 1123
    .local v0, "ref":Ljava/lang/ref/Reference;
    if-eqz v0, :cond_1c

    .line 1124
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->handleReference(Ljava/lang/ref/Reference;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1c

    .line 1126
    .end local v0    # "ref":Ljava/lang/ref/Reference;
    :catch_12
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "ReferenceQueueThread interrupted"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1128
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1c
    :goto_1c
    goto :goto_0

    .line 1130
    :cond_1d
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown:Z

    .line 1087
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->interrupt()V

    .line 1088
    return-void
.end method
