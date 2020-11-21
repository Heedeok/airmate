.class public Lorg/apache/commons/httpclient/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 5
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 56
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 58
    const-string v0, "/"

    .line 60
    :cond_8
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_21
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 67
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/Cookie;

    .line 68
    .local v0, "c1":Lorg/apache/commons/httpclient/Cookie;
    move-object v1, p2

    check-cast v1, Lorg/apache/commons/httpclient/Cookie;

    .line 69
    .local v1, "c2":Lorg/apache/commons/httpclient/Cookie;
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "path1":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/commons/httpclient/cookie/CookiePathComparator;->normalizePath(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "path2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_16

    .line 72
    return v5

    .line 73
    :cond_16
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 74
    const/4 v4, -0x1

    return v4

    .line 75
    :cond_1e
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 76
    const/4 v4, 0x1

    return v4

    .line 79
    :cond_26
    return v5
.end method