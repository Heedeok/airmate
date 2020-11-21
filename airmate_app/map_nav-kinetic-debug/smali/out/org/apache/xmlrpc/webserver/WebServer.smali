.class public Lorg/apache/xmlrpc/webserver/WebServer;
.super Ljava/lang/Object;
.source "WebServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    }
.end annotation


# static fields
.field static final HTTP_11:Ljava/lang/String; = "HTTP/1.1"


# instance fields
.field protected final accept:Ljava/util/List;

.field private address:Ljava/net/InetAddress;

.field protected final deny:Ljava/util/List;

.field private listener:Ljava/lang/Thread;

.field private paranoid:Z

.field private pool:Lorg/apache/xmlrpc/util/ThreadPool;

.field private port:I

.field protected final server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field protected serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "pPort"    # I

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;-><init>(ILjava/net/InetAddress;)V

    .line 137
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 4
    .param p1, "pPort"    # I
    .param p2, "pAddr"    # Ljava/net/InetAddress;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    .line 118
    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/WebServer;->newXmlRpcStreamServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    .line 145
    iput-object p2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->address:Ljava/net/InetAddress;

    .line 146
    iput p1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->port:I

    .line 147
    return-void
.end method

.method private declared-synchronized setupServerSocket(I)V
    .registers 11
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 181
    const/4 v0, 0x1

    .line 183
    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->port:I

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->address:Ljava/net/InetAddress;

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/xmlrpc/webserver/WebServer;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    .line 185
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getSoTimeout()I

    move-result v1

    if-gtz v1, :cond_1b

    .line 186
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1b
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_1b} :catch_1f
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    .line 188
    :cond_1b
    monitor-exit p0

    return-void

    .line 180
    .end local v0    # "i":I
    .end local p1    # "backlog":I
    :catchall_1d
    move-exception p1

    goto :goto_42

    .line 189
    .restart local v0    # "i":I
    .restart local p1    # "backlog":I
    :catch_1f
    move-exception v1

    .line 190
    .local v1, "e":Ljava/net/BindException;
    const/16 v2, 0xa

    if-eq v0, v2, :cond_41

    .line 193
    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 195
    .local v2, "waitUntil":J
    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_1d

    const/4 v6, 0x0

    sub-long v4, v2, v4

    .line 196
    .local v4, "l":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3e

    .line 198
    :try_start_38
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_1d

    .line 200
    goto :goto_3d

    .line 199
    :catch_3c
    move-exception v6

    .line 204
    .end local v4    # "l":J
    :goto_3d
    goto :goto_2b

    .line 181
    .end local v1    # "e":Ljava/net/BindException;
    .end local v2    # "waitUntil":J
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    .restart local v1    # "e":Ljava/net/BindException;
    :cond_41
    :try_start_41
    throw v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1d

    .line 180
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/net/BindException;
    .end local p1    # "backlog":I
    :goto_42
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public acceptClient(Ljava/lang/String;)V
    .registers 4
    .param p1, "pAddress"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method protected allowConnection(Ljava/net/Socket;)Z
    .registers 9
    .param p1, "s"    # Ljava/net/Socket;

    .line 281
    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 282
    return v1

    .line 285
    :cond_6
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    .local v0, "l":I
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 287
    .local v2, "addr":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v0, :cond_2a

    .line 288
    iget-object v5, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    .line 289
    .local v5, "match":Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    invoke-virtual {v5, v2}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->matches([B)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 291
    return v3

    .line 287
    .end local v5    # "match":Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 294
    .end local v4    # "i":I
    :cond_2a
    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_31
    if-ge v4, v0, :cond_45

    .line 296
    iget-object v5, p0, Lorg/apache/xmlrpc/webserver/WebServer;->accept:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    .line 297
    .restart local v5    # "match":Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    invoke-virtual {v5, v2}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->matches([B)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 298
    return v1

    .line 295
    .end local v5    # "match":Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 301
    .end local v4    # "i":I
    :cond_45
    return v3
.end method

.method protected createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 5
    .param p1, "pPort"    # I
    .param p2, "backlog"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public denyClient(Ljava/lang/String;)V
    .registers 4
    .param p1, "pAddress"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->deny:Ljava/util/List;

    new-instance v1, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public getPort()I
    .registers 2

    .line 396
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getXmlRpcServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .registers 2

    .line 417
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    return-object v0
.end method

.method protected isParanoid()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pError"    # Ljava/lang/Throwable;

    .line 402
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "msg":Ljava/lang/String;
    :goto_13
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    return-void
.end method

.method protected newTask(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .registers 5
    .param p1, "pServer"    # Lorg/apache/xmlrpc/webserver/WebServer;
    .param p2, "pXmlRpcServer"    # Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .param p3, "pSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/webserver/Connection;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V

    return-object v0
.end method

.method protected newThreadPool()Lorg/apache/xmlrpc/util/ThreadPool;
    .registers 4

    .line 370
    new-instance v0, Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getMaxThreads()I

    move-result v1

    const-string v2, "XML-RPC"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/util/ThreadPool;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected newXmlRpcStreamServer()Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
    .registers 2

    .line 121
    new-instance v0, Lorg/apache/xmlrpc/webserver/ConnectionServer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/webserver/ConnectionServer;-><init>()V

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 322
    invoke-virtual {p0}, Lorg/apache/xmlrpc/webserver/WebServer;->newThreadPool()Lorg/apache/xmlrpc/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    .line 324
    :goto_6
    :try_start_6
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_80

    if-eqz v0, :cond_6b

    .line 326
    :try_start_a
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_10} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_64
    .catchall {:try_start_a .. :try_end_10} :catchall_80

    .line 328
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    :try_start_11
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_14} :catch_15
    .catch Ljava/io/InterruptedIOException; {:try_start_11 .. :try_end_14} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_64
    .catchall {:try_start_11 .. :try_end_14} :catchall_80

    .line 331
    goto :goto_19

    .line 329
    :catch_15
    move-exception v1

    .line 330
    .local v1, "socketOptEx":Ljava/net/SocketException;
    :try_start_16
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_19
    .catch Ljava/io/InterruptedIOException; {:try_start_16 .. :try_end_19} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_64
    .catchall {:try_start_16 .. :try_end_19} :catchall_80

    .line 334
    .end local v1    # "socketOptEx":Ljava/net/SocketException;
    :goto_19
    :try_start_19
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->allowConnection(Ljava/net/Socket;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 336
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 337
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {p0, p0, v1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->newTask(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v1

    .line 338
    .local v1, "task":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v2, v1}, Lorg/apache/xmlrpc/util/ThreadPool;->startTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 339
    const/4 v0, 0x0

    goto :goto_53

    .line 341
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum load of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v3}, Lorg/apache/xmlrpc/util/ThreadPool;->getMaxThreads()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeded, rejecting client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_5b

    .line 346
    .end local v1    # "task":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    :cond_53
    :goto_53
    if-eqz v0, :cond_6a

    :try_start_55
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/io/InterruptedIOException; {:try_start_55 .. :try_end_58} :catch_69
    .catchall {:try_start_55 .. :try_end_58} :catchall_80

    goto :goto_6a

    :catch_59
    move-exception v1

    goto :goto_6a

    :catchall_5b
    move-exception v1

    if-eqz v0, :cond_63

    :try_start_5e
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/io/InterruptedIOException; {:try_start_5e .. :try_end_61} :catch_69
    .catchall {:try_start_5e .. :try_end_61} :catchall_80

    goto :goto_63

    :catch_62
    move-exception v2

    .line 347
    :cond_63
    :goto_63
    :try_start_63
    throw v1
    :try_end_64
    .catch Ljava/io/InterruptedIOException; {:try_start_63 .. :try_end_64} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_64} :catch_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_80

    .line 351
    .end local v0    # "socket":Ljava/net/Socket;
    :catch_64
    move-exception v0

    .line 352
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_65
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_80

    goto :goto_6a

    .line 348
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_69
    move-exception v0

    .line 353
    :cond_6a
    :goto_6a
    goto :goto_6

    .line 356
    :cond_6b
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_79

    .line 358
    :try_start_6f
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_75

    .line 361
    goto :goto_79

    .line 359
    :catch_75
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    :cond_79
    :goto_79
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V

    .line 366
    nop

    .line 367
    return-void

    .line 356
    :catchall_80
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_8f

    .line 358
    :try_start_85
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_8b

    .line 361
    goto :goto_8f

    .line 359
    :catch_8b
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8f
    :goto_8f
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V

    .line 366
    throw v0
.end method

.method public setParanoid(Z)V
    .registers 2
    .param p1, "pParanoid"    # Z

    .line 235
    iput-boolean p1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->paranoid:Z

    .line 236
    return-void
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    if-eqz v0, :cond_16

    .line 383
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    .line 384
    .local v0, "l":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 386
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    if-eqz v1, :cond_16

    .line 387
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/WebServer;->pool:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/util/ThreadPool;->shutdown()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 390
    .end local v0    # "l":Ljava/lang/Thread;
    :cond_16
    monitor-exit p0

    return-void

    .line 381
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->setupServerSocket(I)V

    .line 221
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    if-nez v0, :cond_17

    .line 222
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "XML-RPC Weblistener"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    .line 224
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer;->listener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    :cond_17
    return-void
.end method
