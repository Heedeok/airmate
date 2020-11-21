.class public Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Values;,
        Lorg/jboss/netty/handler/codec/http/HttpHeaders$Names;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x11


# instance fields
.field private final entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

.field private final head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 795
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 798
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 799
    return-void
.end method

.method public static addHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 547
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method private addHeader0(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v0, p2

    .line 818
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    new-instance v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    invoke-direct {v2, p1, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .local v3, "newEntry":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    aput-object v2, v1, p2

    .line 819
    iput-object v0, v3, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 822
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    invoke-virtual {v3, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;)V

    .line 823
    return-void
.end method

.method public static addIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .registers 4
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 608
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .line 767
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 768
    .local v0, "nameLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 769
    return v2

    .line 772
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_32

    .line 773
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 774
    .local v3, "c1":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 775
    .local v4, "c2":C
    if-eq v3, v4, :cond_2f

    .line 776
    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v3, v6, :cond_25

    if-gt v3, v5, :cond_25

    .line 777
    add-int/lit8 v7, v3, 0x20

    int-to-char v3, v7

    .line 779
    :cond_25
    if-lt v4, v6, :cond_2c

    if-gt v4, v5, :cond_2c

    .line 780
    add-int/lit8 v5, v4, 0x20

    int-to-char v4, v5

    .line 782
    :cond_2c
    if-eq v3, v4, :cond_2f

    .line 783
    return v2

    .line 772
    .end local v3    # "c1":C
    .end local v4    # "c2":C
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 787
    .end local v1    # "i":I
    :cond_32
    const/4 v1, 0x1

    return v1
.end method

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 621
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J
    .registers 7
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # J

    .line 634
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 636
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 640
    :cond_d
    instance-of v1, p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_34

    .line 641
    move-object v1, p0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    .line 642
    .local v1, "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpMethod;->GET:Lorg/jboss/netty/handler/codec/http/HttpMethod;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "Sec-WebSocket-Key1"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "Sec-WebSocket-Key2"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 645
    const-wide/16 v2, 0x8

    return-wide v2

    .line 647
    .end local v1    # "req":Lorg/jboss/netty/handler/codec/http/HttpRequest;
    :cond_33
    goto :goto_5a

    :cond_34
    instance-of v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_5a

    .line 648
    move-object v1, p0

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    .line 649
    .local v1, "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_5a

    const-string v2, "Sec-WebSocket-Origin"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "Sec-WebSocket-Location"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 652
    const-wide/16 v2, 0x10

    return-wide v2

    .line 656
    .end local v1    # "res":Lorg/jboss/netty/handler/codec/http/HttpResponse;
    :cond_5a
    :goto_5a
    return-wide p1
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .line 508
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 520
    invoke-interface {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 522
    return-object p2

    .line 524
    :cond_7
    return-object v0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 670
    const-string v0, "Host"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 678
    const-string v0, "Host"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .registers 5
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .line 560
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 564
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 562
    :cond_b
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "null"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .registers 5
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 576
    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 578
    return p2

    .line 582
    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 583
    :catch_c
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private static hash(Ljava/lang/String;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1f

    .line 750
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 751
    .local v2, "c":C
    const/16 v3, 0x41

    if-lt v2, v3, :cond_18

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_18

    .line 752
    add-int/lit8 v3, v2, 0x20

    int-to-char v2, v3

    .line 754
    :cond_18
    mul-int/lit8 v3, v0, 0x1f

    add-int v0, v3, v2

    .line 749
    .end local v2    # "c":C
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 757
    .end local v1    # "i":I
    :cond_1f
    if-lez v0, :cond_22

    .line 758
    return v0

    .line 759
    :cond_22
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2a

    .line 760
    const v1, 0x7fffffff

    return v1

    .line 762
    :cond_2a
    neg-int v1, v0

    return v1
.end method

.method private static index(I)I
    .registers 2
    .param p0, "hash"    # I

    .line 791
    rem-int/lit8 v0, p0, 0x11

    return v0
.end method

.method public static is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .registers 7
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 694
    instance-of v0, p0, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 695
    return v1

    .line 699
    :cond_6
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v0, v2}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->compareTo(Lorg/jboss/netty/handler/codec/http/HttpVersion;)I

    move-result v0

    if-gez v0, :cond_13

    .line 700
    return v1

    .line 704
    :cond_13
    const-string v0, "Expect"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 706
    return v1

    .line 708
    :cond_1c
    const-string v2, "100-continue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    .line 709
    return v3

    .line 713
    :cond_26
    const-string v2, "Expect"

    invoke-interface {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 714
    .local v4, "v":Ljava/lang/String;
    const-string v5, "100-continue"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 715
    return v3

    .line 717
    .end local v4    # "v":Ljava/lang/String;
    :cond_45
    goto :goto_30

    .line 718
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_46
    return v1
.end method

.method public static isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 453
    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "connection":Ljava/lang/String;
    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 455
    const/4 v1, 0x0

    return v1

    .line 458
    :cond_10
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 459
    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 461
    :cond_23
    const-string v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private removeHeader0(IILjava/lang/String;)V
    .registers 8
    .param p1, "h"    # I
    .param p2, "i"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v0, v0, p2

    .line 836
    .local v0, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-nez v0, :cond_7

    .line 837
    return-void

    .line 841
    :cond_7
    :goto_7
    iget v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v1, p1, :cond_26

    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 842
    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->remove()V

    .line 843
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 844
    .local v1, "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-eqz v1, :cond_20

    .line 845
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aput-object v1, v2, p2

    .line 846
    move-object v0, v1

    .line 851
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    goto :goto_7

    .line 848
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :cond_20
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v3, 0x0

    aput-object v3, v2, p2

    .line 849
    return-void

    .line 857
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :cond_26
    :goto_26
    iget-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 858
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    if-nez v1, :cond_2c

    .line 859
    nop

    .line 868
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    return-void

    .line 861
    .restart local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :cond_2c
    iget v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v2, p1, :cond_40

    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 862
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 863
    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->remove()V

    goto :goto_41

    .line 865
    :cond_40
    move-object v0, v1

    .line 867
    .end local v1    # "next":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_41
    goto :goto_26
.end method

.method public static set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .registers 2
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;

    .line 727
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V

    .line 728
    return-void
.end method

.method public static set100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V
    .registers 4
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "set"    # Z

    .line 738
    if-eqz p1, :cond_a

    .line 739
    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 741
    :cond_a
    const-string v0, "Expect"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 743
    :goto_f
    return-void
.end method

.method public static setContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)V
    .registers 5
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "length"    # J

    .line 663
    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 540
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 541
    return-void
.end method

.method public static setHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 532
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public static setHost(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/String;

    .line 685
    const-string v0, "Host"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .registers 4
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public static setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 601
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 602
    return-void
.end method

.method public static setKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;Z)V
    .registers 4
    .param p0, "message"    # Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .param p1, "keepAlive"    # Z

    .line 485
    invoke-interface {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 486
    if-eqz p1, :cond_12

    .line 487
    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_29

    .line 489
    :cond_12
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29

    .line 492
    :cond_1a
    if-eqz p1, :cond_24

    .line 493
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29

    .line 495
    :cond_24
    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    .line 498
    :goto_29
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 974
    if-nez p0, :cond_4

    .line 975
    const/4 v0, 0x0

    return-object v0

    .line 977
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 806
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 807
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "strVal":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 809
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 810
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    .line 811
    .local v2, "i":I
    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method clearHeaders()V
    .registers 4

    .line 902
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 903
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    .end local v0    # "i":I
    :cond_e
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iput-object v2, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 906
    return-void
.end method

.method containsHeader(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 958
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

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

    .line 909
    if-eqz p1, :cond_24

    .line 913
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 914
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 915
    .local v1, "i":I
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v2, v2, v1

    .line 916
    .local v2, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_e
    if-eqz v2, :cond_22

    .line 917
    iget v3, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v3, v0, :cond_1f

    iget-object v3, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 918
    iget-object v3, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    return-object v3

    .line 921
    :cond_1f
    iget-object v2, v2, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_e

    .line 923
    :cond_22
    const/4 v3, 0x0

    return-object v3

    .line 910
    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v2    # "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
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

    .line 962
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/jboss/netty/util/internal/CaseIgnoringComparator;->INSTANCE:Lorg/jboss/netty/util/internal/CaseIgnoringComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 965
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 966
    .local v1, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_b
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    if-eq v1, v2, :cond_17

    .line 967
    iget-object v2, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v1, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_b

    .line 970
    :cond_17
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

    .line 946
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 949
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    iget-object v1, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    .line 950
    .local v1, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_9
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->head:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    if-eq v1, v2, :cond_13

    .line 951
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v1, v1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_9

    .line 954
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

    .line 927
    if-eqz p1, :cond_2a

    .line 931
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 933
    .local v0, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    .line 935
    .local v2, "i":I
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->entries:[Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    aget-object v3, v3, v2

    .line 936
    .local v3, "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :goto_13
    if-eqz v3, :cond_29

    .line 937
    iget v4, v3, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->hash:I

    if-ne v4, v1, :cond_26

    iget-object v4, v3, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->key:Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 938
    iget-object v4, v3, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->value:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 940
    :cond_26
    iget-object v3, v3, Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;->next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;

    goto :goto_13

    .line 942
    :cond_29
    return-object v0

    .line 928
    .end local v0    # "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "e":Lorg/jboss/netty/handler/codec/http/HttpHeaders$Entry;
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 826
    if-eqz p1, :cond_e

    .line 829
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 830
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 831
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 832
    return-void

    .line 827
    .end local v0    # "h":I
    .end local v1    # "i":I
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 881
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p2, :cond_2d

    .line 885
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 887
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v0

    .line 888
    .local v0, "h":I
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v1

    .line 890
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 891
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 892
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_21

    .line 893
    goto :goto_2c

    .line 895
    :cond_21
    invoke-static {v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, "strVal":Ljava/lang/String;
    invoke-static {v4}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 897
    invoke-direct {p0, v0, v1, p1, v4}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 898
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "strVal":Ljava/lang/String;
    goto :goto_14

    .line 899
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    return-void

    .line 882
    .end local v0    # "h":I
    .end local v1    # "i":I
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 871
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->validateHeaderName(Ljava/lang/String;)V

    .line 872
    invoke-static {p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "strVal":Ljava/lang/String;
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    .line 874
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/String;)I

    move-result v1

    .line 875
    .local v1, "h":I
    invoke-static {v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->index(I)I

    move-result v2

    .line 876
    .local v2, "i":I
    invoke-direct {p0, v1, v2, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader0(IILjava/lang/String;)V

    .line 877
    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader0(IILjava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method validateHeaderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 802
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderName(Ljava/lang/String;)V

    .line 803
    return-void
.end method
