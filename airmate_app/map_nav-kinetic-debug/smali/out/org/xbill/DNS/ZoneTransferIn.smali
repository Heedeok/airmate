.class public Lorg/xbill/DNS/ZoneTransferIn;
.super Ljava/lang/Object;
.source "ZoneTransferIn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ZoneTransferIn$Delta;
    }
.end annotation


# static fields
.field private static final AXFR:I = 0x6

.field private static final END:I = 0x7

.field private static final FIRSTDATA:I = 0x1

.field private static final INITIALSOA:I = 0x0

.field private static final IXFR_ADD:I = 0x5

.field private static final IXFR_ADDSOA:I = 0x4

.field private static final IXFR_DEL:I = 0x3

.field private static final IXFR_DELSOA:I = 0x2


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private axfr:Ljava/util/List;

.field private client:Lorg/xbill/DNS/TCPClient;

.field private current_serial:J

.field private dclass:I

.field private end_serial:J

.field private initialsoa:Lorg/xbill/DNS/Record;

.field private ixfr:Ljava/util/List;

.field private ixfr_serial:J

.field private localAddress:Ljava/net/SocketAddress;

.field private qtype:I

.field private rtype:I

.field private state:I

.field private timeout:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

.field private want_fallback:Z

.field private zname:Lorg/xbill/DNS/Name;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 96
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V
    .registers 11
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "xfrtype"    # I
    .param p3, "serial"    # J
    .param p5, "fallback"    # Z
    .param p6, "address"    # Ljava/net/SocketAddress;
    .param p7, "key"    # Lorg/xbill/DNS/TSIG;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 102
    iput-object p6, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    .line 103
    iput-object p7, p0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    .line 104
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 105
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    goto :goto_1e

    .line 108
    :cond_15
    :try_start_15
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;
    :try_end_1d
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_15 .. :try_end_1d} :catch_2b

    .line 113
    nop

    .line 115
    :goto_1e
    iput p2, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 117
    iput-wide p3, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    .line 118
    iput-boolean p5, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 120
    return-void

    .line 110
    :catch_2b
    move-exception v0

    .line 111
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ZoneTransferIn: name too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeConnection()V
    .registers 2

    .line 444
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    if-eqz v0, :cond_9

    .line 445
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 448
    :cond_9
    goto :goto_b

    .line 447
    :catch_a
    move-exception v0

    .line 449
    :goto_b
    return-void
.end method

.method private doxfr()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->sendQuery()V

    .line 466
    :goto_3
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_99

    .line 467
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->recv()[B

    move-result-object v0

    .line 468
    .local v0, "in":[B
    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v2

    .line 469
    .local v2, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v3, :cond_31

    .line 472
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v3

    .line 474
    .local v3, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    invoke-virtual {v4, v2, v0}, Lorg/xbill/DNS/TSIG$StreamVerifier;->verify(Lorg/xbill/DNS/Message;[B)I

    move-result v4

    .line 475
    .local v4, "error":I
    if-eqz v4, :cond_31

    .line 476
    const-string v5, "TSIG failure"

    invoke-direct {p0, v5}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 479
    .end local v3    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    .end local v4    # "error":I
    :cond_31
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 481
    .local v3, "answers":[Lorg/xbill/DNS/Record;
    iget v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-nez v4, :cond_78

    .line 482
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v4

    .line 483
    .local v4, "rcode":I
    const/16 v5, 0xfb

    if-eqz v4, :cond_57

    .line 484
    iget v6, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v6, v5, :cond_50

    const/4 v6, 0x4

    if-ne v4, v6, :cond_50

    .line 487
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 488
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    .line 489
    return-void

    .line 491
    :cond_50
    invoke-static {v4}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 494
    :cond_57
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    .line 495
    .local v6, "question":Lorg/xbill/DNS/Record;
    if-eqz v6, :cond_6a

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-eq v7, v8, :cond_6a

    .line 496
    const-string v7, "invalid question section"

    invoke-direct {p0, v7}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 499
    :cond_6a
    array-length v7, v3

    if-nez v7, :cond_78

    iget v7, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v7, v5, :cond_78

    .line 500
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 501
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    .line 502
    return-void

    .line 506
    .end local v4    # "rcode":I
    .end local v6    # "question":Lorg/xbill/DNS/Record;
    :cond_78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_79
    array-length v5, v3

    if-ge v4, v5, :cond_84

    .line 507
    aget-object v5, v3, v4

    invoke-direct {p0, v5}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    .line 510
    .end local v4    # "i":I
    :cond_84
    iget v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-ne v4, v1, :cond_97

    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v1, :cond_97

    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v1

    if-nez v1, :cond_97

    .line 512
    const-string v1, "last message must be signed"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 513
    .end local v0    # "in":[B
    .end local v2    # "response":Lorg/xbill/DNS/Message;
    .end local v3    # "answers":[Lorg/xbill/DNS/Record;
    :cond_97
    goto/16 :goto_3

    .line 514
    :cond_99
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 320
    new-instance v0, Lorg/xbill/DNS/ZoneTransferException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/ZoneTransferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallback()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 325
    iget-boolean v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    if-nez v0, :cond_9

    .line 326
    const-string v0, "server doesn\'t support IXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 328
    :cond_9
    const-string v0, "falling back to AXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0xfc

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 331
    return-void
.end method

.method private getSOASerial(Lorg/xbill/DNS/Record;)J
    .registers 5
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .line 308
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    .line 309
    .local v0, "soa":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v1

    return-wide v1
.end method

.method private logxfr(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 314
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 315
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :cond_23
    return-void
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 5
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 148
    if-nez p2, :cond_4

    .line 149
    const/16 p2, 0x35

    .line 150
    :cond_4
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p3}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 4
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 12
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "key"    # Lorg/xbill/DNS/TSIG;

    .line 132
    new-instance v8, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v2, 0xfc

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v8
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 13
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 204
    if-nez p5, :cond_4

    .line 205
    const/16 p5, 0x35

    .line 206
    :cond_4
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 13
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 225
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .registers 15
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "address"    # Ljava/net/SocketAddress;
    .param p5, "key"    # Lorg/xbill/DNS/TSIG;

    .line 183
    new-instance v8, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v2, 0xfb

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v8
.end method

.method private openConnection()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    add-long/2addr v0, v2

    .line 279
    .local v0, "endTime":J
    new-instance v2, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v2, v0, v1}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    .line 280
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    if-eqz v2, :cond_19

    .line 281
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 282
    :cond_19
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 283
    return-void
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 454
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 456
    :catch_6
    move-exception v0

    .line 457
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-eqz v1, :cond_f

    .line 458
    move-object v1, v0

    check-cast v1, Lorg/xbill/DNS/WireParseException;

    throw v1

    .line 459
    :cond_f
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Error parsing message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseRR(Lorg/xbill/DNS/Record;)V
    .registers 13
    .param p1, "rec"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    .line 338
    .local v0, "type":I
    iget v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0xfb

    const/4 v6, 0x1

    const/4 v7, 0x6

    packed-switch v1, :pswitch_data_14e

    .line 436
    const-string v1, "invalid state"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_14d

    .line 432
    :pswitch_17
    const-string v1, "extra data"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 433
    goto/16 :goto_14d

    .line 423
    :pswitch_1e
    if-ne v0, v6, :cond_2a

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    iget v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    if-eq v1, v2, :cond_2a

    .line 424
    goto/16 :goto_14d

    .line 425
    :cond_2a
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    if-ne v0, v7, :cond_14d

    .line 427
    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_14d

    .line 403
    :pswitch_35
    if-ne v0, v7, :cond_70

    .line 404
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v7

    .line 405
    .local v7, "soa_serial":J
    iget-wide v9, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    cmp-long v1, v7, v9

    if-nez v1, :cond_45

    .line 406
    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 407
    goto/16 :goto_14d

    .line 408
    :cond_45
    iget-wide v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    cmp-long v1, v7, v3

    if-eqz v1, :cond_6a

    .line 409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IXFR out of sync: expected serial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " , got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto :goto_70

    .line 412
    :cond_6a
    iput v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 413
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 414
    return-void

    .line 417
    .end local v7    # "soa_serial":J
    :cond_70
    :goto_70
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 418
    .local v3, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    goto/16 :goto_14d

    .line 396
    .end local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_87
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 397
    .restart local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v1

    iput-wide v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    .line 398
    iget-object v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v1, 0x5

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 400
    goto/16 :goto_14d

    .line 385
    .end local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_a7
    if-ne v0, v7, :cond_b6

    .line 386
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    .line 387
    const/4 v1, 0x4

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 388
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 389
    return-void

    .line 391
    :cond_b6
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 392
    .restart local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    goto/16 :goto_14d

    .line 377
    .end local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_cd
    new-instance v1, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    invoke-direct {v1, v3}, Lorg/xbill/DNS/ZoneTransferIn$Delta;-><init>(Lorg/xbill/DNS/ZoneTransferIn$1;)V

    move-object v3, v1

    .line 378
    .restart local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v1

    iput-wide v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    .line 380
    iget-object v1, v3, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 382
    goto :goto_14d

    .line 359
    .end local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_e7
    iget v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v1, v5, :cond_108

    if-ne v0, v7, :cond_108

    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v3

    iget-wide v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    cmp-long v1, v3, v8

    if-nez v1, :cond_108

    .line 362
    iput v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    .line 364
    const-string v1, "got incremental response"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 365
    iput v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_121

    .line 367
    :cond_108
    const/16 v1, 0xfc

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    .line 369
    iget-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v1, "got nonincremental response"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 371
    iput v7, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 373
    :goto_121
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 374
    return-void

    .line 340
    :pswitch_125
    if-eq v0, v7, :cond_12c

    .line 341
    const-string v1, "missing initial SOA"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 342
    :cond_12c
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    .line 345
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    .line 346
    iget v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v1, v5, :cond_14a

    iget-wide v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    iget-wide v7, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    invoke-static {v1, v2, v7, v8}, Lorg/xbill/DNS/Serial;->compare(JJ)I

    move-result v1

    if-gtz v1, :cond_14a

    .line 349
    const-string v1, "up to date"

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 350
    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 351
    goto :goto_14d

    .line 353
    :cond_14a
    iput v6, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 354
    nop

    .line 439
    .restart local v3    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :cond_14d
    :goto_14d
    return-void

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_125
        :pswitch_e7
        :pswitch_cd
        :pswitch_a7
        :pswitch_87
        :pswitch_35
        :pswitch_1e
        :pswitch_17
    .end packed-switch
.end method

.method private sendQuery()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    iget v2, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    iget v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 289
    .local v1, "question":Lorg/xbill/DNS/Record;
    new-instance v2, Lorg/xbill/DNS/Message;

    invoke-direct {v2}, Lorg/xbill/DNS/Message;-><init>()V

    .line 290
    .local v2, "query":Lorg/xbill/DNS/Message;
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 291
    invoke-virtual {v2, v1, v4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 292
    iget v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_40

    .line 293
    new-instance v3, Lorg/xbill/DNS/SOARecord;

    move-object v5, v3

    iget-object v6, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    iget v7, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    const-wide/16 v8, 0x0

    sget-object v10, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v11, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    iget-wide v12, v0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-direct/range {v5 .. v21}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 296
    .local v3, "soa":Lorg/xbill/DNS/Record;
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 298
    .end local v3    # "soa":Lorg/xbill/DNS/Record;
    :cond_40
    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v3, :cond_57

    .line 299
    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 300
    new-instance v3, Lorg/xbill/DNS/TSIG$StreamVerifier;

    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/xbill/DNS/TSIG$StreamVerifier;-><init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V

    iput-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    .line 302
    :cond_57
    const v3, 0xffff

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v3

    .line 303
    .local v3, "out":[B
    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 304
    return-void
.end method


# virtual methods
.method public getAXFR()Ljava/util/List;
    .registers 2

    .line 555
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    return-object v0
.end method

.method public getIXFR()Ljava/util/List;
    .registers 2

    .line 573
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    return-object v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .registers 2

    .line 233
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 241
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    return v0
.end method

.method public isAXFR()Z
    .registers 3

    .line 547
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCurrent()Z
    .registers 2

    .line 582
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isIXFR()Z
    .registers 3

    .line 565
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public run()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 528
    :try_start_0
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->openConnection()V

    .line 529
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_14

    .line 532
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    .line 533
    nop

    .line 534
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 535
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    return-object v0

    .line 536
    :cond_11
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    return-object v0

    .line 532
    :catchall_14
    move-exception v0

    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    throw v0
.end method

.method public setDClass(I)V
    .registers 2
    .param p1, "dclass"    # I

    .line 263
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 264
    iput p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 265
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .registers 2
    .param p1, "addr"    # Ljava/net/SocketAddress;

    .line 273
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    .line 274
    return-void
.end method

.method public setTimeout(I)V
    .registers 6
    .param p1, "secs"    # I

    .line 251
    if-ltz p1, :cond_a

    .line 254
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long v2, v2, v0

    iput-wide v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 255
    return-void

    .line 252
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
