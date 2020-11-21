.class public Lorg/apache/commons/httpclient/util/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 60
    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    .line 63
    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 66
    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 71
    return-void
.end method

.method private getToken(Z)Ljava/lang/String;
    .registers 8
    .param p1, "quoted"    # Z

    .line 83
    :goto_0
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    goto :goto_0

    .line 87
    :cond_19
    :goto_19
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-le v0, v1, :cond_34

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 88
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    goto :goto_19

    .line 91
    :cond_34
    if-eqz p1, :cond_5e

    .line 92
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5e

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_5e

    .line 95
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 96
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 99
    :cond_5e
    const/4 v0, 0x0

    .line 100
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    if-lt v1, v2, :cond_74

    .line 101
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    iget v4, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v1

    .line 103
    :cond_74
    return-object v0
.end method

.method private hasChar()Z
    .registers 3

    .line 76
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isOneOf(C[C)Z
    .registers 6
    .param p1, "ch"    # C
    .param p2, "charray"    # [C

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_e

    .line 111
    aget-char v2, p2, v1

    if-ne p1, v2, :cond_b

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_e

    .line 110
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    .end local v1    # "i":I
    :cond_e
    :goto_e
    return v0
.end method

.method private parseQuotedToken([C)Ljava/lang/String;
    .registers 8
    .param p1, "terminators"    # [C

    .line 143
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 144
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "quoted":Z
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 147
    .local v0, "charEscaped":Z
    .local v2, "quoted":Z
    :goto_c
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_43

    .line 148
    iget-object v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, v3, v5

    .line 149
    .local v3, "ch":C
    if-nez v2, :cond_22

    invoke-direct {p0, v3, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 150
    goto :goto_43

    .line 152
    :cond_22
    if-nez v0, :cond_2e

    const/16 v5, 0x22

    if-ne v3, v5, :cond_2e

    .line 153
    if-nez v2, :cond_2c

    const/4 v5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    move v2, v5

    .line 155
    :cond_2e
    if-nez v0, :cond_36

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    move v0, v5

    .line 156
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 157
    iget v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_c

    .line 160
    .end local v3    # "ch":C
    :cond_43
    :goto_43
    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseToken([C)Ljava/lang/String;
    .registers 4
    .param p1, "terminators"    # [C

    .line 124
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 125
    iget v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    iput v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 126
    :goto_8
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 127
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v0, v0, v1

    .line 128
    .local v0, "ch":C
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/util/ParameterParser;->isOneOf(C[C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 129
    goto :goto_28

    .line 131
    :cond_1b
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 132
    iget v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    goto :goto_8

    .line 134
    .end local v0    # "ch":C
    :cond_28
    :goto_28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/util/ParameterParser;->getToken(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;C)Ljava/util/List;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 172
    if-nez p1, :cond_8

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 175
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CC)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([CC)Ljava/util/List;
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "separator"    # C

    .line 189
    if-nez p1, :cond_8

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 192
    :cond_8
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/util/ParameterParser;->parse([CIIC)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([CIIC)Ljava/util/List;
    .registers 12
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "separator"    # C

    .line 209
    if-nez p1, :cond_8

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 212
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "params":Ljava/util/List;
    iput-object p1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    .line 214
    iput p2, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 215
    iput p3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 219
    .local v2, "paramValue":Ljava/lang/String;
    :cond_15
    :goto_15
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 220
    const/4 v3, 0x2

    new-array v3, v3, [C

    const/16 v4, 0x3d

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/4 v6, 0x1

    aput-char p4, v3, v6

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseToken([C)Ljava/lang/String;

    move-result-object v1

    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, v4, :cond_44

    .line 223
    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 224
    new-array v3, v6, [C

    aput-char p4, v3, v5

    invoke-direct {p0, v3}, Lorg/apache/commons/httpclient/util/ParameterParser;->parseQuotedToken([C)Ljava/lang/String;

    move-result-object v2

    .line 226
    :cond_44
    invoke-direct {p0}, Lorg/apache/commons/httpclient/util/ParameterParser;->hasChar()Z

    move-result v3

    if-eqz v3, :cond_55

    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    aget-char v3, p1, v3

    if-ne v3, p4, :cond_55

    .line 227
    iget v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 229
    :cond_55
    if-eqz v1, :cond_15

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    if-eqz v2, :cond_15

    .line 230
    :cond_61
    new-instance v3, Lorg/apache/commons/httpclient/NameValuePair;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 233
    :cond_6a
    return-object v0
.end method
