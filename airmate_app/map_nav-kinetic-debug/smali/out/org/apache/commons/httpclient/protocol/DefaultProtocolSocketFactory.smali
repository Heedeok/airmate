.class public Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
.super Ljava/lang/Object;
.source "DefaultProtocolSocketFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;


# static fields
.field private static final factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static getSocketFactory()Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;
    .registers 1

    .line 61
    sget-object v0, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->factory:Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/commons/httpclient/params/HttpConnectionParams;)Ljava/net/Socket;
    .registers 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "params"    # Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lorg/apache/commons/httpclient/ConnectTimeoutException;
        }
    .end annotation

    .line 117
    if-eqz p5, :cond_25

    .line 120
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getConnectionTimeout()I

    move-result v6

    .line 121
    .local v6, "timeout":I
    if-nez v6, :cond_d

    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/httpclient/protocol/DefaultProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 125
    :cond_d
    const-string v0, "javax.net.SocketFactory"

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ReflectionSocketFactory;->createSocket(Ljava/lang/String;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v7

    .line 127
    .local v7, "socket":Ljava/net/Socket;
    if-nez v7, :cond_24

    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ControllerThreadSocketFactory;->createSocket(Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;Ljava/lang/String;ILjava/net/InetAddress;II)Ljava/net/Socket;

    move-result-object v7

    .line 131
    :cond_24
    return-object v7

    .line 118
    .end local v6    # "timeout":I
    .end local v7    # "socket":Ljava/net/Socket;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 147
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
