.class public Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;,
        Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
    }
.end annotation


# static fields
.field private static ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap; = null

.field public static final DEFAULT_MAX_HOST_CONNECTIONS:I = 0x2

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

.field private static REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

.field private static final REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

.field static synthetic class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;


# instance fields
.field private connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

.field private volatile shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.MultiThreadedHttpConnectionManager"

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->class$org$apache$commons$httpclient$MultiThreadedHttpConnectionManager:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 98
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    .line 257
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 258
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 259
    :try_start_18
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method static synthetic access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 65
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    .line 65
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .registers 1

    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 65
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    return-void
.end method

.method static synthetic access$700()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 65
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 65
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .param p1, "x1"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "x2"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 65
    invoke-static {p0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 70
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

.method private configurationForConnection(Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 6
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 653
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>()V

    .line 655
    .local v0, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 660
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 661
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HostConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 663
    :cond_21
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 664
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/HostConfiguration;->setProxy(Ljava/lang/String;I)V

    .line 667
    :cond_32
    return-object v0
.end method

.method private doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 28
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 442
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 444
    .local v3, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v4

    .line 445
    .local v4, "maxHostConnections":I
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v5

    .line 447
    .local v5, "maxTotalConnections":I
    iget-object v6, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v6

    .line 451
    :try_start_14
    new-instance v0, Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v0, v2}, Lorg/apache/commons/httpclient/HostConfiguration;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    move-object v2, v0

    .line 452
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .local v2, "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    move-object v8, v0

    .line 453
    .local v8, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    const/4 v0, 0x0

    .line 455
    .local v0, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    const-wide/16 v10, 0x0

    cmp-long v12, p2, v10

    if-lez v12, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v7, 0x0

    .line 456
    .local v7, "useTimeout":Z
    :goto_2b
    move-wide/from16 v12, p2

    .line 457
    .local v12, "timeToWait":J
    const-wide/16 v14, 0x0

    .line 458
    .local v14, "startWait":J
    move-object v9, v0

    move-wide/from16 v22, v10

    move-wide v10, v12

    move-wide/from16 v12, v22

    .line 460
    .end local v0    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .local v9, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .local v10, "timeToWait":J
    .local v12, "endWait":J
    :goto_35
    if-nez v3, :cond_195

    .line 462
    iget-boolean v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    if-nez v0, :cond_189

    .line 468
    iget-object v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_19b

    if-lez v0, :cond_52

    .line 469
    :try_start_43
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getFreeConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4b

    move-object v3, v0

    goto :goto_35

    .line 544
    .end local v7    # "useTimeout":Z
    .end local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local v9    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .end local v10    # "timeToWait":J
    .end local v12    # "endWait":J
    .end local v14    # "startWait":J
    :catchall_4b
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_1a0

    .line 473
    .restart local v7    # "useTimeout":Z
    .restart local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .restart local v9    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .restart local v10    # "timeToWait":J
    .restart local v12    # "endWait":J
    .restart local v14    # "startWait":J
    :cond_52
    :try_start_52
    iget v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_19b

    if-ge v0, v4, :cond_66

    :try_start_56
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v0

    if-ge v0, v5, :cond_66

    .line 476
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_4b

    move-object v3, v0

    goto :goto_35

    .line 481
    :cond_66
    :try_start_66
    iget v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_19b

    if-ge v0, v4, :cond_83

    :try_start_6a
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 484
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteLeastUsedConnection()V

    .line 485
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_4b

    move-object v3, v0

    goto :goto_35

    .line 496
    :cond_83
    if-eqz v7, :cond_b2

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-lez v0, :cond_8e

    .line 500
    move/from16 v18, v4

    goto :goto_b6

    .line 497
    :cond_8e
    :try_start_8e
    new-instance v0, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_90} :catch_aa
    .catchall {:try_start_8e .. :try_end_90} :catchall_a3

    move/from16 v18, v4

    .end local v4    # "maxHostConnections":I
    .local v18, "maxHostConnections":I
    :try_start_92
    const-string v4, "Timeout waiting for connection"

    invoke-direct {v0, v4}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_98} :catch_9d
    .catchall {:try_start_92 .. :try_end_98} :catchall_98

    .line 529
    :catchall_98
    move-exception v0

    move/from16 v19, v5

    goto/16 :goto_16b

    .line 519
    :catch_9d
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "maxTotalConnections":I
    .local v19, "maxTotalConnections":I
    :goto_a0
    const/4 v4, 0x0

    goto/16 :goto_132

    .line 529
    .end local v18    # "maxHostConnections":I
    .end local v19    # "maxTotalConnections":I
    .restart local v4    # "maxHostConnections":I
    .restart local v5    # "maxTotalConnections":I
    :catchall_a3
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "maxHostConnections":I
    .restart local v18    # "maxHostConnections":I
    goto/16 :goto_16b

    .line 519
    .end local v18    # "maxHostConnections":I
    .restart local v4    # "maxHostConnections":I
    :catch_aa
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    const/4 v4, 0x0

    .end local v4    # "maxHostConnections":I
    .restart local v18    # "maxHostConnections":I
    goto/16 :goto_132

    .line 500
    .end local v18    # "maxHostConnections":I
    .restart local v4    # "maxHostConnections":I
    :cond_b2
    move/from16 v18, v4

    const-wide/16 v16, 0x0

    .end local v4    # "maxHostConnections":I
    .restart local v18    # "maxHostConnections":I
    :goto_b6
    :try_start_b6
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 501
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_c5} :catch_12e
    .catchall {:try_start_b6 .. :try_end_c5} :catchall_12a

    move/from16 v19, v5

    .end local v5    # "maxTotalConnections":I
    .restart local v19    # "maxTotalConnections":I
    :try_start_c7
    const-string v5, "Unable to get a connection, waiting..., hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_d9

    .line 504
    .end local v19    # "maxTotalConnections":I
    .restart local v5    # "maxTotalConnections":I
    :cond_d7
    move/from16 v19, v5

    .end local v5    # "maxTotalConnections":I
    .restart local v19    # "maxTotalConnections":I
    :goto_d9
    if-nez v9, :cond_ee

    .line 505
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    move-object v9, v0

    .line 506
    iput-object v8, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .line 507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_ea} :catch_ec
    .catchall {:try_start_c7 .. :try_end_ea} :catchall_16a

    .line 512
    const/4 v4, 0x0

    goto :goto_f1

    .line 519
    :catch_ec
    move-exception v0

    goto :goto_a0

    .line 509
    :cond_ee
    const/4 v4, 0x0

    :try_start_ef
    iput-boolean v4, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 512
    :goto_f1
    if-eqz v7, :cond_f9

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 516
    :cond_f9
    iget-object v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 517
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 518
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_10c
    .catch Ljava/lang/InterruptedException; {:try_start_ef .. :try_end_10c} :catch_128
    .catchall {:try_start_ef .. :try_end_10c} :catchall_16a

    .line 529
    :try_start_10c
    iget-boolean v0, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v0, :cond_11e

    .line 533
    iget-object v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_11e
    if-eqz v7, :cond_155

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20
    :try_end_124
    .catchall {:try_start_10c .. :try_end_124} :catchall_1a2

    move-wide/from16 v12, v20

    .line 539
    const/4 v0, 0x0

    goto :goto_151

    .line 519
    :catch_128
    move-exception v0

    goto :goto_132

    .line 529
    .end local v19    # "maxTotalConnections":I
    .restart local v5    # "maxTotalConnections":I
    :catchall_12a
    move-exception v0

    move/from16 v19, v5

    .end local v5    # "maxTotalConnections":I
    .restart local v19    # "maxTotalConnections":I
    goto :goto_16b

    .line 519
    .end local v19    # "maxTotalConnections":I
    .restart local v5    # "maxTotalConnections":I
    :catch_12e
    move-exception v0

    move/from16 v19, v5

    const/4 v4, 0x0

    .line 520
    .end local v5    # "maxTotalConnections":I
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v19    # "maxTotalConnections":I
    :goto_132
    :try_start_132
    iget-boolean v5, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z
    :try_end_134
    .catchall {:try_start_132 .. :try_end_134} :catchall_16a

    if-eqz v5, :cond_15b

    .line 529
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_136
    iget-boolean v0, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v0, :cond_148

    .line 533
    iget-object v0, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_148
    if-eqz v7, :cond_155

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20
    :try_end_14e
    .catchall {:try_start_136 .. :try_end_14e} :catchall_1a2

    move-wide/from16 v12, v20

    .line 539
    const/4 v0, 0x0

    :goto_151
    sub-long v20, v12, v14

    sub-long v10, v10, v20

    .line 458
    :cond_155
    move/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_35

    .line 521
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_15b
    :try_start_15b
    sget-object v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Interrupted while waiting for connection"

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 522
    new-instance v4, Ljava/lang/IllegalThreadStateException;

    const-string v5, "Interrupted while waiting in MultiThreadedHttpConnectionManager"

    invoke-direct {v4, v5}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_16a
    .catchall {:try_start_15b .. :try_end_16a} :catchall_16a

    .line 529
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_16a
    move-exception v0

    :goto_16b
    :try_start_16b
    iget-boolean v4, v9, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    if-nez v4, :cond_17d

    .line 533
    iget-object v4, v8, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v4, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_17d
    if-eqz v7, :cond_188

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v12, v4

    .line 539
    const/4 v4, 0x0

    sub-long v4, v12, v14

    sub-long/2addr v10, v4

    :cond_188
    throw v0

    .line 463
    .end local v18    # "maxHostConnections":I
    .end local v19    # "maxTotalConnections":I
    .restart local v4    # "maxHostConnections":I
    .restart local v5    # "maxTotalConnections":I
    :cond_189
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "maxHostConnections":I
    .end local v5    # "maxTotalConnections":I
    .restart local v18    # "maxHostConnections":I
    .restart local v19    # "maxTotalConnections":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Connection factory has been shutdown."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    .end local v7    # "useTimeout":Z
    .end local v8    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local v9    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .end local v10    # "timeToWait":J
    .end local v12    # "endWait":J
    .end local v14    # "startWait":J
    .end local v18    # "maxHostConnections":I
    .end local v19    # "maxTotalConnections":I
    .restart local v4    # "maxHostConnections":I
    .restart local v5    # "maxTotalConnections":I
    :cond_195
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "maxHostConnections":I
    .end local v5    # "maxTotalConnections":I
    .restart local v18    # "maxHostConnections":I
    .restart local v19    # "maxTotalConnections":I
    monitor-exit v6

    .line 545
    return-object v3

    .line 544
    .end local v2    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v18    # "maxHostConnections":I
    .end local v19    # "maxTotalConnections":I
    .restart local v4    # "maxHostConnections":I
    .restart local v5    # "maxTotalConnections":I
    .restart local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_19b
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "maxHostConnections":I
    .end local v5    # "maxTotalConnections":I
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v2    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .restart local v18    # "maxHostConnections":I
    .restart local v19    # "maxTotalConnections":I
    :goto_1a0
    monitor-exit v6
    :try_end_1a1
    .catchall {:try_start_16b .. :try_end_1a1} :catchall_1a2

    throw v0

    :catchall_1a2
    move-exception v0

    goto :goto_1a0
.end method

.method private static removeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V
    .registers 4
    .param p0, "connection"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v0

    .line 233
    :try_start_3
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static shutdownAll()V
    .registers 5

    .line 113
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v0

    .line 115
    :try_start_3
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_43

    .line 119
    :try_start_6
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->ALL_CONNECTION_MANAGERS:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    check-cast v2, [Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 127
    .local v2, "connManagers":[Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v2

    if-ge v3, v4, :cond_2c

    .line 128
    aget-object v4, v2, v3

    if-eqz v4, :cond_29

    .line 129
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown()V

    .line 127
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 131
    .end local v2    # "connManagers":[Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .end local v3    # "i":I
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_40

    .line 134
    :try_start_2d
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-eqz v1, :cond_39

    .line 135
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->shutdown()V

    .line 136
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    .line 138
    :cond_39
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 139
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_43

    .line 140
    return-void

    .line 131
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw v2

    .line 139
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private static shutdownCheckedOutConnections(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .registers 7
    .param p0, "connectionPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "connectionsToClose":Ljava/util/ArrayList;
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    .line 195
    :try_start_8
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 196
    .local v2, "referenceIter":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 198
    .local v3, "ref":Ljava/lang/ref/Reference;
    sget-object v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    .line 200
    .local v4, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    iget-object v5, v4, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    if-ne v5, p0, :cond_38

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 202
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/httpclient/HttpConnection;

    .line 203
    .local v5, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v5, :cond_38

    .line 204
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v3    # "ref":Ljava/lang/ref/Reference;
    .end local v4    # "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    .end local v5    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_38
    goto :goto_12

    .line 208
    .end local v2    # "referenceIter":Ljava/util/Iterator;
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_56

    .line 212
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/HttpConnection;

    .line 214
    .local v2, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 217
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HttpConnection;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 218
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 219
    .end local v2    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    goto :goto_3e

    .line 220
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_55
    return-void

    .line 208
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method

.method private static storeReferenceToConnection(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    .registers 7
    .param p0, "connection"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "connectionPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 165
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    .line 166
    .local v0, "source":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;
    iput-object p2, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 167
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionSource;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 169
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    monitor-enter v1

    .line 172
    :try_start_d
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    if-nez v2, :cond_1d

    .line 173
    new-instance v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;-><init>()V

    sput-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    .line 174
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_QUEUE_THREAD:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ReferenceQueueThread;->start()V

    .line 177
    :cond_1d
    sget-object v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->REFERENCE_TO_CONNECTION_SOURCE:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->reference:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v2
.end method


# virtual methods
.method public closeIdleConnections(J)V
    .registers 4
    .param p1, "idleTimeout"    # J

    .line 618
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->closeIdleConnections(J)V

    .line 619
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->deleteClosedConnections()V

    .line 620
    return-void
.end method

.method public deleteClosedConnections()V
    .registers 2

    .line 611
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteClosedConnections()V

    .line 612
    return-void
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 371
    :goto_0
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0
    :try_end_6
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 372
    :catch_7
    move-exception v0

    .line 376
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    sget-object v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Unexpected exception while waiting for connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    goto :goto_0
.end method

.method public getConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 7
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .line 431
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.getConnection(HostConfiguration, long)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 433
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0
    :try_end_b
    .catch Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 434
    :catch_c
    move-exception v0

    .line 435
    .local v0, "e":Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
    new-instance v1, Lorg/apache/commons/httpclient/HttpException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 7
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 405
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.getConnectionWithTimeout(HostConfiguration, long)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 407
    if-eqz p1, :cond_39

    .line 411
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 412
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "HttpConnectionManager.getConnection:  config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 416
    :cond_2f
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->doGetConnection(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v0

    .line 420
    .local v0, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    invoke-direct {v1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;-><init>(Lorg/apache/commons/httpclient/HttpConnection;)V

    return-object v1

    .line 408
    .end local v0    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionsInPool()I
    .registers 3

    .line 574
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-static {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 576
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .registers 5
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 559
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v0

    .line 560
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 561
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-eqz v1, :cond_f

    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    nop

    :cond_f
    monitor-exit v0

    return v2

    .line 562
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getConnectionsInUse()I
    .registers 2

    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInUse(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .registers 3
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    .line 588
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getConnectionsInPool(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost()I
    .registers 2

    .line 337
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getDefaultMaxConnectionsPerHost()I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .registers 2

    .line 361
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
    .registers 2

    .line 679
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    return-object v0
.end method

.method public isConnectionStaleCheckingEnabled()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 4
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 630
    sget-object v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnectionManager.releaseConnection(HttpConnection)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 632
    instance-of v0, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    if-eqz v0, :cond_12

    .line 634
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object p1

    .line 641
    :cond_12
    invoke-static {p1}, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;->finishLastResponse(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 643
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 644
    return-void
.end method

.method public setConnectionStaleCheckingEnabled(Z)V
    .registers 3
    .param p1, "connectionStaleCheckingEnabled"    # Z

    .line 309
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setStaleCheckingEnabled(Z)V

    .line 310
    return-void
.end method

.method public setMaxConnectionsPerHost(I)V
    .registers 3
    .param p1, "maxHostConnections"    # I

    .line 323
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 324
    return-void
.end method

.method public setMaxTotalConnections(I)V
    .registers 3
    .param p1, "maxTotalConnections"    # I

    .line 349
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 350
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;)V
    .registers 4
    .param p1, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 691
    if-eqz p1, :cond_5

    .line 694
    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->params:Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    .line 695
    return-void

    .line 692
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    .line 275
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 276
    :try_start_4
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    if-nez v1, :cond_10

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown:Z

    .line 278
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->connectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->shutdown()V

    .line 280
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 274
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
