.class public Lorg/xbill/DNS/DSRecord;
.super Lorg/xbill/DNS/Record;
.source "DSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DSRecord$Digest;
    }
.end annotation


# static fields
.field public static final SHA1_DIGEST_ID:I = 0x1

.field public static final SHA256_DIGEST_ID:I = 0x2

.field private static final serialVersionUID:J = -0x7cece2fc9704af55L


# instance fields
.field private alg:I

.field private digest:[B

.field private digestid:I

.field private footprint:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .registers 15
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "footprint"    # I
    .param p6, "alg"    # I
    .param p7, "digestid"    # I
    .param p8, "digest"    # [B

    .line 57
    const/16 v2, 0x2b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 58
    const-string v0, "footprint"

    invoke-static {v0, p5}, Lorg/xbill/DNS/DSRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 59
    const-string v0, "alg"

    invoke-static {v0, p6}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 60
    const-string v0, "digestid"

    invoke-static {v0, p7}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 61
    iput-object p8, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIILorg/xbill/DNS/DNSKEYRecord;)V
    .registers 19
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "footprint"    # I
    .param p6, "digestid"    # I
    .param p7, "key"    # Lorg/xbill/DNS/DNSKEYRecord;

    .line 74
    invoke-virtual/range {p7 .. p7}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v6

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static {v10, v9}, Lorg/xbill/DNS/DNSSEC;->generateDS(Lorg/xbill/DNS/DNSKEYRecord;I)[B

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 76
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .registers 2

    .line 118
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    return v0
.end method

.method public getDigest()[B
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    return-object v0
.end method

.method public getDigestID()I
    .registers 2

    .line 127
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    return v0
.end method

.method public getFootprint()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 43
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .registers 4
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 89
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 90
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 91
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 92
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

    .line 80
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 84
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v1, :cond_30

    .line 106
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .registers 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .line 148
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 149
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 150
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 151
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v0, :cond_18

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 153
    :cond_18
    return-void
.end method
