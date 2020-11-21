.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# instance fields
.field private frontv:Ljava/lang/String;

.field private maxCodeLen:I

.field private varson:Ljava/lang/String;

.field private vowels:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "AEIOU"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    .line 46
    const-string v0, "EIY"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    .line 51
    const-string v0, "CSPTG"

    iput-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 63
    return-void
.end method

.method private isLastChar(II)Z
    .registers 4
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 342
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .registers 7
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "matches":Z
    if-ltz p2, :cond_16

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_16

    .line 326
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    move v0, v2

    .line 328
    :cond_16
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .registers 6
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "matches":Z
    if-lez p2, :cond_15

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    .line 317
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move v0, v1

    .line 319
    :cond_15
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .registers 5
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I

    .line 310
    iget-object v0, p0, Lorg/apache/commons/codec/language/Metaphone;->vowels:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .registers 7
    .param p1, "string"    # Ljava/lang/StringBuffer;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "matches":Z
    if-ltz p2, :cond_1d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 335
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    .end local v1    # "substring":Ljava/lang/String;
    :cond_1d
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 359
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 362
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pString"    # Ljava/lang/String;

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .registers 2

    .line 391
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "txt"    # Ljava/lang/String;

    .line 76
    move-object v0, p0

    const/4 v1, 0x0

    .line 77
    .local v1, "hard":Z
    if-eqz p1, :cond_2cc

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_2cc

    .line 81
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 87
    .local v2, "inwd":[C
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v4, "local":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 90
    .local v5, "code":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    aget-char v7, v2, v6

    const/16 v8, 0x41

    const/16 v9, 0x47

    const/16 v10, 0x48

    const/16 v11, 0x53

    const/16 v12, 0x4b

    if-eq v7, v8, :cond_81

    if-eq v7, v9, :cond_71

    if-eq v7, v12, :cond_71

    const/16 v8, 0x50

    if-eq v7, v8, :cond_71

    packed-switch v7, :pswitch_data_2d0

    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_91

    .line 120
    :pswitch_4c
    aput-char v11, v2, v6

    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 122
    goto :goto_91

    .line 108
    :pswitch_52
    aget-char v7, v2, v3

    const/16 v8, 0x52

    if-ne v7, v8, :cond_5e

    .line 109
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 110
    goto :goto_91

    .line 112
    :cond_5e
    aget-char v7, v2, v3

    if-ne v7, v10, :cond_6d

    .line 113
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 114
    const/16 v7, 0x57

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_91

    .line 116
    :cond_6d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 118
    goto :goto_91

    .line 94
    :cond_71
    aget-char v7, v2, v3

    const/16 v8, 0x4e

    if-ne v7, v8, :cond_7d

    .line 95
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_91

    .line 97
    :cond_7d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 99
    goto :goto_91

    .line 101
    :cond_81
    aget-char v7, v2, v3

    const/16 v8, 0x45

    if-ne v7, v8, :cond_8d

    .line 102
    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-virtual {v4, v2, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_91

    .line 104
    :cond_8d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 106
    nop

    .line 127
    :goto_91
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 128
    .local v7, "wdsz":I
    nop

    .line 130
    .local v6, "n":I
    :goto_96
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v13

    if-ge v8, v13, :cond_2c7

    if-ge v6, v7, :cond_2c7

    .line 132
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    .line 134
    .local v8, "symb":C
    const/16 v13, 0x43

    if-eq v8, v13, :cond_b6

    invoke-direct {p0, v4, v6, v8}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v14

    if-eqz v14, :cond_b6

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 302
    const/16 v13, 0x47

    goto/16 :goto_2b2

    .line 137
    :cond_b6
    const/16 v3, 0x54

    const/16 v14, 0x46

    const/16 v9, 0x58

    packed-switch v8, :pswitch_data_2d8

    goto/16 :goto_1ee

    .line 298
    :pswitch_c1
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 295
    :pswitch_c6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    goto/16 :goto_1ee

    .line 289
    :pswitch_ce
    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1ee

    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 291
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 287
    :pswitch_e1
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 270
    :pswitch_e6
    const-string v13, "TIA"

    invoke-direct {p0, v4, v6, v13}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_115

    const-string v13, "TIO"

    invoke-direct {p0, v4, v6, v13}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f7

    goto :goto_115

    .line 275
    :cond_f7
    const-string v9, "TCH"

    invoke-direct {p0, v4, v6, v9}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_101

    .line 277
    goto/16 :goto_1ee

    .line 280
    :cond_101
    const-string v9, "TH"

    invoke-direct {p0, v4, v6, v9}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_110

    .line 281
    const/16 v3, 0x30

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 283
    :cond_110
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    goto/16 :goto_1ee

    .line 272
    :cond_115
    :goto_115
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    goto/16 :goto_1ee

    .line 261
    :pswitch_11a
    const-string v3, "SH"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    const-string v3, "SIO"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    const-string v3, "SIA"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    goto :goto_138

    .line 266
    :cond_133
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    goto/16 :goto_1ee

    .line 264
    :cond_138
    :goto_138
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 258
    :pswitch_13d
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    goto/16 :goto_1ee

    .line 250
    :pswitch_142
    invoke-direct {p0, v4, v6, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 252
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 254
    :cond_14d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    goto/16 :goto_1ee

    .line 241
    :pswitch_152
    if-lez v6, :cond_15f

    .line 242
    invoke-direct {p0, v4, v6, v13}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-nez v3, :cond_1ee

    .line 243
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1ee

    .line 246
    :cond_15f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    goto/16 :goto_1ee

    .line 221
    :pswitch_164
    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 222
    goto/16 :goto_1ee

    .line 224
    :cond_16c
    if-lez v6, :cond_17e

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->varson:Ljava/lang/String;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_17e

    .line 226
    goto/16 :goto_1ee

    .line 228
    :cond_17e
    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 229
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1ee

    .line 193
    :pswitch_18a
    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-direct {p0, v4, v6, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_199

    .line 195
    goto :goto_1ee

    .line 197
    :cond_199
    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v7, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1b0

    invoke-direct {p0, v4, v6, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_1b0

    add-int/lit8 v3, v6, 0x2

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-nez v3, :cond_1b0

    .line 200
    goto :goto_1ee

    .line 202
    :cond_1b0
    if-lez v6, :cond_1c3

    const-string v3, "GN"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ee

    const-string v3, "GNED"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 205
    goto :goto_1ee

    .line 207
    :cond_1c3
    const/16 v3, 0x47

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v9

    if-eqz v9, :cond_1cd

    .line 208
    const/4 v1, 0x1

    goto :goto_1ce

    .line 210
    :cond_1cd
    const/4 v1, 0x0

    .line 212
    :goto_1ce
    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1ea

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1ea

    if-nez v1, :cond_1ea

    .line 215
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1ee

    .line 217
    :cond_1ea
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    nop

    .line 300
    :cond_1ee
    :goto_1ee
    const/16 v13, 0x47

    goto/16 :goto_2b0

    .line 238
    :pswitch_1f2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    goto :goto_1ee

    .line 184
    :pswitch_1f6
    add-int/lit8 v9, v6, 0x1

    invoke-direct {p0, v7, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v9

    if-nez v9, :cond_21d

    const/16 v13, 0x47

    invoke-direct {p0, v4, v6, v13}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v9

    if-eqz v9, :cond_21f

    iget-object v9, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v14, v6, 0x2

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_21f

    .line 187
    const/16 v3, 0x4a

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_2b0

    .line 189
    :cond_21d
    const/16 v13, 0x47

    :cond_21f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    goto/16 :goto_2b0

    .line 152
    :pswitch_224
    const/16 v13, 0x47

    invoke-direct {p0, v4, v6, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_242

    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_242

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_242

    .line 155
    goto/16 :goto_2b0

    .line 157
    :cond_242
    const-string v3, "CIA"

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24e

    .line 158
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    goto :goto_2b0

    .line 161
    :cond_24e
    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_266

    iget-object v3, v0, Lorg/apache/commons/codec/language/Metaphone;->frontv:Ljava/lang/String;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_266

    .line 163
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    goto :goto_2b0

    .line 166
    :cond_266
    invoke-direct {p0, v4, v6, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_276

    invoke-direct {p0, v4, v6, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_276

    .line 168
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    goto :goto_2b0

    .line 171
    :cond_276
    invoke-direct {p0, v4, v6, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_290

    .line 172
    if-nez v6, :cond_28c

    const/4 v3, 0x3

    if-lt v7, v3, :cond_28c

    const/4 v3, 0x2

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 175
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b0

    .line 177
    :cond_28c
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b0

    .line 180
    :cond_290
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    goto :goto_2b0

    .line 144
    :pswitch_294
    const/16 v13, 0x47

    const/16 v3, 0x4d

    invoke-direct {p0, v4, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v3

    if-eqz v3, :cond_2a5

    invoke-direct {p0, v7, v6}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_2a5

    .line 146
    goto :goto_2b0

    .line 148
    :cond_2a5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    goto :goto_2b0

    .line 139
    :pswitch_2a9
    const/16 v13, 0x47

    if-nez v6, :cond_2b0

    .line 140
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    :cond_2b0
    :goto_2b0
    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 302
    :goto_2b2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v14

    if-le v9, v14, :cond_2c3

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 128
    .end local v8    # "symb":C
    :cond_2c3
    const/16 v9, 0x47

    goto/16 :goto_96

    .line 306
    :cond_2c7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 78
    .end local v2    # "inwd":[C
    .end local v4    # "local":Ljava/lang/StringBuffer;
    .end local v5    # "code":Ljava/lang/StringBuffer;
    .end local v6    # "n":I
    .end local v7    # "wdsz":I
    :cond_2cc
    :goto_2cc
    const-string v2, ""

    return-object v2

    nop

    :pswitch_data_2d0
    .packed-switch 0x57
        :pswitch_52
        :pswitch_4c
    .end packed-switch

    :pswitch_data_2d8
    .packed-switch 0x41
        :pswitch_2a9
        :pswitch_294
        :pswitch_224
        :pswitch_1f6
        :pswitch_2a9
        :pswitch_1f2
        :pswitch_18a
        :pswitch_164
        :pswitch_2a9
        :pswitch_1f2
        :pswitch_152
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_1f2
        :pswitch_2a9
        :pswitch_142
        :pswitch_13d
        :pswitch_1f2
        :pswitch_11a
        :pswitch_e6
        :pswitch_2a9
        :pswitch_e1
        :pswitch_ce
        :pswitch_c6
        :pswitch_ce
        :pswitch_c1
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .registers 2
    .param p1, "maxCodeLen"    # I

    .line 397
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
