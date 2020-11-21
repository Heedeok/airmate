.class public Lorg/xbill/DNS/ARecord;
.super Lorg/xbill/DNS/Record;
.source "ARecord.java"


# static fields
.field private static final serialVersionUID:J = -0x1e26a88ea45bc233L


# instance fields
.field private addr:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V
    .registers 12
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "address"    # Ljava/net/InetAddress;

    .line 51
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    invoke-static {p5}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 54
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    .line 55
    return-void

    .line 53
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid IPv4 address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final fromArray([B)I
    .registers 3
    .param p0, "array"    # [B

    .line 29
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static final toArray(I)[B
    .registers 4
    .param p0, "addr"    # I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 38
    .local v0, "bytes":[B
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 39
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 40
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 41
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 42
    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .registers 3

    .line 78
    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 79
    :catch_b
    move-exception v0

    .line 80
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 24
    new-instance v0, Lorg/xbill/DNS/ARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/ARecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .registers 5
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->getAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 65
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/ARecord;->fromArray([B)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/ARecord;->addr:I

    .line 66
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    .line 60
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 2

    .line 71
    iget v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 86
    iget v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 87
    return-void
.end method
