.class public Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.super Ljava/lang/Object;
.source "CookieSpecBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieSpec;


# static fields
.field protected static final LOG:Lorg/apache/commons/logging/Log;

.field static synthetic class$org$apache$commons$httpclient$cookie$CookieSpec:Ljava/lang/Class;


# instance fields
.field private datepatterns:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->class$org$apache$commons$httpclient$cookie$CookieSpec:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.cookie.CookieSpec"

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->class$org$apache$commons$httpclient$cookie$CookieSpec:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->class$org$apache$commons$httpclient$cookie$CookieSpec:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->datepatterns:Ljava/util/Collection;

    .line 75
    return-void
.end method

.method private static addInPathOrder(Ljava/util/List;Lorg/apache/commons/httpclient/Cookie;)V
    .registers 5
    .param p0, "list"    # Ljava/util/List;
    .param p1, "addCookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 578
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 579
    .local v1, "c":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {p1, p1, v1}, Lorg/apache/commons/httpclient/Cookie;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_15

    .line 580
    goto :goto_18

    .line 577
    .end local v1    # "c":Lorg/apache/commons/httpclient/Cookie;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 583
    :cond_18
    :goto_18
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
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


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 507
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 508
    return v1

    .line 510
    :cond_8
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 511
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 513
    :cond_21
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v1, 0x0

    nop

    :cond_34
    :goto_34
    return v1
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 592
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookie(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 593
    if-eqz p1, :cond_28

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 594
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "s":Ljava/lang/String;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatCookieHeader(Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .registers 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 655
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookieHeader(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 656
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Cookie"

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public formatCookieHeader([Lorg/apache/commons/httpclient/Cookie;)Lorg/apache/commons/httpclient/Header;
    .registers 5
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .line 643
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookieHeader(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 644
    new-instance v0, Lorg/apache/commons/httpclient/Header;

    const-string v1, "Cookie"

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 5
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 616
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.formatCookies(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 617
    if-eqz p1, :cond_35

    .line 620
    array-length v0, p1

    if-eqz v0, :cond_2d

    .line 624
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_28

    .line 626
    if-lez v1, :cond_1c

    .line 627
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    :cond_1c
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 631
    .end local v1    # "i":I
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 621
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie array may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie array may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValidDateFormats()Ljava/util/Collection;
    .registers 2

    .line 345
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->datepatterns:Ljava/util/Collection;

    return-object v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 453
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.match(String, int, String, boolean, Cookie"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 456
    if-eqz p1, :cond_ad

    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 464
    if-ltz p2, :cond_8e

    .line 467
    if-eqz p3, :cond_86

    .line 471
    if-eqz p5, :cond_7e

    .line 474
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 475
    const-string p3, "/"

    .line 477
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3c

    .line 479
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid cookie state: domain not specified"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 480
    return v1

    .line 482
    :cond_3c
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 483
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid cookie state: path not specified"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 484
    return v1

    .line 487
    :cond_4a
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_5f
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_7b

    if-eqz p4, :cond_7d

    :cond_7b
    const/4 v1, 0x1

    nop

    :cond_7d
    return v1

    .line 472
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;Z[Lorg/apache/commons/httpclient/Cookie;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 15
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .line 549
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.match(String, int, String, boolean, Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 552
    if-nez p5, :cond_b

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 556
    .local v0, "matching":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, p5

    if-ge v1, v2, :cond_29

    .line 557
    aget-object v8, p5, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 558
    aget-object v2, p5, v1

    invoke-static {v0, v2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->addInPathOrder(Ljava/util/List;Lorg/apache/commons/httpclient/Cookie;)V

    .line 556
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 561
    .end local v1    # "i":I
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Cookie;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/httpclient/Cookie;

    return-object v1
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 30
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 113
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter CookieSpecBase.parse(String, port, path, boolean, Header)"

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 116
    if-eqz p1, :cond_12a

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 124
    if-ltz v2, :cond_10b

    .line 127
    if-eqz p3, :cond_103

    .line 131
    if-eqz v3, :cond_fb

    .line 135
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 136
    const-string v4, "/"

    goto :goto_32

    .line 138
    :cond_30
    move-object/from16 v4, p3

    .end local p3    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    :goto_32
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 140
    .end local p1    # "host":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    move-object v0, v4

    .line 141
    .local v0, "defaultPath":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, "lastSlashIndex":I
    const/4 v13, 0x0

    if-ltz v5, :cond_47

    .line 143
    if-nez v5, :cond_43

    .line 145
    const/4 v5, 0x1

    .line 147
    :cond_43
    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v0    # "defaultPath":Ljava/lang/String;
    .end local v5    # "lastSlashIndex":I
    .local v14, "defaultPath":Ljava/lang/String;
    .local v15, "lastSlashIndex":I
    :cond_47
    move-object v14, v0

    move v15, v5

    const/4 v5, 0x0

    .line 152
    .local v5, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    const/4 v6, 0x0

    .line 153
    .local v6, "isNetscapeCookie":Z
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "expires="

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "i1":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7d

    .line 155
    const-string v8, "expires="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    .line 156
    .end local v0    # "i1":I
    .local v8, "i1":I
    const-string v0, ";"

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 157
    .local v0, "i2":I
    if-ne v0, v7, :cond_6b

    .line 158
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 161
    .end local v0    # "i2":I
    .local v7, "i2":I
    :cond_6b
    move v7, v0

    :try_start_6c
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->datepatterns:Ljava/util/Collection;

    invoke-static {v0, v9}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;
    :try_end_75
    .catch Lorg/apache/commons/httpclient/util/DateParseException; {:try_start_6c .. :try_end_75} :catch_77

    .line 162
    const/4 v6, 0x1

    .line 165
    goto :goto_78

    .line 163
    :catch_77
    move-exception v0

    .line 167
    .end local v6    # "isNetscapeCookie":Z
    .end local v7    # "i2":I
    .end local v8    # "i1":I
    .local v16, "isNetscapeCookie":Z
    .local v17, "i1":I
    :goto_78
    move/from16 v16, v6

    move/from16 v17, v8

    goto :goto_81

    .end local v16    # "isNetscapeCookie":Z
    .end local v17    # "i1":I
    .local v0, "i1":I
    .restart local v6    # "isNetscapeCookie":Z
    :cond_7d
    move/from16 v17, v0

    move/from16 v16, v6

    .end local v0    # "i1":I
    .end local v6    # "isNetscapeCookie":Z
    .restart local v16    # "isNetscapeCookie":Z
    .restart local v17    # "i1":I
    :goto_81
    if-eqz v16, :cond_93

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/httpclient/HeaderElement;

    new-instance v6, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([C)V

    aput-object v6, v0, v13

    .line 175
    .end local v5    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .local v11, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :goto_91
    move-object v11, v0

    goto :goto_9c

    .line 172
    .end local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v5    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_93
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v0

    goto :goto_91

    .line 175
    .end local v5    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :goto_9c
    array-length v0, v11

    new-array v10, v0, [Lorg/apache/commons/httpclient/Cookie;

    .line 177
    .local v10, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a0
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    array-length v0, v11

    if-ge v9, v0, :cond_f6

    .line 179
    aget-object v18, v11, v9

    .line 180
    .local v18, "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    const/4 v0, 0x0

    move-object/from16 v19, v0

    .line 182
    .local v19, "cookie":Lorg/apache/commons/httpclient/Cookie;
    :try_start_a9
    new-instance v0, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v8
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a9 .. :try_end_b3} :catch_e5

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v5, v0

    move-object v6, v12

    move/from16 v22, v9

    .end local v9    # "i":I
    .local v22, "i":I
    move-object v9, v14

    move-object/from16 v23, v10

    .end local v10    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .local v23, "cookies":[Lorg/apache/commons/httpclient/Cookie;
    move-object/from16 v10, v20

    move-object/from16 v20, v11

    .end local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .local v20, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    move/from16 v11, v21

    :try_start_c4
    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c4 .. :try_end_c7} :catch_e3

    .line 190
    .end local v19    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .local v0, "cookie":Lorg/apache/commons/httpclient/Cookie;
    nop

    .line 192
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v5

    .line 194
    .local v5, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v5, :cond_da

    .line 196
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_cf
    array-length v7, v5

    if-ge v6, v7, :cond_da

    .line 197
    aget-object v7, v5, v6

    invoke-virtual {v1, v7, v0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    .line 200
    .end local v6    # "j":I
    :cond_da
    aput-object v0, v23, v22

    .line 177
    .end local v0    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v5    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    .end local v18    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v11, v20

    move-object/from16 v10, v23

    goto :goto_a0

    .line 188
    .restart local v18    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v19    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :catch_e3
    move-exception v0

    goto :goto_ec

    .end local v20    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v22    # "i":I
    .end local v23    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local v9    # "i":I
    .restart local v10    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :catch_e5
    move-exception v0

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v20, v11

    .line 189
    .end local v9    # "i":I
    .end local v10    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .end local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v22    # "i":I
    .restart local v23    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    :goto_ec
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .end local v19    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v20    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v22    # "i":I
    .end local v23    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local v10    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    :cond_f6
    move-object/from16 v23, v10

    move-object/from16 v20, v11

    .end local v10    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .end local v11    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v20    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v23    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    return-object v23

    .line 132
    .end local v4    # "path":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v14    # "defaultPath":Ljava/lang/String;
    .end local v15    # "lastSlashIndex":I
    .end local v16    # "isNetscapeCookie":Z
    .end local v17    # "i1":I
    .end local v20    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v23    # "cookies":[Lorg/apache/commons/httpclient/Cookie;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    :cond_fb
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Header may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    :cond_103
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Path of origin may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_10b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Host of origin may not be blank"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    :cond_12a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Host of origin may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "header"    # Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 243
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.parse(String, port, path, boolean, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 245
    if-eqz p5, :cond_17

    .line 248
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    return-object v0

    .line 246
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .registers 13
    .param p1, "attribute"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 266
    if-eqz p1, :cond_124

    .line 269
    if-eqz p2, :cond_11c

    .line 272
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "paramValue":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 277
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 278
    :cond_27
    const-string v1, "/"

    .line 280
    :cond_29
    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setPathAttributeSpecified(Z)V

    goto/16 :goto_11b

    .line 283
    :cond_31
    const-string v2, "domain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 285
    if-eqz v1, :cond_57

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 293
    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/Cookie;->setDomain(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setDomainAttributeSpecified(Z)V

    goto/16 :goto_11b

    .line 290
    :cond_4f
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Blank value for domain attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_57
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for domain attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_5f
    const-string v2, "max-age"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 298
    if-eqz v1, :cond_9e

    .line 304
    :try_start_69
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6d} :catch_82

    .line 308
    .local v2, "age":I
    nop

    .line 309
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V

    .line 312
    .end local v2    # "age":I
    goto/16 :goto_11b

    .line 305
    :catch_82
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid max-age attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9e
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for max-age attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_a6
    const-string v2, "secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 314
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setSecure(Z)V

    goto :goto_11b

    .line 316
    :cond_b2
    const-string v2, "comment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 318
    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/Cookie;->setComment(Ljava/lang/String;)V

    goto :goto_11b

    .line 320
    :cond_be
    const-string v2, "expires"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 322
    if-eqz v1, :cond_f1

    .line 328
    :try_start_c8
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->datepatterns:Ljava/util/Collection;

    invoke-static {v1, v2}, Lorg/apache/commons/httpclient/util/DateUtil;->parseDate(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_d1
    .catch Lorg/apache/commons/httpclient/util/DateParseException; {:try_start_c8 .. :try_end_d1} :catch_d2

    .line 334
    goto :goto_11b

    .line 329
    :catch_d2
    move-exception v2

    .line 330
    .local v2, "dpe":Lorg/apache/commons/httpclient/util/DateParseException;
    sget-object v3, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Error parsing cookie date"

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 331
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to parse expiration date parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    .end local v2    # "dpe":Lorg/apache/commons/httpclient/util/DateParseException;
    :cond_f1
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for expires attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_f9
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 337
    sget-object v2, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unrecognized cookie attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 341
    :cond_11b
    :goto_11b
    return-void

    .line 270
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_11c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "topmostPath"    # Ljava/lang/String;

    .line 523
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 526
    .local v0, "match":Z
    if-eqz v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_28

    .line 527
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Lorg/apache/commons/httpclient/cookie/CookieSpec;->PATH_DELIM_CHAR:C

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    move v0, v1

    .line 531
    :cond_28
    return v0
.end method

.method public setValidDateFormats(Ljava/util/Collection;)V
    .registers 2
    .param p1, "datepatterns"    # Ljava/util/Collection;

    .line 349
    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->datepatterns:Ljava/util/Collection;

    .line 350
    return-void
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .registers 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 369
    sget-object v0, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter CookieSpecBase.validate(String, port, path, boolean, Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 371
    if-eqz p1, :cond_12e

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    .line 379
    if-ltz p2, :cond_10f

    .line 382
    if-eqz p3, :cond_107

    .line 386
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 387
    const-string p3, "/"

    .line 389
    :cond_27
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v0

    if-ltz v0, :cond_ec

    .line 404
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_87

    .line 409
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 410
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "s":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 419
    .end local v0    # "s":Ljava/lang/String;
    goto :goto_91

    .line 415
    .restart local v0    # "s":Ljava/lang/String;
    :cond_5f
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\". Domain of origin: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    .end local v0    # "s":Ljava/lang/String;
    :cond_87
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 431
    :cond_91
    :goto_91
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 436
    return-void

    .line 432
    :cond_9c
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal path attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\". Path of origin: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_c4
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal domain attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\". Domain of origin: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_ec
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal version number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path of origin may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_10f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_12e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host of origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
