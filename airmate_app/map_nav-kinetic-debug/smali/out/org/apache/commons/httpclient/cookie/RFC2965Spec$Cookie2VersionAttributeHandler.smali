.class Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965Spec.java"

# interfaces
.implements Lorg/apache/commons/httpclient/cookie/CookieAttributeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cookie2VersionAttributeHandler"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V
    .registers 2

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;->this$0:Lorg/apache/commons/httpclient/cookie/RFC2965Spec;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec;
    .param p2, "x1"    # Lorg/apache/commons/httpclient/cookie/RFC2965Spec$1;

    .line 1051
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/cookie/RFC2965Spec$Cookie2VersionAttributeHandler;-><init>(Lorg/apache/commons/httpclient/cookie/RFC2965Spec;)V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)Z
    .registers 4
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;

    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lorg/apache/commons/httpclient/Cookie;Ljava/lang/String;)V
    .registers 7
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 1059
    if-eqz p1, :cond_2f

    .line 1062
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_2e

    .line 1063
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 1064
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    if-eqz p2, :cond_26

    .line 1068
    const/4 v1, -0x1

    .line 1070
    .local v1, "version":I
    :try_start_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_12

    move v1, v2

    .line 1073
    goto :goto_14

    .line 1071
    :catch_12
    move-exception v2

    .line 1072
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .line 1074
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_14
    if-ltz v1, :cond_1e

    .line 1077
    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersion(I)V

    .line 1078
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setVersionAttributeSpecified(Z)V

    goto :goto_2e

    .line 1075
    :cond_1e
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Invalid cookie version."

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1065
    .end local v1    # "version":I
    :cond_26
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v2, "Missing value for version attribute"

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1080
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_2e
    :goto_2e
    return-void

    .line 1060
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Lorg/apache/commons/httpclient/Cookie;Lorg/apache/commons/httpclient/cookie/CookieOrigin;)V
    .registers 6
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p2, "origin"    # Lorg/apache/commons/httpclient/cookie/CookieOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 1087
    if-eqz p1, :cond_19

    .line 1090
    instance-of v0, p1, Lorg/apache/commons/httpclient/cookie/Cookie2;

    if-eqz v0, :cond_18

    .line 1091
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/cookie/Cookie2;

    .line 1092
    .local v0, "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->isVersionAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_10

    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    goto :goto_18

    .line 1093
    .restart local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_10
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v2, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    .end local v0    # "cookie2":Lorg/apache/commons/httpclient/cookie/Cookie2;
    :cond_18
    :goto_18
    return-void

    .line 1088
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
