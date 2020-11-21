.class public Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 66
    return-void
.end method

.method private static isSpecialDomain(Ljava/lang/String;)Z
    .registers 3
    .param p0, "domain"    # Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "ucDomain":Ljava/lang/String;
    const-string v1, ".COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".EDU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".NET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".GOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".MIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".ORG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, ".INT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_3f

    .line 269
    :cond_3d
    const/4 v1, 0x0

    return v1

    .line 267
    :cond_3f
    :goto_3f
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 22
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

    .line 107
    move/from16 v0, p2

    sget-object v1, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter NetscapeDraftSpec.parse(String, port, path, boolean, Header)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 109
    if-eqz p1, :cond_b4

    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 115
    if-ltz v0, :cond_91

    .line 118
    if-eqz p3, :cond_87

    .line 121
    if-eqz p5, :cond_7d

    .line 125
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 126
    const-string v2, "/"

    goto :goto_2e

    .line 128
    :cond_2c
    move-object/from16 v2, p3

    .end local p3    # "path":Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 130
    .end local p1    # "host":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    move-object v4, v2

    .line 131
    .local v4, "defaultPath":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 132
    .local v5, "lastSlashIndex":I
    const/4 v11, 0x0

    if-ltz v5, :cond_43

    .line 133
    if-nez v5, :cond_3f

    .line 135
    const/4 v5, 0x1

    .line 137
    :cond_3f
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 139
    .end local v4    # "defaultPath":Ljava/lang/String;
    .end local v5    # "lastSlashIndex":I
    .local v12, "defaultPath":Ljava/lang/String;
    .local v13, "lastSlashIndex":I
    :cond_43
    move-object v12, v4

    move v13, v5

    new-instance v4, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([C)V

    move-object v14, v4

    .line 140
    .local v14, "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    new-instance v15, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v15

    move-object v5, v1

    move-object v8, v12

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 147
    .local v4, "cookie":Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v14}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v5

    .line 149
    .local v5, "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v5, :cond_75

    .line 150
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_68
    array-length v7, v5

    if-ge v6, v7, :cond_75

    .line 151
    aget-object v7, v5, v6

    move-object/from16 v8, p0

    invoke-virtual {v8, v7, v4}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 154
    .end local v6    # "j":I
    :cond_75
    move-object/from16 v8, p0

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/commons/httpclient/Cookie;

    aput-object v4, v6, v11

    return-object v6

    .line 122
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "cookie":Lorg/apache/commons/httpclient/Cookie;
    .end local v5    # "parameters":[Lorg/apache/commons/httpclient/NameValuePair;
    .end local v12    # "defaultPath":Ljava/lang/String;
    .end local v13    # "lastSlashIndex":I
    .end local v14    # "headerelement":Lorg/apache/commons/httpclient/HeaderElement;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    :cond_7d
    move-object/from16 v8, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Header may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_87
    move-object/from16 v8, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Path of origin may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_91
    move-object/from16 v8, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_aa
    move-object/from16 v8, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Host of origin may not be blank"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    :cond_b4
    move-object/from16 v8, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Host of origin may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
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

    .line 171
    if-eqz p1, :cond_5b

    .line 174
    if-eqz p2, :cond_53

    .line 177
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "paramName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "paramValue":Ljava/lang/String;
    const-string v2, "expires"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 182
    if-eqz v1, :cond_47

    .line 187
    :try_start_1a
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .local v2, "expiryFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 190
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {p2, v3}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_2a
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_2a} :catch_2b

    .line 194
    .end local v2    # "expiryFormat":Ljava/text/DateFormat;
    .end local v3    # "date":Ljava/util/Date;
    goto :goto_52

    .line 191
    :catch_2b
    move-exception v2

    .line 192
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid expires attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_47
    new-instance v2, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for expires attribute"

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_4f
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 198
    :goto_52
    return-void

    .line 175
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 226
    sget-object v0, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enterNetscapeDraftCookieProcessor RCF2109CookieProcessor.validate(Cookie)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 229
    invoke-super/range {p0 .. p5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 231
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_78

    .line 232
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 235
    .local v0, "domainParts":I
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->isSpecialDomain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 236
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2f

    .end local v0    # "domainParts":I
    goto :goto_78

    .line 237
    .restart local v0    # "domainParts":I
    :cond_2f
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" violates the Netscape cookie specification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "special domains"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_54
    const/4 v1, 0x3

    if-lt v0, v1, :cond_58

    .end local v0    # "domainParts":I
    goto :goto_78

    .line 244
    .restart local v0    # "domainParts":I
    :cond_58
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\" violates the Netscape cookie specification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    .end local v0    # "domainParts":I
    :cond_78
    :goto_78
    return-void
.end method
