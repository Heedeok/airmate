.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionPool"
.end annotation


# instance fields
.field private freeConnections:Ljava/util/LinkedList;

.field private idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

.field private final mapHosts:Ljava/util/Map;

.field private numConnections:I

.field private final synthetic this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

.field private waitingThreads:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V
    .registers 2

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 703
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    .line 706
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    .line 712
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    .line 714
    new-instance p1, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-direct {p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    .line 717
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;

    .line 700
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 700
    iget v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;

    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    monitor-enter p0

    .line 886
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 888
    .local v0, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 889
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Reclaiming connection, hostConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 892
    :cond_29
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 894
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    .line 896
    .local v2, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    sub-int/2addr v3, v1

    iput v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 898
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 899
    iget v1, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v1, :cond_51

    iget-object v1, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 902
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_51
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v1, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    .line 907
    monitor-exit p0

    return-void

    .line 885
    .end local v0    # "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v2    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local p1    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized closeIdleConnections(J)V
    .registers 4
    .param p1, "idleTimeout"    # J

    monitor-enter p0

    .line 872
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 873
    monitor-exit p0

    return-void

    .line 871
    .end local p1    # "idleTimeout":J
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 7
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 758
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 759
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 760
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Allocating new connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 762
    :cond_28
    new-instance v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    invoke-direct {v2, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 764
    .local v2, "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v4}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$800(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 765
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 766
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 767
    iget v3, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/2addr v3, v0

    iput v3, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 771
    invoke-static {v2, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_4e

    .line 772
    monitor-exit p0

    return-object v2

    .line 757
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local v2    # "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteClosedConnections()V
    .registers 4

    monitor-enter p0

    .line 856
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 858
    .local v0, "iter":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpConnection;

    .line 860
    .local v1, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 862
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    .line 864
    .end local v1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    :cond_1f
    goto :goto_7

    .line 865
    :cond_20
    monitor-exit p0

    return-void

    .line 855
    .end local v0    # "iter":Ljava/util/Iterator;
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteLeastUsedConnection()V
    .registers 4

    monitor-enter p0

    .line 914
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 916
    .local v0, "connection":Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v0, :cond_f

    .line 917
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_22

    .line 918
    :cond_f
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 919
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Attempted to reclaim an unused connection but there were none."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 921
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 913
    .end local v0    # "connection":Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 8
    .param p1, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 976
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 978
    .local v0, "connectionConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 979
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Freeing connection, hostConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 982
    :cond_28
    monitor-enter p0

    .line 984
    :try_start_29
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 987
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 988
    monitor-exit p0

    return-void

    .line 991
    :cond_36
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    .line 994
    .local v2, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 995
    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v3, :cond_5e

    .line 997
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 999
    iput v1, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 1002
    :cond_5e
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1005
    move-object v3, p1

    check-cast v3, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    .line 1006
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    if-nez v3, :cond_87

    .line 1008
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 1010
    iput v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 1014
    :cond_87
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v1, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->add(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1016
    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V

    .line 1017
    .end local v2    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    monitor-exit p0

    .line 1018
    return-void

    .line 1017
    :catchall_91
    move-exception v1

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_29 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public declared-synchronized getFreeConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 7
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 832
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-eqz v1, :cond_4a

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4a

    .line 833
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    move-object v0, v2

    .line 834
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 837
    invoke-static {v0, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    .line 838
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 839
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Getting free connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 843
    :cond_44
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_6c

    .line 844
    :cond_4a
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 845
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "There were no free connections to get, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6e

    .line 848
    :cond_6c
    :goto_6c
    monitor-exit p0

    return-object v0

    .line 827
    .end local v0    # "connection":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .registers 6
    .param p1, "hostConfiguration"    # Lorg/apache/commons/httpclient/HostConfiguration;
    .param p2, "create"    # Z

    monitor-enter p0

    .line 805
    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 808
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .line 810
    .local v0, "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-nez v0, :cond_24

    if-eqz p2, :cond_24

    .line 812
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    move-object v0, v1

    .line 813
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 814
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 817
    :cond_24
    monitor-exit p0

    return-object v0

    .line 804
    .end local v0    # "listConnections":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local p1    # "hostConfiguration":Lorg/apache/commons/httpclient/HostConfiguration;
    .end local p2    # "create":Z
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 5
    .param p1, "config"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 782
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 783
    .local v1, "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 784
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v2, :cond_1c

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 787
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_1c
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 791
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    .line 792
    monitor-exit p0

    return-void

    .line 781
    .end local v1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .end local p1    # "config":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Lorg/apache/commons/httpclient/HostConfiguration;

    monitor-enter p0

    .line 930
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 931
    monitor-exit p0

    return-void

    .line 929
    .end local p1    # "configuration":Lorg/apache/commons/httpclient/HostConfiguration;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    .registers 6
    .param p1, "hostPool"    # Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    monitor-enter p0

    .line 945
    const/4 v0, 0x0

    .line 947
    .local v0, "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :try_start_2
    iget-object v1, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 948
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 949
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Notifying thread waiting on host pool, hostConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 952
    :cond_2e
    iget-object v1, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v0, v1

    .line 953
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 954
    :cond_3d
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_69

    .line 955
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 956
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "No-one waiting on host pool, notifying next waiting thread."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 958
    :cond_58
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v0, v1

    .line 959
    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    iget-object v1, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 960
    :cond_69
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 961
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Notifying no-one, there are no waiting threads"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 964
    :cond_7c
    :goto_7c
    if-eqz v0, :cond_86

    .line 965
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 966
    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_86
    .catchall {:try_start_2 .. :try_end_86} :catchall_88

    .line 968
    :cond_86
    monitor-exit p0

    return-void

    .line 944
    .end local v0    # "waitingThread":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    .end local p1    # "hostPool":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .registers 4

    monitor-enter p0

    .line 725
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 726
    .local v0, "iter":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 727
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpConnection;

    .line 728
    .local v1, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 729
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 730
    .end local v1    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    goto :goto_7

    .line 733
    :cond_1a
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$600(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    .line 736
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .line 737
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    .line 739
    .local v1, "waiter":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 740
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 741
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 742
    .end local v1    # "waiter":Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    goto :goto_24

    .line 745
    :cond_3c
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 748
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->removeAll()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 749
    monitor-exit p0

    return-void

    .line 724
    .end local v0    # "iter":Ljava/util/Iterator;
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method
