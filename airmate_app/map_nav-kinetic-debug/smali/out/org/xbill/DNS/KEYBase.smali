.class abstract Lorg/xbill/DNS/KEYBase;
.super Lorg/xbill/DNS/Record;
.source "KEYBase.java"


# static fields
.field private static final serialVersionUID:J = 0x302581b9bcadf64eL


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIII[B)V
    .registers 11
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "flags"    # I
    .param p7, "proto"    # I
    .param p8, "alg"    # I
    .param p9, "key"    # [B

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 33
    const-string v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 34
    const-string v0, "proto"

    invoke-static {v0, p7}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 35
    const-string v0, "alg"

    invoke-static {v0, p8}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 36
    iput-object p9, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .registers 2

    .line 92
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 76
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .registers 10

    .line 108
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    if-ltz v0, :cond_7

    .line 109
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    return v0

    .line 111
    :cond_7
    const/4 v0, 0x0

    .line 113
    .local v0, "foot":I
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 114
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/xbill/DNS/KEYBase;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 115
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 117
    .local v2, "rdata":[B
    iget v4, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    const v5, 0xffff

    const/4 v6, 0x1

    if-ne v4, v6, :cond_30

    .line 118
    array-length v3, v2

    add-int/lit8 v3, v3, -0x3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 119
    .local v3, "d1":I
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 120
    .local v4, "d2":I
    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v4

    .line 121
    .end local v0    # "foot":I
    .end local v3    # "d1":I
    .end local v4    # "d2":I
    .local v6, "foot":I
    goto :goto_55

    .line 124
    .end local v6    # "foot":I
    .restart local v0    # "foot":I
    :cond_30
    nop

    .local v3, "i":I
    :goto_31
    array-length v4, v2

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_46

    .line 125
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    .line 126
    .local v4, "d1":I
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    .line 127
    .local v7, "d2":I
    shl-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v7

    add-int/2addr v0, v8

    .line 124
    .end local v4    # "d1":I
    .end local v7    # "d2":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_31

    .line 129
    :cond_46
    array-length v4, v2

    if-ge v3, v4, :cond_50

    .line 130
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    .line 131
    .restart local v4    # "d1":I
    shl-int/lit8 v6, v4, 0x8

    add-int/2addr v0, v6

    .line 133
    .end local v4    # "d1":I
    :cond_50
    shr-int/lit8 v4, v0, 0x10

    and-int/2addr v4, v5

    add-int v6, v0, v4

    .line 135
    .end local v0    # "foot":I
    .end local v3    # "i":I
    .restart local v6    # "foot":I
    :goto_55
    and-int v0, v6, v5

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 136
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    return v0
.end method

.method public getKey()[B
    .registers 2

    .line 100
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .registers 2

    .line 84
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    return-object v0

    .line 148
    :cond_7
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .registers 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 43
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 44
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_1e

    .line 45
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 46
    :cond_1e
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 6

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v1, :cond_58

    .line 58
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 59
    const-string v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, " ; key_tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_58

    .line 64
    :cond_4a
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_58
    :goto_58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 154
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 155
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v0, :cond_18

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 159
    :cond_18
    return-void
.end method
