.class public Lorg/apache/commons/httpclient/auth/DigestScheme;
.super Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I

.field static synthetic class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.auth.DigestScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    nop

    :array_20
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    .line 113
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    .line 114
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->processChallenge(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createCnonce()Ljava/lang/String;
    .registers 4

    .line 551
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter DigestScheme.createCnonce()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 554
    const-string v0, "MD5"

    .line 558
    .local v0, "digAlg":Ljava/lang/String;
    :try_start_9
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_f} :catch_25

    .line 563
    .local v1, "md5Helper":Ljava/security/MessageDigest;
    nop

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "cnonce":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 568
    return-object v2

    .line 559
    .end local v1    # "md5Helper":Ljava/security/MessageDigest;
    .end local v2    # "cnonce":Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 560
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/apache/commons/httpclient/HttpClientError;

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: MD5"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/HttpClientError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 27
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 341
    move-object/from16 v1, p0

    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter DigestScheme.createDigest(String, String, Map)"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 343
    const-string v2, "MD5"

    .line 346
    .local v2, "digAlg":Ljava/lang/String;
    const-string v0, "uri"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "uri":Ljava/lang/String;
    const-string v0, "realm"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "realm":Ljava/lang/String;
    const-string v0, "nonce"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "nonce":Ljava/lang/String;
    const-string v0, "qop"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "qop":Ljava/lang/String;
    const-string v0, "methodname"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "method":Ljava/lang/String;
    const-string v0, "algorithm"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "algorithm":Ljava/lang/String;
    if-nez v0, :cond_33

    .line 354
    const-string v0, "MD5"

    .line 357
    .end local v0    # "algorithm":Ljava/lang/String;
    .local v8, "algorithm":Ljava/lang/String;
    :cond_33
    move-object v8, v0

    const-string v0, "charset"

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_3e

    .line 359
    const-string v0, "ISO-8859-1"

    .line 362
    .end local v0    # "charset":Ljava/lang/String;
    .local v9, "charset":Ljava/lang/String;
    :cond_3e
    move-object v9, v0

    iget v0, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_205

    .line 371
    :try_start_44
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_1ee

    .line 376
    .local v0, "md5Helper":Ljava/security/MessageDigest;
    nop

    .line 379
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 380
    .local v11, "tmp":Ljava/lang/StringBuffer;
    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    move-object/from16 v14, p2

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 388
    .local v15, "a1":Ljava/lang/String;
    const-string v10, "MD5-sess"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 393
    invoke-static {v15, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "tmp2":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v19, v2

    .end local v2    # "digAlg":Ljava/lang/String;
    .local v19, "digAlg":Ljava/lang/String;
    iget-object v2, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v17, v17, v2

    add-int/lit8 v2, v17, 0x2

    invoke-direct {v13, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, v13

    .line 395
    .local v2, "tmp3":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/16 v13, 0x3a

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    iget-object v13, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 401
    .end local v2    # "tmp3":Ljava/lang/StringBuffer;
    .end local v10    # "tmp2":Ljava/lang/String;
    goto :goto_e6

    .end local v19    # "digAlg":Ljava/lang/String;
    .local v2, "digAlg":Ljava/lang/String;
    :cond_c1
    move-object/from16 v19, v2

    .end local v2    # "digAlg":Ljava/lang/String;
    .restart local v19    # "digAlg":Ljava/lang/String;
    const-string v2, "MD5"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    .line 402
    sget-object v2, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Unhandled algorithm "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, " requested"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 404
    :cond_e6
    :goto_e6
    invoke-static {v15, v9}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "md5a1":Ljava/lang/String;
    const/4 v10, 0x0

    .line 407
    .local v10, "a2":Ljava/lang/String;
    iget v13, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    move-object/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "realm":Ljava/lang/String;
    .local v20, "realm":Ljava/lang/String;
    if-ne v13, v4, :cond_102

    .line 408
    sget-object v4, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v13, "Unhandled qop auth-int"

    invoke-interface {v4, v13}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_116

    .line 412
    :cond_102
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, ":"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 414
    :goto_116
    invoke-static {v10}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "md5a2":Ljava/lang/String;
    iget v13, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    if-nez v13, :cond_160

    .line 419
    sget-object v13, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v21, v3

    .end local v3    # "uri":Ljava/lang/String;
    .local v21, "uri":Ljava/lang/String;
    const-string v3, "Using null qop method"

    invoke-interface {v13, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 420
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    invoke-direct {v3, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 421
    .local v3, "tmp2":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/16 v13, 0x3a

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "serverDigestValue":Ljava/lang/String;
    nop

    .line 445
    move-object/from16 v23, v6

    move-object/from16 v22, v7

    goto/16 :goto_1e1

    .line 428
    .end local v21    # "uri":Ljava/lang/String;
    .local v3, "uri":Ljava/lang/String;
    :cond_160
    move-object/from16 v21, v3

    .end local v3    # "uri":Ljava/lang/String;
    .restart local v21    # "uri":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_183

    .line 429
    sget-object v3, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "method":Ljava/lang/String;
    .local v22, "method":Ljava/lang/String;
    const-string v7, "Using qop method "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_185

    .line 431
    .end local v22    # "method":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/String;
    :cond_183
    move-object/from16 v22, v7

    .end local v7    # "method":Ljava/lang/String;
    .restart local v22    # "method":Ljava/lang/String;
    :goto_185
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "qopOption":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    const-string v16, "00000001"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    move-object/from16 v23, v6

    .end local v6    # "qop":Ljava/lang/String;
    .local v23, "qop":Ljava/lang/String;
    iget-object v6, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v13, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v13, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v13, v6

    add-int/lit8 v13, v13, 0x5

    invoke-direct {v7, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v7

    .line 434
    .local v6, "tmp2":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    const-string v13, "00000001"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    iget-object v13, v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    .end local v6    # "tmp2":Ljava/lang/StringBuffer;
    .local v3, "serverDigestValue":Ljava/lang/String;
    :goto_1e1
    invoke-static {v3}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/httpclient/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "serverDigest":Ljava/lang/String;
    return-object v6

    .line 372
    .end local v0    # "md5Helper":Ljava/security/MessageDigest;
    .end local v10    # "a2":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/StringBuffer;
    .end local v15    # "a1":Ljava/lang/String;
    .end local v19    # "digAlg":Ljava/lang/String;
    .end local v20    # "realm":Ljava/lang/String;
    .end local v21    # "uri":Ljava/lang/String;
    .end local v22    # "method":Ljava/lang/String;
    .end local v23    # "qop":Ljava/lang/String;
    .local v2, "digAlg":Ljava/lang/String;
    .local v3, "uri":Ljava/lang/String;
    .local v4, "realm":Ljava/lang/String;
    .local v6, "qop":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/String;
    :catch_1ee
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    .line 373
    .end local v2    # "digAlg":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "realm":Ljava/lang/String;
    .end local v6    # "qop":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "digAlg":Ljava/lang/String;
    .restart local v20    # "realm":Ljava/lang/String;
    .restart local v21    # "uri":Ljava/lang/String;
    .restart local v22    # "method":Ljava/lang/String;
    .restart local v23    # "qop":Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: MD5"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "digAlg":Ljava/lang/String;
    .end local v20    # "realm":Ljava/lang/String;
    .end local v21    # "uri":Ljava/lang/String;
    .end local v22    # "method":Ljava/lang/String;
    .end local v23    # "qop":Ljava/lang/String;
    .restart local v2    # "digAlg":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    .restart local v4    # "realm":Ljava/lang/String;
    .restart local v6    # "qop":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/String;
    :cond_205
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    .end local v2    # "digAlg":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "realm":Ljava/lang/String;
    .end local v6    # "qop":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/String;
    .restart local v19    # "digAlg":Ljava/lang/String;
    .restart local v20    # "realm":Ljava/lang/String;
    .restart local v21    # "uri":Ljava/lang/String;
    .restart local v22    # "method":Ljava/lang/String;
    .restart local v23    # "qop":Ljava/lang/String;
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "qop=auth-int is not supported"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 364
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthenticationException;

    const-string v2, "Unsupported qop in HTTP Digest authentication"

    invoke-direct {v0, v2}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 465
    move-object/from16 v0, p0

    sget-object v1, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter DigestScheme.createDigestHeader(String, Map, String)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 468
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "realm"

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "realm":Ljava/lang/String;
    const-string v3, "nonce"

    invoke-virtual {v0, v3}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "nonce":Ljava/lang/String;
    const-string v4, "opaque"

    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "opaque":Ljava/lang/String;
    move-object/from16 v5, p2

    .line 473
    .local v5, "response":Ljava/lang/String;
    const-string v6, "algorithm"

    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v7, "params":Ljava/util/List;
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "username"

    move-object/from16 v10, p1

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "realm"

    invoke-direct {v8, v9, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "nonce"

    invoke-direct {v8, v9, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "uri"

    invoke-direct {v8, v9, v1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "response"

    invoke-direct {v8, v9, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget v8, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    if-eqz v8, :cond_8e

    .line 483
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "qop"

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "nc"

    const-string v11, "00000001"

    invoke-direct {v8, v9, v11}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "cnonce"

    iget-object v11, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-direct {v8, v9, v11}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_8e
    if-eqz v6, :cond_9a

    .line 488
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "algorithm"

    invoke-direct {v8, v9, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_9a
    if-eqz v4, :cond_a6

    .line 491
    new-instance v8, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v9, "opaque"

    invoke-direct {v8, v9, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_a6
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 495
    .local v8, "buffer":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_ad
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_ee

    .line 496
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/httpclient/NameValuePair;

    .line 497
    .local v12, "param":Lorg/apache/commons/httpclient/NameValuePair;
    if-lez v11, :cond_c0

    .line 498
    const-string v13, ", "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    :cond_c0
    const-string v13, "nc"

    invoke-virtual {v12}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_dc

    const-string v13, "qop"

    invoke-virtual {v12}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_da

    goto :goto_dc

    :cond_da
    const/4 v13, 0x0

    goto :goto_dd

    :cond_dc
    :goto_dc
    const/4 v13, 0x1

    .line 502
    .local v13, "noQuotes":Z
    :goto_dd
    iget-object v15, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    if-nez v13, :cond_e2

    goto :goto_e3

    :cond_e2
    const/4 v14, 0x0

    :goto_e3
    invoke-virtual {v15, v14}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 503
    iget-object v14, v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-virtual {v14, v8, v12}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 495
    .end local v12    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    .end local v13    # "noQuotes":Z
    add-int/lit8 v11, v11, 0x1

    goto :goto_ad

    .line 505
    .end local v11    # "i":I
    :cond_ee
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private static encode([B)Ljava/lang/String;
    .registers 8
    .param p0, "binaryData"    # [B

    .line 526
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter DigestScheme.encode(byte[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 528
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 532
    :cond_e
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 533
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_34

    .line 534
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 535
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 536
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v4

    aput-char v6, v0, v5

    .line 537
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 533
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 540
    .end local v2    # "i":I
    :cond_34
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private getQopVariantString()Ljava/lang/String;
    .registers 3

    .line 510
    iget v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 511
    const-string v0, "auth-int"

    goto :goto_a

    .line 513
    :cond_8
    const-string v0, "auth"

    .line 515
    .local v0, "qopOption":Ljava/lang/String;
    :goto_a
    return-object v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter DigestScheme.authenticate(Credentials, String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_8
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_45

    move-object v0, v1

    .line 269
    nop

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "digest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Digest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 265
    .end local v1    # "digest":Ljava/lang/String;
    :catch_45
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for digest authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .registers 10
    .param p1, "credentials"    # Lorg/apache/commons/httpclient/Credentials;
    .param p2, "method"    # Lorg/apache/commons/httpclient/HttpMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 297
    sget-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter DigestScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "usernamepassword":Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_start_8
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_89

    move-object v0, v1

    .line 306
    nop

    .line 307
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "query":Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 311
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_36

    .line 312
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_36
    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_3d
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v3

    const-string v4, "uri"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v3, "charset"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "charset":Ljava/lang/String;
    if-nez v3, :cond_63

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "charset"

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_63
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "digest":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Digest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createDigestHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 302
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "query":Ljava/lang/String;
    .end local v3    # "charset":Ljava/lang/String;
    .end local v4    # "digest":Ljava/lang/String;
    :catch_89
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Credentials cannot be used for digest authentication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getID()Ljava/lang/String;
    .registers 5

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "id":Ljava/lang/String;
    const-string v1, "nonce"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "nonce":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_20
    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .registers 3

    .line 209
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 211
    const/4 v1, 0x0

    return v1

    .line 213
    :cond_10
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    return v1
.end method

.method public isConnectionBased()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .registers 10
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 164
    invoke-super {p0, p1}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;->processChallenge(Ljava/lang/String;)V

    .line 166
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 169
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "unsupportedQop":Z
    const-string v1, "qop"

    invoke-virtual {p0, v1}, Lorg/apache/commons/httpclient/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "qop":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_61

    .line 177
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v3, "tok":Ljava/util/StringTokenizer;
    :goto_24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 179
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "variant":Ljava/lang/String;
    const-string v5, "auth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 181
    const/4 v5, 0x2

    iput v5, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    .line 182
    goto :goto_61

    .line 183
    :cond_3e
    const-string v5, "auth-int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 184
    iput v2, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    goto :goto_60

    .line 186
    :cond_49
    const/4 v0, 0x1

    .line 187
    sget-object v5, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unsupported qop detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 189
    .end local v4    # "variant":Ljava/lang/String;
    :goto_60
    goto :goto_24

    .line 192
    .end local v3    # "tok":Ljava/util/StringTokenizer;
    :cond_61
    :goto_61
    if-eqz v0, :cond_70

    iget v3, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    if-eqz v3, :cond_68

    goto :goto_70

    .line 193
    :cond_68
    new-instance v2, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v3, "None of the qop methods is supported"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_70
    :goto_70
    invoke-static {}, Lorg/apache/commons/httpclient/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 197
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    .line 198
    return-void

    .line 170
    .end local v0    # "unsupportedQop":Z
    .end local v1    # "qop":Ljava/lang/String;
    :cond_79
    new-instance v0, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v1, "missing nonce in challange"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_81
    new-instance v0, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    const-string v1, "missing realm in challange"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
