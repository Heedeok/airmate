.class final Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static base64([B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B

    .line 71
    invoke-static {p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 72
    .local v0, "hashed":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/base64/Base64;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static md5([B)[B
    .registers 4
    .param p0, "bytes"    # [B

    .line 40
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 42
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_b
    move-exception v0

    .line 43
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "MD5 not supported on this platform"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static randomBytes(I)[B
    .registers 5
    .param p0, "size"    # I

    .line 83
    new-array v0, p0, [B

    .line 85
    .local v0, "bytes":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p0, :cond_12

    .line 86
    const/16 v3, 0xff

    invoke-static {v1, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketUtil;->randomNumber(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 89
    .end local v2    # "i":I
    :cond_12
    return-object v0
.end method

.method static randomNumber(II)I
    .registers 6
    .param p0, "min"    # I
    .param p1, "max"    # I

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static sha1([B)[B
    .registers 4
    .param p0, "bytes"    # [B

    .line 56
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 57
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 58
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_b
    move-exception v0

    .line 59
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "SHA-1 not supported on this platform"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
