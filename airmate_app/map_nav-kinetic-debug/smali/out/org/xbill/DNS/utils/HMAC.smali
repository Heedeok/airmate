.class public Lorg/xbill/DNS/utils/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct

.field private static final PADLEN:B = 0x40t


# instance fields
.field digest:Ljava/security/MessageDigest;

.field private ipad:[B

.field private opad:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "digestName"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    :try_start_3
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_e

    .line 68
    nop

    .line 69
    invoke-direct {p0, p2}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 70
    return-void

    .line 65
    :catch_e
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown digest algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/security/MessageDigest;[B)V
    .registers 3
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "key"    # [B

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 52
    iput-object p1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    .line 53
    invoke-direct {p0, p2}, Lorg/xbill/DNS/utils/HMAC;->init([B)V

    .line 54
    return-void
.end method

.method private init([B)V
    .registers 8
    .param p1, "key"    # [B

    .line 27
    array-length v0, p1

    const/16 v1, 0x40

    if-le v0, v1, :cond_10

    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 29
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 31
    :cond_10
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    .line 32
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v2, p1

    const/16 v3, 0x5c

    const/16 v4, 0x36

    if-ge v0, v2, :cond_33

    .line 34
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 35
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 37
    :cond_33
    :goto_33
    if-ge v0, v1, :cond_40

    .line 38
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    aput-byte v4, v2, v0

    .line 39
    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    aput-byte v3, v2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 41
    :cond_40
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 119
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 120
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->ipad:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 121
    return-void
.end method

.method public sign()[B
    .registers 4

    .line 98
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 99
    .local v0, "output":[B
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/xbill/DNS/utils/HMAC;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    iget-object v1, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method public update([B)V
    .registers 3
    .param p1, "b"    # [B

    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    return-void
.end method

.method public update([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 80
    iget-object v0, p0, Lorg/xbill/DNS/utils/HMAC;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 81
    return-void
.end method

.method public verify([B)Z
    .registers 3
    .param p1, "signature"    # [B

    .line 111
    invoke-virtual {p0}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method
