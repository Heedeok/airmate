.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name;

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field private static final HMAC_MD5_STR:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA1_STR:Ljava/lang/String; = "hmac-sha1."

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA256_STR:Ljava/lang/String; = "hmac-sha256."


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 26
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 29
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 32
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 135
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 113
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_2b

    .line 116
    :cond_12
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 117
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_2b

    .line 118
    :cond_1f
    const-string v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 119
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 122
    :goto_2b
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 123
    return-void

    .line 121
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-eqz v0, :cond_25

    .line 94
    :try_start_d
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_15
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_d .. :try_end_15} :catch_1c

    .line 98
    nop

    .line 99
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 100
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 101
    return-void

    .line 96
    :catch_1c
    move-exception v0

    .line 97
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .registers 4
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "key"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 66
    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 67
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .registers 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "key"    # [B

    .line 78
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/TSIG;)[B
    .registers 2
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .registers 2
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .registers 2
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 150
    const-string v0, "[:/]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2b

    array-length v1, v0

    const/4 v3, 0x3

    if-gt v1, v3, :cond_2b

    .line 154
    array-length v1, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_1f

    .line 155
    new-instance v1, Lorg/xbill/DNS/TSIG;

    aget-object v3, v0, v5

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    invoke-direct {v1, v3, v4, v2}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 157
    :cond_1f
    new-instance v1, Lorg/xbill/DNS/TSIG;

    sget-object v2, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, v0, v5

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 152
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key specification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getDigest()V
    .registers 3

    .line 46
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    const-string v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_2c

    .line 48
    :cond_f
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 49
    const-string v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_2c

    .line 50
    :cond_1e
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 51
    const-string v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 54
    :goto_2c
    return-void

    .line 53
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .registers 6
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "error"    # I
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 246
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 247
    .local v0, "r":Lorg/xbill/DNS/Record;
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 248
    iput v1, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 249
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .registers 4
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 259
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .registers 29
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;
    .param p3, "first"    # Z

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p3, :cond_a

    .line 269
    invoke-virtual/range {p0 .. p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 270
    return-void

    .line 272
    :cond_a
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 274
    .local v8, "timeSigned":Ljava/util/Date;
    new-instance v2, Lorg/xbill/DNS/utils/HMAC;

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v2, v3, v4}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    move-object v14, v2

    .line 276
    .local v14, "hmac":Lorg/xbill/DNS/utils/HMAC;
    const-string v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v2

    .line 277
    .local v2, "fudge":I
    if-ltz v2, :cond_28

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_26

    goto :goto_28

    .line 280
    .end local v2    # "fudge":I
    .local v13, "fudge":I
    :cond_26
    :goto_26
    move v13, v2

    goto :goto_2b

    .line 278
    .end local v13    # "fudge":I
    .restart local v2    # "fudge":I
    :cond_28
    :goto_28
    const/16 v2, 0x12c

    goto :goto_26

    .line 280
    .end local v2    # "fudge":I
    .restart local v13    # "fudge":I
    :goto_2b
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 282
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 288
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v12, v3

    .line 289
    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v12, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v15, v2, v4

    .line 290
    .local v15, "time":J
    const/16 v2, 0x20

    shr-long v2, v15, v2

    long-to-int v11, v2

    .line 291
    .local v11, "timeHigh":I
    const-wide v2, 0xffffffffL

    and-long v9, v15, v2

    .line 292
    .local v9, "timeLow":J
    invoke-virtual {v12, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 293
    invoke-virtual {v12, v9, v10}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 294
    invoke-virtual {v12, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 296
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 298
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v17

    .line 299
    .local v17, "signature":[B
    const/16 v18, 0x0

    .line 301
    .local v18, "other":[B
    new-instance v19, Lorg/xbill/DNS/TSIGRecord;

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v2, v19

    move-wide/from16 v22, v9

    .end local v9    # "timeLow":J
    .local v22, "timeLow":J
    move v9, v13

    move-object/from16 v10, v17

    move/from16 v24, v11

    .end local v11    # "timeHigh":I
    .local v24, "timeHigh":I
    move/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "out":Lorg/xbill/DNS/DNSOutput;
    .local v20, "out":Lorg/xbill/DNS/DNSOutput;
    move/from16 v12, v21

    move/from16 v21, v13

    .end local v13    # "fudge":I
    .local v21, "fudge":I
    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 304
    .local v2, "r":Lorg/xbill/DNS/Record;
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 305
    iput v3, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 306
    return-void
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .registers 29
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "error"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 172
    move-object/from16 v0, p0

    move/from16 v13, p3

    const/16 v1, 0x12

    if-eq v13, v1, :cond_f

    .line 173
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 175
    .local v7, "timeSigned":Ljava/util/Date;
    :goto_d
    move-object v7, v2

    goto :goto_14

    .end local v7    # "timeSigned":Ljava/util/Date;
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    goto :goto_d

    .line 177
    .restart local v7    # "timeSigned":Ljava/util/Date;
    :goto_14
    const/4 v2, 0x0

    .line 178
    .local v2, "hmac":Lorg/xbill/DNS/utils/HMAC;
    if-eqz v13, :cond_1c

    if-ne v13, v1, :cond_1a

    goto :goto_1c

    .line 181
    .end local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .local v14, "hmac":Lorg/xbill/DNS/utils/HMAC;
    :cond_1a
    :goto_1a
    move-object v14, v2

    goto :goto_27

    .line 179
    .end local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .restart local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    :cond_1c
    :goto_1c
    new-instance v3, Lorg/xbill/DNS/utils/HMAC;

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    move-object v2, v3

    goto :goto_1a

    .line 181
    .end local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .restart local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    :goto_27
    const-string v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "fudge":I
    if-ltz v2, :cond_36

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_34

    goto :goto_36

    .line 185
    .end local v2    # "fudge":I
    .local v15, "fudge":I
    :cond_34
    :goto_34
    move v15, v2

    goto :goto_39

    .line 183
    .end local v15    # "fudge":I
    .restart local v2    # "fudge":I
    :cond_36
    :goto_36
    const/16 v2, 0x12c

    goto :goto_34

    .line 185
    .end local v2    # "fudge":I
    .restart local v15    # "fudge":I
    :goto_39
    if-eqz p4, :cond_58

    .line 186
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 187
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 188
    if-eqz v14, :cond_58

    .line 189
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 190
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 195
    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_58
    if-eqz v14, :cond_60

    .line 196
    move-object/from16 v12, p2

    invoke-virtual {v14, v12}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    goto :goto_62

    .line 198
    :cond_60
    move-object/from16 v12, p2

    :goto_62
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 199
    .restart local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 200
    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 201
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 202
    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 203
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 204
    .local v3, "time":J
    const/16 v8, 0x20

    shr-long v9, v3, v8

    long-to-int v10, v9

    .line 205
    .local v10, "timeHigh":I
    const-wide v16, 0xffffffffL

    and-long v5, v3, v16

    .line 206
    .local v5, "timeLow":J
    invoke-virtual {v2, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 207
    invoke-virtual {v2, v5, v6}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 208
    invoke-virtual {v2, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    invoke-virtual {v2, v13}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 211
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 213
    if-eqz v14, :cond_a7

    .line 214
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v14, v11}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 217
    :cond_a7
    if-eqz v14, :cond_ae

    .line 218
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v9

    goto :goto_b0

    .line 220
    :cond_ae
    new-array v9, v9, [B

    .line 222
    .local v9, "signature":[B
    :goto_b0
    const/4 v11, 0x0

    .line 223
    .local v11, "other":[B
    if-ne v13, v1, :cond_e2

    .line 224
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    move-object v2, v1

    .line 225
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v18, 0x3e8

    div-long v3, v20, v18

    .line 226
    move-wide/from16 v22, v5

    .end local v5    # "timeLow":J
    .local v22, "timeLow":J
    shr-long v5, v3, v8

    long-to-int v10, v5

    .line 227
    and-long v5, v3, v16

    .line 228
    .end local v22    # "timeLow":J
    .restart local v5    # "timeLow":J
    invoke-virtual {v2, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 229
    invoke-virtual {v2, v5, v6}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 230
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    .line 233
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide/from16 v19, v3

    move-wide/from16 v22, v5

    move/from16 v18, v10

    goto :goto_ec

    :cond_e2
    move-wide/from16 v22, v5

    move-object/from16 v17, v2

    move-wide/from16 v19, v3

    move/from16 v18, v10

    move-object/from16 v16, v11

    .end local v2    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v3    # "time":J
    .end local v5    # "timeLow":J
    .end local v10    # "timeHigh":I
    .end local v11    # "other":[B
    .local v16, "other":[B
    .local v17, "out":Lorg/xbill/DNS/DNSOutput;
    .local v18, "timeHigh":I
    .local v19, "time":J
    .restart local v22    # "timeLow":J
    :goto_ec
    new-instance v21, Lorg/xbill/DNS/TSIGRecord;

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    move-object/from16 v1, v21

    move v8, v15

    move/from16 v11, p3

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v21
.end method

.method public recordLength()I
    .registers 3

    .line 415
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .registers 28
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    iput v2, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 325
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v2

    .line 326
    .local v2, "tsig":Lorg/xbill/DNS/TSIGRecord;
    new-instance v3, Lorg/xbill/DNS/utils/HMAC;

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 327
    .local v3, "hmac":Lorg/xbill/DNS/utils/HMAC;
    const/4 v4, 0x1

    if-nez v2, :cond_18

    .line 328
    return v4

    .line 330
    :cond_18
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    iget-object v6, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x11

    if-eqz v5, :cond_140

    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v5

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v5, v7}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto/16 :goto_140

    .line 335
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 336
    .local v7, "now":J
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 337
    .local v9, "then":J
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v5

    int-to-long v11, v5

    .line 338
    .local v11, "fudge":J
    sub-long v13, v7, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v17, v11, v15

    cmp-long v5, v13, v17

    if-lez v5, :cond_65

    .line 339
    const-string v4, "verbose"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 340
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "BADTIME failure"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    :cond_62
    const/16 v4, 0x12

    return v4

    .line 344
    :cond_65
    const/16 v5, 0x10

    if-eqz p4, :cond_90

    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v14

    if-eq v14, v6, :cond_90

    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v6

    if-eq v6, v5, :cond_90

    .line 347
    new-instance v6, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 348
    .local v6, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v6, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 349
    invoke-virtual {v6}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 350
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 352
    .end local v6    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    const/4 v14, 0x3

    invoke-virtual {v6, v14}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v6

    .line 354
    .local v6, "header":[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v5

    invoke-virtual {v5, v14}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 355
    invoke-virtual {v3, v6}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 357
    iget v5, v1, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v14, v6

    sub-int/2addr v5, v14

    .line 358
    .local v5, "len":I
    array-length v14, v6

    move-object/from16 v19, v6

    move-object/from16 v6, p2

    .end local v6    # "header":[B
    .local v19, "header":[B
    invoke-virtual {v3, v6, v14, v5}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 360
    new-instance v14, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v14}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 361
    .local v14, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 362
    iget v4, v2, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    invoke-virtual {v14, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 363
    move/from16 v20, v5

    .end local v5    # "len":I
    .local v20, "len":I
    iget-wide v4, v2, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    invoke-virtual {v14, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 364
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 365
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v15

    .line 366
    .local v4, "time":J
    const/16 v15, 0x20

    move-wide/from16 v21, v7

    .end local v7    # "now":J
    .local v21, "now":J
    shr-long v6, v4, v15

    long-to-int v6, v6

    .line 367
    .local v6, "timeHigh":I
    const-wide v7, 0xffffffffL

    and-long/2addr v7, v4

    .line 368
    .local v7, "timeLow":J
    invoke-virtual {v14, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 369
    invoke-virtual {v14, v7, v8}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 370
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 371
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 372
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v15, :cond_116

    .line 373
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 374
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_119

    .line 376
    :cond_116
    invoke-virtual {v14, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 379
    :goto_119
    invoke-virtual {v14}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 381
    invoke-virtual {v2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v15

    if-eqz v15, :cond_12e

    .line 382
    const/4 v15, 0x1

    iput v15, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 383
    return v0

    .line 385
    :cond_12e
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 386
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "BADSIG failure"

    invoke-virtual {v0, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_13d
    const/16 v0, 0x10

    return v0

    .line 331
    .end local v4    # "time":J
    .end local v6    # "timeHigh":I
    .end local v7    # "timeLow":J
    .end local v9    # "then":J
    .end local v11    # "fudge":J
    .end local v14    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v19    # "header":[B
    .end local v20    # "len":I
    .end local v21    # "now":J
    :cond_140
    :goto_140
    const/16 v0, 0x11

    const-string v4, "verbose"

    invoke-static {v4}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 332
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "BADKEY failure"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    :cond_151
    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .registers 5
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .line 406
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
