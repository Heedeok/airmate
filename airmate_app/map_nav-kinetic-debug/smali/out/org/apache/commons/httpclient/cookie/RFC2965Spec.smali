.class public Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieVersionSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;,
        Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;
    }
.end annotation


# static fields
.field private static final PATH_COMPOARATOR:Ljava/util/Comparator;

.field public static final SET_COOKIE2_KEY:Ljava/lang/String; = "set-cookie2"


# instance fields
.field private final attribHandlerList:Ljava/util/List;

.field private final attribHandlerMap:Ljava/util/Map;

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private final rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->PATH_COMPOARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 92
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 93
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    .line 96
    new-instance v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 98
    const-string v0, "path"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PathAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 99
    const-string v0, "domain"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2DomainAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 100
    const-string v0, "port"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2PortAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 101
    const-string v0, "max-age"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2MaxageAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 102
    const-string v0, "secure"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieSecureAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 103
    const-string v0, "comment"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 104
    const-string v0, "commenturl"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieCommentUrlAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 105
    const-string v0, "discard"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$CookieDiscardAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 106
    const-string v0, "version"

    new-instance v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V

    .line 107
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;I[I)Z
    .registers 4
    .param p0, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->portMatch(I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Ljava/lang/String;)[I
    .registers 3
    .param p0, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private createPortAttribute([I)Ljava/lang/String;
    .registers 6
    .param p1, "ports"    # [I

    .line 508
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .local v0, "portValue":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "len":I
    :goto_7
    if-ge v1, v2, :cond_18

    .line 510
    if-lez v1, :cond_10

    .line 511
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    :cond_10
    aget v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 515
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V
    .registers 9
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/cookie/Cookie2;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getName()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 403
    const-string v1, ""

    .line 405
    :cond_c
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 407
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isDomainAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 408
    const-string v2, "; "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v4, "$Domain"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 412
    :cond_37
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPathAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 413
    const-string v2, "; "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v4, "$Path"

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2, v3}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 417
    :cond_58
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeSpecified()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 418
    const-string v2, ""

    .line 419
    .local v2, "portValue":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 420
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getPorts()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->createPortAttribute([I)Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_6e
    const-string v3, "; "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Port"

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 425
    .end local v2    # "portValue":Ljava/lang/String;
    :cond_7f
    return-void
.end method

.method private static getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "effectiveHost":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1d

    .line 561
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_1d
    return-object v0
.end method

.method private parsePortAttribute(Ljava/lang/String;)[I
    .registers 8
    .param p1, "portValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 532
    .local v1, "ports":[I
    const/4 v2, 0x0

    .line 533
    .local v2, "i":I
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 534
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 535
    aget v3, v1, v2

    if-ltz v3, :cond_29

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 536
    :cond_29
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v4, "Invalid Port attribute."

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_31} :catch_33

    .line 543
    .end local v2    # "i":I
    :cond_31
    nop

    .line 544
    return-object v1

    .line 540
    :catch_33
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid Port attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private portMatch(I[I)Z
    .registers 7
    .param p1, "port"    # I
    .param p2, "ports"    # [I

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "portInList":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "len":I
    :goto_3
    if-ge v1, v2, :cond_e

    .line 600
    aget v3, p2, v1

    if-ne p1, v3, :cond_b

    .line 601
    const/4 v0, 0x1

    .line 602
    goto :goto_e

    .line 599
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 605
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_e
    :goto_e
    return v0
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 582
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 585
    .local v0, "match":Z
    :goto_18
    return v0
.end method

.method protected findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    return-object v0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 9
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 434
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.formatCookie(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 436
    if-eqz p1, :cond_3d

    .line 439
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_36

    .line 440
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 441
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getVersion()I

    move-result v1

    .line 442
    .local v1, "version":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v2, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "$Version"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 444
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 449
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v1    # "version":I
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    :cond_36
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v0, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 10
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .line 461
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.formatCookieHeader(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 463
    if-eqz p1, :cond_68

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "hasOldStyleCookie":Z
    const/4 v1, -0x1

    .line 469
    .local v1, "version":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "version":I
    :goto_e
    array-length v4, p1

    if-ge v1, v4, :cond_26

    .line 470
    aget-object v4, p1, v1

    .line 471
    .local v4, "cookie":Lorg/apache/commons/httpclient/Cookie;
    instance-of v5, v4, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-nez v5, :cond_19

    .line 472
    const/4 v0, 0x1

    .line 473
    goto :goto_26

    .line 475
    :cond_19
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v5

    if-le v5, v3, :cond_23

    .line 476
    invoke-virtual {v4}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v3

    .line 469
    .end local v4    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 479
    .end local v1    # "i":I
    :cond_26
    :goto_26
    if-gez v3, :cond_29

    .line 480
    const/4 v3, 0x0

    .line 482
    :cond_29
    if-nez v0, :cond_61

    const/4 v1, 0x1

    if-ge v3, v1, :cond_2f

    goto :goto_61

    .line 487
    :cond_2f
    sget-object v1, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->PATH_COMPOARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 489
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 491
    .local v1, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    new-instance v5, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v6, "$Version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 492
    nop

    .local v2, "i":I
    :goto_4a
    array-length v4, p1

    if-ge v2, v4, :cond_5c

    .line 493
    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    aget-object v4, p1, v2

    check-cast v4, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 496
    .local v4, "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-direct {p0, v4, v1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->doFormatCookie2(Lorg/apache/commons/httpclient/cookie/Cookie2;Ljava/lang/StringBuffer;)V

    .line 492
    .end local v4    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 498
    .end local v2    # "i":I
    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 484
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_61
    :goto_61
    iget-object v1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-interface {v1, p1}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 464
    .end local v0    # "hasOldStyleCookie":Z
    .end local v3    # "version":I
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookies may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 144
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v0

    .line 145
    .local v0, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    if-eqz v0, :cond_7

    .line 149
    return-object v0

    .line 146
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Handler not registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " attribute."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getAttribHandlerIterator()Ljava/util/Iterator;
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 1106
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/commons/httpclient/Header;
    .registers 7

    .line 1110
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    .line 1111
    .local v0, "formatter":Lorg/apache/commons/httpclient/util/ParameterFormatter;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1112
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 1114
    new-instance v2, Lorg/apache/commons/httpclient/Header;

    const-string v3, "Cookie2"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z
    .registers 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "secure"    # Z
    .param p5, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 375
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965.match(String, int, String, boolean, Cookie"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 377
    if-eqz p5, :cond_4a

    .line 380
    instance-of v0, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_3e

    .line 382
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isPersistent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 383
    return v1

    .line 385
    :cond_1b
    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 386
    .local v0, "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .line 388
    .local v3, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v3, p5, v0}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 389
    return v1

    .line 391
    .end local v3    # "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    :cond_3b
    goto :goto_28

    .line 392
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_3c
    const/4 v1, 0x1

    return v1

    .line 395
    .end local v0    # "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    :cond_3e
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->match(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)Z

    move-result v0

    return v0

    .line 378
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 27
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

    .line 225
    move/from16 v1, p2

    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter RFC2965Spec.parse(String, int, String, boolean, String)"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 229
    if-eqz p1, :cond_108

    .line 233
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 237
    if-ltz v1, :cond_e5

    .line 240
    if-eqz p3, :cond_db

    .line 244
    if-eqz p5, :cond_d1

    .line 248
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 249
    const-string v2, "/"

    goto :goto_2e

    .line 251
    :cond_2c
    move-object/from16 v2, p3

    .end local p3    # "path":Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    :goto_2e
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 253
    .end local p1    # "host":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/httpclient/HeaderElement;->parseElements([C)[Lorg/apache/commons/httpclient/HeaderElement;

    move-result-object v13

    .line 256
    .local v13, "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v14, v0

    .line 257
    .local v14, "cookies":Ljava/util/List;
    const/4 v0, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    move v15, v4

    .end local v4    # "i":I
    .local v15, "i":I
    array-length v4, v13

    if-ge v15, v4, :cond_c2

    .line 258
    aget-object v16, v13, v15

    .line 259
    .local v16, "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    const/4 v4, 0x0

    move-object/from16 v17, v4

    .line 261
    .local v17, "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :try_start_4b
    new-instance v18, Lorg/apache/commons/httpclient/cookie/Cookie2;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v8, v11, [I

    aput v1, v8, v0

    move-object/from16 v4, v18

    move-object v5, v12

    move-object/from16 v19, v8

    move-object v8, v2

    const/16 v20, 0x1

    move-object/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/httpclient/cookie/Cookie2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z[I)V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_69} :catch_b5

    move-object/from16 v4, v18

    .line 270
    .end local v17    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .local v4, "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    nop

    .line 271
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v5

    .line 273
    .local v5, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v5, :cond_ad

    .line 275
    new-instance v6, Ljava/util/HashMap;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 276
    .local v6, "attribmap":Ljava/util/Map;
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_7b
    if-ltz v7, :cond_8d

    .line 277
    aget-object v8, v5, v7

    .line 278
    .local v8, "param":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v8}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v8    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    add-int/lit8 v7, v7, -0x1

    goto :goto_7b

    .line 280
    .end local v7    # "j":I
    :cond_8d
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_95
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 281
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 282
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/httpclient/NameValuePair;

    move-object/from16 v10, p0

    invoke-virtual {v10, v9, v4}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 283
    .end local v8    # "entry":Ljava/util/Map$Entry;
    goto :goto_95

    .line 285
    .end local v6    # "attribmap":Ljava/util/Map;
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_ad
    move-object/from16 v10, p0

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v4    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    .end local v5    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    .end local v16    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    add-int/lit8 v4, v15, 0x1

    goto :goto_42

    .line 268
    .restart local v16    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .restart local v17    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :catch_b5
    move-exception v0

    move-object/from16 v10, p0

    .line 269
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v15    # "i":I
    .end local v16    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .end local v17    # "cookie":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_c2
    move-object/from16 v10, p0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/httpclient/Cookie;

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/httpclient/Cookie;

    return-object v0

    .line 245
    .end local v2    # "path":Ljava/lang/String;
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "headerElements":[Lorg/apache/commons/httpclient/HeaderElement;
    .end local v14    # "cookies":Ljava/util/List;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    :cond_d1
    move-object/from16 v10, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Header may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 241
    :cond_db
    move-object/from16 v10, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Path of origin may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_e5
    move-object/from16 v10, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_fe
    move-object/from16 v10, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Host of origin may not be blank"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_108
    move-object/from16 v10, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Host of origin may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Header;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 13
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

    .line 196
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965.parse(String, int, String, boolean, Header)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 199
    if-eqz p5, :cond_54

    .line 202
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 206
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 208
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    return-object v0

    .line 209
    :cond_29
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set-cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 211
    iget-object v1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;

    move-result-object v0

    return-object v0

    .line 213
    :cond_44
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Header name is not valid. RFC 2965 supports \"set-cookie\" and \"set-cookie2\" headers."

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .registers 9
    .param p1, "attribute"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 303
    if-eqz p1, :cond_53

    .line 306
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 309
    if-eqz p2, :cond_43

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "paramValue":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    move-result-object v2

    .line 316
    .local v2, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    if-nez v2, :cond_3f

    .line 318
    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 319
    sget-object v3, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unrecognized cookie attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_42

    .line 322
    :cond_3f
    invoke-interface {v2, p2, v1}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V

    .line 324
    :cond_42
    :goto_42
    return-void

    .line 310
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    .end local v2    # "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute Name may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerAttribHandler(Ljava/lang/String;Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .line 111
    if-eqz p1, :cond_1f

    .line 114
    if-eqz p2, :cond_17

    .line 117
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 118
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->attribHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void

    .line 115
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute handler may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .registers 14
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

    .line 342
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2965Spec.validate(String, int, String, boolean, Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 345
    instance-of v0, p5, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_52

    .line 346
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    .line 349
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 352
    new-instance v0, Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    invoke-static {p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getEffectiveHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/apache/commons/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 353
    .local v0, "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->getAttribHandlerIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;

    .line 355
    .local v2, "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    invoke-interface {v2, p5, v0}, Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;->validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V

    .line 356
    .end local v2    # "handler":Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;
    goto :goto_31

    .line 357
    .end local v0    # "origin":Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_41
    goto :goto_5c

    .line 350
    :cond_42
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_4a
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_52
    iget-object v2, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec;->rfc2109:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 361
    :goto_5c
    return-void
.end method
