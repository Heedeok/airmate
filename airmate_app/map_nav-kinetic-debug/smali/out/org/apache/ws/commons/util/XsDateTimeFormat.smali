.class public Lorg/apache/ws/commons/util/XsDateTimeFormat;
.super Ljava/text/Format;
.source "XsDateTimeFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x2d37353134363139L


# instance fields
.field final parseDate:Z

.field final parseTime:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/apache/ws/commons/util/XsDateTimeFormat;-><init>(ZZ)V

    .line 43
    return-void
.end method

.method constructor <init>(ZZ)V
    .registers 3
    .param p1, "pParseDate"    # Z
    .param p2, "pParseTime"    # Z

    .line 34
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 35
    iput-boolean p1, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    .line 36
    iput-boolean p2, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    .line 37
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;II)V
    .registers 7
    .param p1, "pBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "pNum"    # I
    .param p3, "pMinLen"    # I

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_8
    if-ge v1, p3, :cond_12

    .line 229
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 231
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .registers 7
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "pOffset"    # I
    .param p3, "pDigits"    # Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 48
    :goto_8
    if-ge p2, v0, :cond_1a

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 51
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 p2, p2, 0x1

    .line 56
    .end local v1    # "c":C
    goto :goto_8

    .line 57
    :cond_1a
    return p2
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "pCalendar"    # Ljava/lang/Object;
    .param p2, "pBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "pPos"    # Ljava/text/FieldPosition;

    .line 235
    if-eqz p1, :cond_c9

    .line 238
    if-eqz p2, :cond_c1

    .line 241
    if-eqz p3, :cond_b9

    .line 245
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 246
    .local v0, "cal":Ljava/util/Calendar;
    iget-boolean v1, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    const/16 v2, 0x2d

    const/4 v3, 0x2

    if-eqz v1, :cond_3e

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 248
    .local v4, "year":I
    if-gez v4, :cond_1b

    .line 249
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    neg-int v4, v4

    .line 252
    :cond_1b
    const/4 v5, 0x4

    invoke-direct {p0, p2, v4, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 253
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {p0, p2, v5, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 255
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 257
    iget-boolean v1, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    if-eqz v1, :cond_3e

    .line 258
    const/16 v1, 0x54

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    .end local v4    # "year":I
    :cond_3e
    iget-boolean v1, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    const/16 v4, 0x3a

    if-eqz v1, :cond_76

    .line 262
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 263
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 265
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 267
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 268
    .local v1, "millis":I
    if-lez v1, :cond_76

    .line 269
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    const/4 v5, 0x3

    invoke-direct {p0, p2, v1, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 273
    .end local v1    # "millis":I
    :cond_76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 275
    .local v1, "tz":Ljava/util/TimeZone;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 276
    .local v5, "offset":I
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 277
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 279
    :cond_91
    if-nez v5, :cond_99

    .line 280
    const/16 v2, 0x5a

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    goto :goto_b8

    .line 282
    :cond_99
    if-gez v5, :cond_a0

    .line 283
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    neg-int v5, v5

    .line 285
    goto :goto_a5

    .line 286
    :cond_a0
    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    :goto_a5
    const v2, 0xea60

    div-int v2, v5, v2

    .line 289
    .local v2, "minutes":I
    div-int/lit8 v6, v2, 0x3c

    .line 290
    .local v6, "hours":I
    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v2, v7

    .line 291
    invoke-direct {p0, p2, v6, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 292
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    invoke-direct {p0, p2, v2, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 295
    .end local v2    # "minutes":I
    .end local v6    # "hours":I
    :goto_b8
    return-object p2

    .line 242
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "tz":Ljava/util/TimeZone;
    .end local v5    # "offset":I
    :cond_b9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The FieldPosition argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_c1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The StringBuffer argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_c9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Calendar argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 27
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "pParsePosition"    # Ljava/text/ParsePosition;

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1e5

    .line 64
    if-eqz v2, :cond_1dd

    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 68
    .local v3, "offset":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 70
    .local v4, "length":I
    const/4 v5, 0x0

    .line 71
    .local v5, "isMinus":Z
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v6, "digits":Ljava/lang/StringBuffer;
    iget-boolean v7, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v7, :cond_a9

    .line 75
    if-ge v3, v4, :cond_33

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 77
    .local v7, "c":C
    if-ne v7, v8, :cond_2e

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_33

    :cond_2e
    if-ne v7, v9, :cond_33

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    const/4 v5, 0x1

    .line 85
    .end local v7    # "c":C
    :cond_33
    :goto_33
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 86
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v13, 0x4

    if-ge v7, v13, :cond_42

    .line 87
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 88
    return-object v12

    .line 90
    :cond_42
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 92
    .local v7, "year":I
    if-ge v3, v4, :cond_a5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v9, :cond_a5

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    nop

    .line 99
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-eq v13, v11, :cond_63

    .line 101
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 102
    return-object v12

    .line 104
    :cond_63
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 106
    .local v13, "month":I
    if-ge v3, v4, :cond_a1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v9, :cond_a1

    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    nop

    .line 113
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 114
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eq v14, v11, :cond_84

    .line 115
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 116
    return-object v12

    .line 118
    :cond_84
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 120
    .local v14, "mday":I
    iget-boolean v15, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    if-eqz v15, :cond_ac

    .line 121
    if-ge v3, v4, :cond_9d

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x54

    if-ne v15, v9, :cond_9d

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    goto :goto_ac

    .line 124
    :cond_9d
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 125
    return-object v12

    .line 109
    .end local v14    # "mday":I
    :cond_a1
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 110
    return-object v12

    .line 95
    .end local v13    # "month":I
    :cond_a5
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 96
    return-object v12

    .line 129
    .end local v7    # "year":I
    :cond_a9
    move v14, v10

    .restart local v14    # "mday":I
    move v13, v10

    const/4 v7, 0x0

    .line 133
    .restart local v7    # "year":I
    .restart local v13    # "month":I
    :cond_ac
    :goto_ac
    iget-boolean v9, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    const/16 v15, 0x3a

    if-eqz v9, :cond_152

    .line 134
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v11, :cond_c0

    .line 136
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 137
    return-object v12

    .line 139
    :cond_c0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 141
    .local v9, "hour":I
    if-ge v3, v4, :cond_14d

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v15, :cond_14d

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 143
    nop

    .line 148
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v8, v11, :cond_e1

    .line 150
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 151
    return-object v12

    .line 153
    :cond_e1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "minute":I
    if-ge v3, v4, :cond_148

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_148

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    nop

    .line 162
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eq v10, v11, :cond_102

    .line 164
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 165
    return-object v12

    .line 167
    :cond_102
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 169
    .local v10, "second":I
    if-ge v3, v4, :cond_140

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v11, 0x2e

    if-ne v15, v11, :cond_140

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 171
    invoke-direct {v0, v1, v3, v6}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_13e

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 174
    .local v11, "millis":I
    const/16 v15, 0x3e7

    if-le v11, v15, :cond_130

    .line 175
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 176
    return-object v12

    .line 178
    :cond_130
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .local v15, "i":I
    :goto_134
    const/4 v12, 0x3

    if-ge v15, v12, :cond_13d

    .line 179
    mul-int/lit8 v11, v11, 0xa

    .line 178
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_134

    .line 181
    .end local v15    # "i":I
    :cond_13d
    goto :goto_142

    .line 182
    .end local v11    # "millis":I
    :cond_13e
    const/4 v11, 0x0

    .line 184
    .restart local v11    # "millis":I
    goto :goto_142

    .line 185
    .end local v11    # "millis":I
    :cond_140
    const/4 v11, 0x0

    .line 187
    .restart local v11    # "millis":I
    nop

    .line 188
    .end local v8    # "minute":I
    .local v9, "second":I
    .local v10, "minute":I
    .local v21, "hour":I
    :goto_142
    move/from16 v21, v9

    move v9, v10

    move v10, v8

    const/4 v8, 0x0

    goto :goto_158

    .line 158
    .end local v10    # "minute":I
    .end local v11    # "millis":I
    .end local v21    # "hour":I
    .restart local v8    # "minute":I
    .local v9, "hour":I
    :cond_148
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 159
    const/4 v10, 0x0

    return-object v10

    .line 144
    .end local v8    # "minute":I
    :cond_14d
    move-object v10, v12

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 145
    return-object v10

    .line 188
    .end local v9    # "hour":I
    :cond_152
    const/4 v8, 0x0

    move v11, v8

    .restart local v11    # "millis":I
    move v9, v8

    .local v9, "second":I
    move v10, v8

    const/16 v21, 0x0

    .line 191
    .restart local v10    # "minute":I
    .restart local v21    # "hour":I
    :goto_158
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 192
    const-string v12, "GMT"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    if-ge v3, v4, :cond_1aa

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 195
    .local v12, "c":C
    const/16 v15, 0x5a

    if-ne v12, v15, :cond_16d

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 198
    goto :goto_1aa

    :cond_16d
    const/16 v15, 0x2b

    if-eq v12, v15, :cond_175

    const/16 v15, 0x2d

    if-ne v12, v15, :cond_1aa

    .line 199
    :cond_175
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    nop

    .local v8, "i":I
    :goto_17b
    const/4 v15, 0x5

    if-ge v8, v15, :cond_1aa

    .line 202
    if-lt v3, v4, :cond_185

    .line 203
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 204
    const/4 v15, 0x0

    return-object v15

    .line 206
    :cond_185
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 207
    const/4 v15, 0x2

    if-eq v8, v15, :cond_196

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-nez v16, :cond_193

    goto :goto_196

    .line 209
    :cond_193
    const/16 v15, 0x3a

    goto :goto_19c

    .line 207
    :cond_196
    :goto_196
    if-ne v8, v15, :cond_1a5

    const/16 v15, 0x3a

    if-ne v12, v15, :cond_1a5

    .line 209
    :goto_19c
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    nop

    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_17b

    .line 211
    :cond_1a5
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 212
    const/4 v15, 0x0

    return-object v15

    .line 219
    .end local v8    # "i":I
    .end local v12    # "c":C
    :cond_1aa
    :goto_1aa
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 220
    .local v8, "cal":Ljava/util/Calendar;
    if-eqz v5, :cond_1bc

    neg-int v12, v7

    move/from16 v18, v12

    goto :goto_1be

    :cond_1bc
    move/from16 v18, v7

    :goto_1be
    iget-boolean v12, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    if-eqz v12, :cond_1c7

    add-int/lit8 v12, v13, -0x1

    move/from16 v19, v12

    goto :goto_1c9

    :cond_1c7
    move/from16 v19, v13

    :goto_1c9
    move-object/from16 v17, v8

    move/from16 v20, v14

    move/from16 v22, v10

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v23}, Ljava/util/Calendar;->set(IIIIII)V

    .line 221
    const/16 v12, 0xe

    invoke-virtual {v8, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 222
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 223
    return-object v8

    .line 65
    .end local v3    # "offset":I
    .end local v4    # "length":I
    .end local v5    # "isMinus":Z
    .end local v6    # "digits":Ljava/lang/StringBuffer;
    .end local v7    # "year":I
    .end local v8    # "cal":Ljava/util/Calendar;
    .end local v9    # "second":I
    .end local v10    # "minute":I
    .end local v11    # "millis":I
    .end local v13    # "month":I
    .end local v14    # "mday":I
    .end local v21    # "hour":I
    :cond_1dd
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The ParsePosition argument must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1e5
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The String argument must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
