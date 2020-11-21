.class public Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;
.super Ljava/lang/Object;
.source "SpdyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Spdy2HttpNames;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$HttpNames;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

.field private final head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 535
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 538
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 539
    return-void
.end method

.method public static addHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 149
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method private addHeader0(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    aget-object v0, v0, p2

    .line 555
    .local v0, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    invoke-direct {v2, p1, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "newEntry":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    aput-object v2, v1, p2

    .line 556
    iput-object v0, v3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 559
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    invoke-virtual {v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->addBefore(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;)V

    .line 560
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 508
    .local v0, "nameLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 509
    return v2

    .line 512
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_32

    .line 513
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 514
    .local v3, "c1":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 515
    .local v4, "c2":C
    if-eq v3, v4, :cond_2f

    .line 516
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v3, v6, :cond_25

    if-gt v3, v5, :cond_25

    .line 517
    add-int/lit8 v7, v3, 0x20

    int-to-char v3, v7

    .line 519
    :cond_25
    if-lt v4, v6, :cond_2c

    if-gt v4, v5, :cond_2c

    .line 520
    add-int/lit8 v5, v4, 0x20

    int-to-char v4, v5

    .line 522
    :cond_2c
    if-eq v3, v4, :cond_2f

    .line 523
    return v2

    .line 512
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 527
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x1

    return v1
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "name"    # Ljava/lang/String;

    .line 110
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 122
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 124
    return-object p2

    .line 126
    :cond_7
    return-object v0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 163
    const-string v0, ":host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .registers 4
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 205
    const/4 v0, 0x3

    if-ge p0, v0, :cond_10

    .line 206
    :try_start_3
    const-string v0, "method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    return-object v0

    .line 210
    :catch_e
    move-exception v0

    goto :goto_1b

    .line 208
    :cond_10
    const-string v0, ":method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_e

    return-object v0

    .line 210
    :goto_1b
    nop

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public static getScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 265
    const/4 v0, 0x3

    if-ge p0, v0, :cond_a

    .line 266
    const-string v0, "scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_a
    const-string v0, ":scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .registers 8
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 324
    const/4 v0, 0x3

    if-ge p0, v0, :cond_c

    .line 325
    :try_start_3
    const-string v0, "status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 342
    :catch_a
    move-exception v0

    goto :goto_48

    .line 327
    :cond_c
    const-string v0, ":status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "status":Ljava/lang/String;
    :goto_12
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 330
    .local v1, "space":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    return-object v2

    .line 333
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 334
    .local v2, "code":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "reasonPhrase":Ljava/lang/String;
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v4

    .line 336
    .local v4, "responseStatus":Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    invoke-virtual {v4}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 337
    return-object v4

    .line 339
    :cond_42
    new-instance v5, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v5, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_a

    return-object v5

    .line 342
    .end local v0    # "status":Ljava/lang/String;
    .end local v1    # "space":I
    .end local v2    # "code":I
    .end local v3    # "reasonPhrase":Ljava/lang/String;
    .end local v4    # "responseStatus":Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    :goto_48
    nop

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 397
    const/4 v0, 0x3

    if-ge p0, v0, :cond_a

    .line 398
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :cond_a
    const-string v0, ":path"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .registers 4
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 455
    const/4 v0, 0x3

    if-ge p0, v0, :cond_10

    .line 456
    :try_start_3
    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    return-object v0

    .line 460
    :catch_e
    move-exception v0

    goto :goto_1b

    .line 458
    :cond_10
    const-string v0, ":version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_e

    return-object v0

    .line 460
    :goto_1b
    nop

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljava/lang/String;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1f

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 491
    .local v2, "c":C
    const/16 v3, 0x41

    if-lt v2, v3, :cond_18

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_18

    .line 492
    add-int/lit8 v3, v2, 0x20

    int-to-char v2, v3

    .line 494
    :cond_18
    mul-int/lit8 v3, v0, 0x1f

    add-int v0, v3, v2

    .line 489
    .end local v2    # "c":C
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 497
    .end local v1    # "i":I
    :cond_1f
    if-lez v0, :cond_22

    .line 498
    return v0

    .line 499
    :cond_22
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2a

    .line 500
    const v1, 0x7fffffff

    return v1

    .line 502
    :cond_2a
    neg-int v1, v0

    return v1
.end method

.method private static index(I)I
    .registers 2
    .param p0, "hash"    # I

    .line 531
    rem-int/lit8 v0, p0, 0x11

    return v0
.end method

.method private removeHeader0(IILjava/lang/String;)V
    .registers 8
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    aget-object v0, v0, p2

    .line 574
    .local v0, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    if-nez v0, :cond_7

    .line 575
    return-void

    .line 579
    :cond_7
    :goto_7
    iget v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->hash:I

    if-ne v1, p1, :cond_26

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 580
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->remove()V

    .line 581
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 582
    .local v1, "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    if-eqz v1, :cond_20

    .line 583
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    aput-object v1, v2, p2

    .line 584
    move-object v0, v1

    .line 589
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    goto :goto_7

    .line 586
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :cond_20
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, p2

    .line 587
    return-void

    .line 595
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :cond_26
    :goto_26
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 596
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    if-nez v1, :cond_2c

    .line 597
    nop

    .line 606
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    return-void

    .line 599
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :cond_2c
    iget v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->hash:I

    if-ne v2, p1, :cond_40

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 600
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 601
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->remove()V

    goto :goto_41

    .line 603
    :cond_40
    move-object v0, v1

    .line 605
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :goto_41
    goto :goto_26
.end method

.method public static removeHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 156
    const-string v0, ":host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 185
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 186
    const-string v0, "method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_e

    .line 188
    :cond_9
    const-string v0, ":method"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 190
    :goto_e
    return-void
.end method

.method public static removeMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 179
    return-void
.end method

.method public static removeScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 246
    const/4 v0, 0x2

    if-ge p0, v0, :cond_9

    .line 247
    const-string v0, "scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_e

    .line 249
    :cond_9
    const-string v0, ":scheme"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 251
    :goto_e
    return-void
.end method

.method public static removeScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 240
    return-void
.end method

.method public static removeStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 303
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 304
    const-string v0, "status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_e

    .line 306
    :cond_9
    const-string v0, ":status"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 308
    :goto_e
    return-void
.end method

.method public static removeStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 297
    return-void
.end method

.method public static removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 378
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 379
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_e

    .line 381
    :cond_9
    const-string v0, ":path"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 383
    :goto_e
    return-void
.end method

.method public static removeUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 372
    return-void
.end method

.method public static removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 3
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    .line 435
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 436
    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    goto :goto_e

    .line 438
    :cond_9
    const-string v0, ":version"

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->removeHeader(Ljava/lang/String;)V

    .line 440
    :goto_e
    return-void
.end method

.method public static removeVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V
    .registers 2
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)V

    .line 429
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 142
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 143
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 134
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public static setHost(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "host"    # Ljava/lang/String;

    .line 170
    const-string v0, ":host"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public static setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V
    .registers 5
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p2, "method"    # Lorg/jboss/netty/handler/codec/http/HttpMethod;

    .line 227
    const/4 v0, 0x3

    if-ge p0, v0, :cond_d

    .line 228
    const-string v0, "method"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 230
    :cond_d
    const-string v0, ":method"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :goto_16
    return-void
.end method

.method public static setMethod(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "method"    # Lorg/jboss/netty/handler/codec/http/HttpMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setMethod(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpMethod;)V

    .line 221
    return-void
.end method

.method public static setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .registers 4
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p2, "scheme"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 285
    const-string v0, "scheme"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 287
    :cond_9
    const-string v0, ":scheme"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    :goto_e
    return-void
.end method

.method public static setScheme(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setScheme(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public static setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V
    .registers 5
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p2, "status"    # Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 359
    const/4 v0, 0x3

    if-ge p0, v0, :cond_d

    .line 360
    const-string v0, "status"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 362
    :cond_d
    const-string v0, ":status"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    :goto_16
    return-void
.end method

.method public static setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "status"    # Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setStatus(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    .line 353
    return-void
.end method

.method public static setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .registers 4
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p2, "path"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x3

    if-ge p0, v0, :cond_9

    .line 417
    const-string v0, "url"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 419
    :cond_9
    const-string v0, ":path"

    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    :goto_e
    return-void
.end method

.method public static setUrl(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setUrl(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .registers 5
    .param p0, "spdyVersion"    # I
    .param p1, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p2, "httpVersion"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;

    .line 477
    const/4 v0, 0x3

    if-ge p0, v0, :cond_d

    .line 478
    const-string v0, "version"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 480
    :cond_d
    const-string v0, ":version"

    invoke-virtual {p2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    :goto_16
    return-void
.end method

.method public static setVersion(Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .registers 3
    .param p0, "block"    # Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .param p1, "httpVersion"    # Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setVersion(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    .line 471
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 713
    if-nez p0, :cond_4

    .line 714
    const/4 v0, 0x0

    return-object v0

    .line 716
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 542
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "lowerCaseName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    .line 544
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 546
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    .line 547
    .local v2, "h":I
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v3

    .line 548
    .local v3, "i":I
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method clearHeaders()V
    .registers 4

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 643
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    .end local v0    # "i":I
    :cond_e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 646
    return-void
.end method

.method containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 698
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 649
    if-eqz p1, :cond_24

    .line 653
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 654
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v1

    .line 655
    .local v1, "i":I
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    aget-object v2, v2, v1

    .line 656
    .local v2, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :goto_e
    if-eqz v2, :cond_22

    .line 657
    iget v3, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->hash:I

    if-ne v3, v0, :cond_1f

    iget-object v3, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 658
    iget-object v3, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    return-object v3

    .line 661
    :cond_1f
    iget-object v2, v2, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    goto :goto_e

    .line 663
    :cond_22
    const/4 v3, 0x0

    return-object v3

    .line 650
    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v2    # "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getHeaderNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 704
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 705
    .local v1, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :goto_9
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    if-eq v1, v2, :cond_15

    .line 706
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v1, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    goto :goto_9

    .line 709
    :cond_15
    return-object v0
.end method

.method getHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 689
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    iget-object v1, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    .line 690
    .local v1, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :goto_9
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->head:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    if-eq v1, v2, :cond_13

    .line 691
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v1, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    goto :goto_9

    .line 694
    :cond_13
    return-object v0
.end method

.method getHeaders(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 667
    if-eqz p1, :cond_2a

    .line 671
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 673
    .local v0, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 674
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v2

    .line 675
    .local v2, "i":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->entries:[Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    aget-object v3, v3, v2

    .line 676
    .local v3, "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :goto_13
    if-eqz v3, :cond_29

    .line 677
    iget v4, v3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->hash:I

    if-ne v4, v1, :cond_26

    iget-object v4, v3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 678
    iget-object v4, v3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 680
    :cond_26
    iget-object v3, v3, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;

    goto :goto_13

    .line 682
    :cond_29
    return-object v0

    .line 668
    .end local v0    # "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "e":Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders$Entry;
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeHeader(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 563
    if-eqz p1, :cond_12

    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "lowerCaseName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v2

    .line 569
    .local v2, "i":I
    invoke-direct {p0, v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 570
    return-void

    .line 564
    .end local v0    # "lowerCaseName":Ljava/lang/String;
    .end local v1    # "h":I
    .end local v2    # "i":I
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 620
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p2, :cond_31

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "lowerCaseName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    .line 627
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v2

    .line 630
    .local v2, "i":I
    invoke-direct {p0, v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 631
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 632
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_25

    .line 633
    goto :goto_30

    .line 635
    :cond_25
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "strVal":Ljava/lang/String;
    invoke-static {v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 637
    invoke-direct {p0, v1, v2, v0, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 638
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "strVal":Ljava/lang/String;
    goto :goto_18

    .line 639
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_30
    :goto_30
    return-void

    .line 621
    .end local v0    # "lowerCaseName":Ljava/lang/String;
    .end local v1    # "h":I
    .end local v2    # "i":I
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "lowerCaseName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    .line 611
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 613
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->hash(Ljava/lang/String;)I

    move-result v2

    .line 614
    .local v2, "h":I
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->index(I)I

    move-result v3

    .line 615
    .local v3, "i":I
    invoke-direct {p0, v2, v3, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 616
    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method
