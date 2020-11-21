.class public Lorg/apache/commons/httpclient/util/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$util$IdleConnectionHandler:Ljava/lang/Class;


# instance fields
.field private connectionToAdded:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    sget-object v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->class$org$apache$commons$httpclient$util$IdleConnectionHandler:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.util.IdleConnectionHandler"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->class$org$apache$commons$httpclient$util$IdleConnectionHandler:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->class$org$apache$commons$httpclient$util$IdleConnectionHandler:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    .line 61
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 51
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
.method public add(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 6
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 73
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 75
    .local v0, "timeAdded":Ljava/lang/Long;
    sget-object v1, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 76
    sget-object v1, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Adding connection at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 79
    :cond_27
    iget-object v1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public closeIdleConnections(J)V
    .registers 11
    .param p1, "idleTime"    # J

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 107
    .local v0, "idleTimeout":J
    sget-object v2, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 108
    sget-object v2, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Checking for connections, idleTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 111
    :cond_23
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    .local v2, "connectionIter":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/HttpConnection;

    .line 115
    .local v3, "conn":Lorg/apache/commons/httpclient/HttpConnection;
    iget-object v4, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 116
    .local v4, "connectionTime":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_6d

    .line 117
    sget-object v5, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 118
    sget-object v5, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Closing connection, connection time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 120
    :cond_67
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 121
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 123
    .end local v3    # "conn":Lorg/apache/commons/httpclient/HttpConnection;
    .end local v4    # "connectionTime":Ljava/lang/Long;
    :cond_6d
    goto :goto_2d

    .line 124
    :cond_6e
    return-void
.end method

.method public remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 3
    .param p1, "connection"    # Lorg/apache/commons/httpclient/HttpConnection;

    .line 87
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public removeAll()V
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->connectionToAdded:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    return-void
.end method
