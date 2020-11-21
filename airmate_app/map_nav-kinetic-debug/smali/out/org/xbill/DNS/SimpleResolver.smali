.class public Lorg/xbill/DNS/SimpleResolver;
.super Ljava/lang/Object;
.source "SimpleResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field public static final DEFAULT_EDNS_PAYLOADSIZE:I = 0x500

.field public static final DEFAULT_PORT:I = 0x35

.field private static final DEFAULT_UDPSIZE:S = 0x200s

.field private static defaultResolver:Ljava/lang/String;

.field private static uniqueID:I


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private timeoutValue:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "localhost"

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 47
    if-nez p1, :cond_15

    .line 48
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->server()Ljava/lang/String;

    move-result-object p1

    .line 49
    if-nez p1, :cond_15

    .line 50
    sget-object p1, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 53
    :cond_15
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 54
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_26

    .line 56
    :cond_22
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 57
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_26
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 58
    return-void
.end method

.method private applyEDNS(Lorg/xbill/DNS/Message;)V
    .registers 4
    .param p1, "query"    # Lorg/xbill/DNS/Message;

    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_12

    .line 207
    :cond_b
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 208
    return-void

    .line 206
    :cond_12
    :goto_12
    return-void
.end method

.method private maxUDPSize(Lorg/xbill/DNS/Message;)I
    .registers 4
    .param p1, "query"    # Lorg/xbill/DNS/Message;

    .line 212
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 213
    .local v0, "opt":Lorg/xbill/DNS/OPTRecord;
    if-nez v0, :cond_9

    .line 214
    const/16 v1, 0x200

    return v1

    .line 216
    :cond_9
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    return v1
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 183
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_12
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-nez v1, :cond_1e

    .line 189
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Error parsing message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 190
    :cond_1e
    move-object v1, v0

    check-cast v1, Lorg/xbill/DNS/WireParseException;

    throw v1
.end method

.method private sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .registers 9
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 331
    .local v0, "qname":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v1

    .line 332
    .local v1, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    invoke-virtual {p0}, Lorg/xbill/DNS/SimpleResolver;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(I)V

    .line 333
    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 335
    :try_start_20
    invoke-virtual {v1}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;
    :try_end_23
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_20 .. :try_end_23} :catch_62

    .line 339
    nop

    .line 340
    invoke-virtual {v1}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v2

    .line 341
    .local v2, "records":Ljava/util/List;
    new-instance v3, Lorg/xbill/DNS/Message;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getID()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 342
    .local v3, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 343
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 344
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 346
    .local v4, "it":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 347
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Record;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_50

    .line 348
    :cond_61
    return-object v3

    .line 337
    .end local v2    # "records":Ljava/util/List;
    .end local v3    # "response":Lorg/xbill/DNS/Message;
    .end local v4    # "it":Ljava/util/Iterator;
    :catch_62
    move-exception v2

    .line 338
    .local v2, "e":Lorg/xbill/DNS/ZoneTransferException;
    new-instance v3, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v2}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static setDefaultResolver(Ljava/lang/String;)V
    .registers 1
    .param p0, "hostname"    # Ljava/lang/String;

    .line 84
    sput-object p0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V
    .registers 9
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "response"    # Lorg/xbill/DNS/Message;
    .param p3, "b"    # [B
    .param p4, "tsig"    # Lorg/xbill/DNS/TSIG;

    .line 196
    if-nez p4, :cond_3

    .line 197
    return-void

    .line 198
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 199
    .local v0, "error":I
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 200
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_2d
    return-void
.end method


# virtual methods
.method getAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 78
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method getTSIGKey()Lorg/xbill/DNS/TSIG;
    .registers 2

    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-object v0
.end method

.method getTimeout()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    return-wide v0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .registers 13
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 229
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Sending to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_36
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    if-nez v0, :cond_53

    .line 234
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 235
    .local v0, "question":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_53

    .line 236
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v1

    return-object v1

    .line 239
    .end local v0    # "question":Lorg/xbill/DNS/Record;
    :cond_53
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lorg/xbill/DNS/Message;

    .line 240
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->applyEDNS(Lorg/xbill/DNS/Message;)V

    .line 241
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_67

    .line 242
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 244
    :cond_67
    const v0, 0xffff

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v0

    .line 245
    .local v0, "out":[B
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->maxUDPSize(Lorg/xbill/DNS/Message;)I

    move-result v7

    .line 246
    .local v7, "udpSize":I
    const/4 v1, 0x0

    .line 247
    .local v1, "tcp":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    add-long/2addr v2, v4

    .local v2, "endTime":J
    :goto_7a
    move-wide v8, v2

    .line 251
    .end local v2    # "endTime":J
    .local v8, "endTime":J
    iget-boolean v2, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    if-nez v2, :cond_85

    array-length v2, v0

    if-le v2, v7, :cond_83

    goto :goto_85

    .line 253
    .end local v1    # "tcp":Z
    .local v10, "tcp":Z
    :cond_83
    :goto_83
    move v10, v1

    goto :goto_87

    .line 252
    .end local v10    # "tcp":Z
    .restart local v1    # "tcp":Z
    :cond_85
    :goto_85
    const/4 v1, 0x1

    goto :goto_83

    .line 253
    .end local v1    # "tcp":Z
    .restart local v10    # "tcp":Z
    :goto_87
    if-eqz v10, :cond_92

    .line 254
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, v0, v8, v9}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v1

    goto :goto_9d

    .line 257
    :cond_92
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    move-object v3, v0

    move v4, v7

    move-wide v5, v8

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v1

    .line 263
    .local v1, "in":[B
    :goto_9d
    array-length v2, v1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_10b

    .line 273
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 274
    .local v2, "id":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    .line 275
    .local v3, "qid":I
    if-eq v2, v3, :cond_ea

    .line 276
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "invalid message id: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "; got id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "error":Ljava/lang/String;
    if-nez v10, :cond_e4

    .line 281
    const-string v5, "verbose"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 282
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    .end local v1    # "in":[B
    .end local v2    # "id":I
    .end local v3    # "qid":I
    .end local v4    # "error":Ljava/lang/String;
    :cond_e1
    move-wide v2, v8

    move v1, v10

    goto :goto_7a

    .line 279
    .restart local v1    # "in":[B
    .restart local v2    # "id":I
    .restart local v3    # "qid":I
    .restart local v4    # "error":Ljava/lang/String;
    :cond_e4
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v5, v4}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 287
    .end local v4    # "error":Ljava/lang/String;
    :cond_ea
    invoke-direct {p0, v1}, Lorg/xbill/DNS/SimpleResolver;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v4

    .line 288
    .local v4, "response":Lorg/xbill/DNS/Message;
    iget-object v5, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-direct {p0, p1, v4, v1, v5}, Lorg/xbill/DNS/SimpleResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    .line 289
    if-nez v10, :cond_10a

    iget-boolean v5, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    if-nez v5, :cond_10a

    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 292
    const/4 v5, 0x1

    .line 293
    .end local v10    # "tcp":Z
    .local v5, "tcp":Z
    nop

    .line 247
    move v1, v5

    move-wide v2, v8

    goto/16 :goto_7a

    .line 295
    .end local v5    # "tcp":Z
    .restart local v10    # "tcp":Z
    :cond_10a
    return-object v4

    .line 264
    .end local v2    # "id":I
    .end local v3    # "qid":I
    .end local v4    # "response":Lorg/xbill/DNS/Message;
    :cond_10b
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v3, "invalid DNS header - too short"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .registers 9
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "listener"    # Lorg/xbill/DNS/ResolverListener;

    .line 311
    monitor-enter p0

    .line 312
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/lang/Integer;

    sget v2, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 313
    .local v0, "id":Ljava/lang/Object;
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_48

    .line 314
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 316
    .local v1, "question":Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_1e

    .line 317
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    .line 319
    :cond_1e
    const-string v2, "(none)"

    .line 320
    .local v2, "qname":Ljava/lang/String;
    :goto_20
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lorg/xbill/DNS/ResolveThread;

    invoke-direct {v4, p0, p1, v0, p2}, Lorg/xbill/DNS/ResolveThread;-><init>(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/lang/Object;Lorg/xbill/DNS/ResolverListener;)V

    .line 322
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 323
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 324
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 325
    return-object v0

    .line 313
    .end local v0    # "id":Ljava/lang/Object;
    .end local v1    # "question":Lorg/xbill/DNS/Record;
    .end local v2    # "qname":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_48
    move-exception v1

    .restart local v0    # "id":Ljava/lang/Object;
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 109
    return-void
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)V
    .registers 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .line 98
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 99
    return-void
.end method

.method public setEDNS(I)V
    .registers 4
    .param p1, "level"    # I

    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 153
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .registers 12
    .param p1, "level"    # I
    .param p2, "payloadSize"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Ljava/util/List;

    .line 142
    if-eqz p1, :cond_e

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 143
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid EDNS level - must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_e
    :goto_e
    if-nez p2, :cond_12

    .line 146
    const/16 p2, 0x500

    .line 147
    :cond_12
    new-instance v6, Lorg/xbill/DNS/OPTRecord;

    const/4 v2, 0x0

    move-object v0, v6

    move v1, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object v6, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    .line 148
    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 137
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    .line 138
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "addr"    # Ljava/net/InetAddress;

    .line 127
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 128
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)V
    .registers 2
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .line 117
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 118
    return-void
.end method

.method public setPort(I)V
    .registers 4
    .param p1, "port"    # I

    .line 89
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 90
    return-void
.end method

.method public setTCP(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 132
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    .line 133
    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .registers 2
    .param p1, "key"    # Lorg/xbill/DNS/TSIG;

    .line 157
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    .line 158
    return-void
.end method

.method public setTimeout(I)V
    .registers 3
    .param p1, "secs"    # I

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/SimpleResolver;->setTimeout(II)V

    .line 173
    return-void
.end method

.method public setTimeout(II)V
    .registers 7
    .param p1, "secs"    # I
    .param p2, "msecs"    # I

    .line 167
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 168
    return-void
.end method
