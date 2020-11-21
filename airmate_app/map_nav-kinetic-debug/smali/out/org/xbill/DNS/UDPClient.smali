.class final Lorg/xbill/DNS/UDPClient;
.super Lorg/xbill/DNS/Client;
.source "UDPClient.java"


# static fields
.field private static final EPHEMERAL_RANGE:I = 0xfbff

.field private static final EPHEMERAL_START:I = 0x400

.field private static final EPHEMERAL_STOP:I = 0xffff

.field private static prng:Ljava/security/SecureRandom;

.field private static volatile prng_initializing:Z


# instance fields
.field private bound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/xbill/DNS/UDPClient$1;

    invoke-direct {v1}, Lorg/xbill/DNS/UDPClient$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/security/SecureRandom;
    .registers 1

    .line 11
    sget-object v0, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 11
    sput-boolean p0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    return p0
.end method

.method private bind_random(Ljava/net/InetSocketAddress;)V
    .registers 8
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_10

    .line 55
    const-wide/16 v0, 0x2

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    .line 58
    goto :goto_b

    .line 57
    :catch_a
    move-exception v0

    .line 59
    :goto_b
    sget-boolean v0, Lorg/xbill/DNS/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_10

    .line 60
    return-void

    .line 63
    :cond_10
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 66
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v1, "i":I
    .local v2, "temp":Ljava/net/InetSocketAddress;
    :goto_1a
    const/16 v3, 0x400

    if-ge v1, v3, :cond_4a

    .line 68
    :try_start_1e
    sget-object v4, Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;

    const v5, 0xfbff

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 70
    .local v4, "port":I
    if-eqz p1, :cond_35

    .line 71
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .end local v2    # "temp":Ljava/net/InetSocketAddress;
    move-object v2, v3

    goto :goto_3b

    .line 74
    .restart local v2    # "temp":Ljava/net/InetSocketAddress;
    :cond_35
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .end local v2    # "temp":Ljava/net/InetSocketAddress;
    move-object v2, v3

    .line 75
    .restart local v2    # "temp":Ljava/net/InetSocketAddress;
    :goto_3b
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 76
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/xbill/DNS/UDPClient;->bound:Z
    :try_end_45
    .catch Ljava/net/SocketException; {:try_start_1e .. :try_end_45} :catch_46

    .line 77
    return-void

    .line 79
    .end local v4    # "port":I
    :catch_46
    move-exception v3

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 82
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B
    .registers 8
    .param p0, "local"    # Ljava/net/SocketAddress;
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "data"    # [B
    .param p3, "max"    # I
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/xbill/DNS/UDPClient;

    invoke-direct {v0, p4, p5}, Lorg/xbill/DNS/UDPClient;-><init>(J)V

    .line 147
    .local v0, "client":Lorg/xbill/DNS/UDPClient;
    :try_start_5
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 148
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/UDPClient;->connect(Ljava/net/SocketAddress;)V

    .line 149
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/UDPClient;->send([B)V

    .line 150
    invoke-virtual {v0, p3}, Lorg/xbill/DNS/UDPClient;->recv(I)[B

    move-result-object v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 153
    invoke-virtual {v0}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    return-object v1

    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Lorg/xbill/DNS/UDPClient;->cleanup()V

    throw v1
.end method

.method static sendrecv(Ljava/net/SocketAddress;[BIJ)[B
    .registers 11
    .param p0, "addr"    # Ljava/net/SocketAddress;
    .param p1, "data"    # [B
    .param p2, "max"    # I
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_f

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_1a

    .line 90
    :cond_f
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/UDPClient;->bind_random(Ljava/net/InetSocketAddress;)V

    .line 91
    iget-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-eqz v0, :cond_1a

    .line 92
    return-void

    .line 95
    :cond_1a
    if-eqz p1, :cond_2e

    .line 96
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 97
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    .line 100
    .end local v0    # "channel":Ljava/nio/channels/DatagramChannel;
    :cond_2e
    return-void
.end method

.method connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/xbill/DNS/UDPClient;->bound:Z

    if-nez v0, :cond_8

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 106
    :cond_8
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 107
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 108
    return-void
.end method

.method recv(I)[B
    .registers 10
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 120
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    new-array v1, p1, [B

    .line 121
    .local v1, "temp":[B
    iget-object v2, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 123
    :goto_10
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-nez v3, :cond_21

    .line 124
    iget-object v3, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v4, p0, Lorg/xbill/DNS/UDPClient;->endTime:J

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/UDPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_4f

    goto :goto_10

    .line 127
    :cond_21
    iget-object v3, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 128
    iget-object v3, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 130
    :cond_2e
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    .line 131
    .local v3, "ret":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_49

    .line 133
    long-to-int v5, v3

    .line 134
    .local v5, "len":I
    new-array v6, v5, [B

    .line 135
    .local v6, "data":[B
    invoke-static {v1, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    const-string v2, "UDP read"

    invoke-static {v2, v6}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 137
    return-object v6

    .line 132
    .end local v5    # "len":I
    .end local v6    # "data":[B
    :cond_49
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 127
    .end local v3    # "ret":J
    :catchall_4f
    move-exception v3

    iget-object v4, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 128
    iget-object v4, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_5d
    throw v3
.end method

.method send([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 113
    .local v0, "channel":Ljava/nio/channels/DatagramChannel;
    const-string v1, "UDP write"

    invoke-static {v1, p1}, Lorg/xbill/DNS/UDPClient;->verboseLog(Ljava/lang/String;[B)V

    .line 114
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 115
    return-void
.end method
