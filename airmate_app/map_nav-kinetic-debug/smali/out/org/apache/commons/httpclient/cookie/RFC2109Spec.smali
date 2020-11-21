.class public Lorg/apache/commons/httpclient/cookie/RFC2109Spec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "RFC2109Spec.java"


# static fields
.field public static final SET_COOKIE_KEY:Ljava/lang/String; = "set-cookie"


# instance fields
.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 67
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 68
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->setAlwaysUseQuotes(Z)V

    .line 69
    return-void
.end method

.method private formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V
    .registers 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "cookie"    # Lorg/apache/commons/httpclient/Cookie;
    .param p3, "version"    # I

    .line 227
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 229
    const-string v0, ""

    .line 231
    :cond_8
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 232
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isPathAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 233
    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Path"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 236
    :cond_33
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 238
    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    new-instance v1, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v2, "$Domain"

    invoke-virtual {p2}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p3}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 241
    :cond_52
    return-void
.end method

.method private formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "param"    # Lorg/apache/commons/httpclient/NameValuePair;
    .param p3, "version"    # I

    .line 208
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1d

    .line 209
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 212
    invoke-virtual {p2}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 215
    :cond_1d
    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/ParameterFormatter;->format(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 217
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 193
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

    .line 196
    .local v0, "match":Z
    :goto_18
    return v0
.end method

.method public formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 7
    .param p1, "cookie"    # Lorg/apache/commons/httpclient/Cookie;

    .line 250
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2109Spec.formatCookie(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 251
    if-eqz p1, :cond_2d

    .line 254
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v0

    .line 255
    .local v0, "version":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v1, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v3, "$Version"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 259
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 252
    .end local v0    # "version":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatCookies([Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;
    .registers 8
    .param p1, "cookies"    # [Lorg/apache/commons/httpclient/Cookie;

    .line 272
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2109Spec.formatCookieHeader(Cookie[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 273
    const v0, 0x7fffffff

    .line 275
    .local v0, "version":I
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "version":I
    :goto_d
    array-length v3, p1

    if-ge v0, v3, :cond_1f

    .line 276
    aget-object v3, p1, v0

    .line 277
    .local v3, "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_1c

    .line 278
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Cookie;->getVersion()I

    move-result v2

    .line 275
    .end local v3    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 281
    .end local v0    # "i":I
    :cond_1f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v4, "$Version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatParam(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/NameValuePair;I)V

    .line 285
    nop

    .local v1, "i":I
    :goto_33
    array-length v3, p1

    if-ge v1, v3, :cond_43

    .line 286
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    aget-object v3, p1, v1

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->formatCookieAsVer(Ljava/lang/StringBuffer;Lorg/apache/commons/httpclient/Cookie;I)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 289
    .end local v1    # "i":I
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 84
    if-eqz p1, :cond_80

    .line 87
    if-eqz p2, :cond_78

    .line 90
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "paramValue":Ljava/lang/String;
    const-string v2, "path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 94
    if-eqz v1, :cond_36

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 102
    invoke-virtual {p2, v1}, Lorg/apache/commons/httpclient/Cookie;->setPath(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/apache/commons/httpclient/Cookie;->setPathAttributeSpecified(Z)V

    goto :goto_77

    .line 99
    :cond_2e
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Blank value for path attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_36
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for path attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_3e
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 106
    if-eqz v1, :cond_6c

    .line 111
    :try_start_48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/apache/commons/httpclient/Cookie;->setVersion(I)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4f} :catch_50

    .line 115
    goto :goto_77

    .line 112
    :catch_50
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6c
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for version attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_74
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 120
    :goto_77
    return-void

    .line 88
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .registers 12
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

    .line 137
    sget-object v0, Lorg/apache/commons/httpclient/cookie/RFC2109Spec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter RFC2109Spec.validate(String, int, String, boolean, Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 141
    invoke-super/range {p0 .. p5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 144
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_110

    .line 147
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    .line 151
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->isDomainAttributeSpecified()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 155
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 161
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x2e

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 162
    .local v0, "dotIndex":I
    if-ltz v0, :cond_c7

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-eq v0, v4, :cond_c7

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 174
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "hostWithoutDomain":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_7f

    .end local v0    # "dotIndex":I
    .end local v2    # "hostWithoutDomain":Ljava/lang/String;
    goto/16 :goto_107

    .line 177
    .restart local v0    # "dotIndex":I
    .restart local v2    # "hostWithoutDomain":Ljava/lang/String;
    :cond_7f
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Domain attribute \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\" violates RFC 2109: host minus domain may not contain any dots"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v2    # "hostWithoutDomain":Ljava/lang/String;
    :cond_9f
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

    .line 163
    :cond_c7
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" violates RFC 2109: domain must contain an embedded dot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0    # "dotIndex":I
    :cond_e7
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Domain attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" violates RFC 2109: domain must start with a dot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_107
    :goto_107
    return-void

    .line 148
    :cond_108
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_110
    new-instance v0, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
