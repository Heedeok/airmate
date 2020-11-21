.class public final Lorg/apache/commons/httpclient/auth/AuthChallengeParser;
.super Ljava/lang/Object;
.source "AuthChallengeParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .param p0, "challengeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_5c

    .line 96
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 97
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_45

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v1, "map":Ljava/util/Map;
    new-instance v2, Lorg/apache/commons/httpclient/util/ParameterParser;

    invoke-direct {v2}, Lorg/apache/commons/httpclient/util/ParameterParser;-><init>()V

    .line 102
    .local v2, "parser":Lorg/apache/commons/httpclient/util/ParameterParser;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "params":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 105
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/httpclient/NameValuePair;

    .line 106
    .local v5, "param":Lorg/apache/commons/httpclient/NameValuePair;
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v5    # "param":Lorg/apache/commons/httpclient/NameValuePair;
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 108
    .end local v4    # "i":I
    :cond_44
    return-object v1

    .line 98
    .end local v1    # "map":Ljava/util/Map;
    .end local v2    # "parser":Lorg/apache/commons/httpclient/util/ParameterParser;
    .end local v3    # "params":Ljava/util/List;
    :cond_45
    new-instance v1, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "idx":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractScheme(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "challengeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 64
    if-eqz p0, :cond_37

    .line 67
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 68
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 69
    .local v1, "s":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 70
    move-object v1, p0

    goto :goto_13

    .line 72
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    :goto_13
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 75
    :cond_20
    new-instance v2, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid challenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v0    # "idx":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;
    .registers 5
    .param p0, "headers"    # [Lorg/apache/commons/httpclient/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 124
    if-eqz p0, :cond_1e

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "challenge":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 129
    .local v1, "challengemap":Ljava/util/Map;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    .line 130
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "s":Ljava/lang/String;
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 134
    .end local v2    # "i":I
    :cond_1d
    return-object v1

    .line 125
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v1    # "challengemap":Ljava/util/Map;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of challenges may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
