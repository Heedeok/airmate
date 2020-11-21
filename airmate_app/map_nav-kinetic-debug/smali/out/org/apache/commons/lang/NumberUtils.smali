.class public final Lorg/apache/commons/lang/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static compare(DD)I
    .registers 11
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .line 491
    const/4 v0, -0x1

    cmpg-double v1, p0, p2

    if-gez v1, :cond_6

    .line 492
    return v0

    .line 494
    :cond_6
    const/4 v1, 0x1

    cmpl-double v2, p0, p2

    if-lez v2, :cond_c

    .line 495
    return v1

    .line 501
    :cond_c
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 502
    .local v2, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 503
    .local v4, "rhsBits":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_1a

    .line 504
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_1a
    cmp-long v6, v2, v4

    if-gez v6, :cond_1f

    .line 513
    return v0

    .line 515
    :cond_1f
    return v1
.end method

.method public static compare(FF)I
    .registers 6
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .line 552
    const/4 v0, -0x1

    cmpg-float v1, p0, p1

    if-gez v1, :cond_6

    .line 553
    return v0

    .line 555
    :cond_6
    const/4 v1, 0x1

    cmpl-float v2, p0, p1

    if-lez v2, :cond_c

    .line 556
    return v1

    .line 562
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 563
    .local v2, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 564
    .local v3, "rhsBits":I
    if-ne v2, v3, :cond_18

    .line 565
    const/4 v0, 0x0

    return v0

    .line 573
    :cond_18
    if-ge v2, v3, :cond_1b

    .line 574
    return v0

    .line 576
    :cond_1b
    return v1
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 376
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "bd":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "bi":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 329
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 318
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "val"    # Ljava/lang/String;

    .line 353
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 16
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 140
    return-object v0

    .line 142
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1c7

    .line 145
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    return-object v0

    .line 152
    :cond_13
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c2

    const-string v1, "-0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_1c2

    .line 155
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 159
    .local v1, "lastChar":C
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 160
    .local v3, "decPos":I
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x45

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 162
    .local v4, "expPos":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-le v3, v5, :cond_74

    .line 164
    if-le v4, v5, :cond_69

    .line 165
    if-lt v4, v3, :cond_52

    .line 168
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_6f

    .line 166
    :cond_52
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " is not a valid number."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_69
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "dec":Ljava/lang/String;
    :goto_6f
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7e

    .line 174
    .end local v7    # "dec":Ljava/lang/String;
    :cond_74
    if-le v4, v5, :cond_7b

    .line 175
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_7c

    .line 177
    :cond_7b
    move-object v7, p0

    .local v7, "mant":Ljava/lang/String;
    :goto_7c
    move-object v8, v7

    .line 179
    .end local v7    # "mant":Ljava/lang/String;
    .local v8, "mant":Ljava/lang/String;
    move-object v7, v0

    .line 181
    .local v7, "dec":Ljava/lang/String;
    :goto_7e
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-nez v9, :cond_157

    .line 182
    if-le v4, v5, :cond_9c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_9c

    .line 183
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    .line 185
    :cond_9c
    nop

    .line 188
    .local v0, "exp":Ljava/lang/String;
    :goto_9d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-static {v0}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    const/4 v9, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v9, 0x0

    .line 190
    .local v9, "allZeros":Z
    :goto_b5
    const/16 v13, 0x44

    if-eq v1, v13, :cond_122

    const/16 v13, 0x46

    if-eq v1, v13, :cond_10b

    const/16 v13, 0x4c

    if-eq v1, v13, :cond_cd

    const/16 v13, 0x64

    if-eq v1, v13, :cond_122

    const/16 v13, 0x66

    if-eq v1, v13, :cond_10b

    const/16 v10, 0x6c

    if-ne v1, v10, :cond_140

    .line 193
    :cond_cd
    if-nez v7, :cond_f4

    if-nez v0, :cond_f4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_e3

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    :cond_e3
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 197
    :cond_e9
    :try_start_e9
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ed} :catch_ee

    return-object v2

    .line 198
    :catch_ee
    move-exception v2

    .line 201
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 204
    :cond_f4
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " is not a valid number."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_10b
    :try_start_10b
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 209
    .local v2, "f":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_120

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_119
    .catch Ljava/lang/NumberFormatException; {:try_start_10b .. :try_end_119} :catch_121

    cmpl-float v6, v6, v10

    if-nez v6, :cond_11f

    if-eqz v9, :cond_120

    .line 212
    :cond_11f
    return-object v2

    .line 217
    .end local v2    # "f":Ljava/lang/Float;
    :cond_120
    goto :goto_122

    .line 215
    :catch_121
    move-exception v2

    .line 222
    :cond_122
    :goto_122
    :try_start_122
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 223
    .local v2, "d":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_138

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v6
    :try_end_130
    .catch Ljava/lang/NumberFormatException; {:try_start_122 .. :try_end_130} :catch_139

    float-to-double v13, v6

    cmpl-double v6, v13, v11

    if-nez v6, :cond_137

    if-eqz v9, :cond_138

    .line 224
    :cond_137
    return-object v2

    .line 228
    .end local v2    # "d":Ljava/lang/Double;
    :cond_138
    goto :goto_13a

    .line 226
    :catch_139
    move-exception v2

    .line 230
    :goto_13a
    :try_start_13a
    invoke-static {v5}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_13e
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_13e} :catch_13f

    return-object v2

    .line 231
    :catch_13f
    move-exception v2

    .line 236
    :cond_140
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " is not a valid number."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v0    # "exp":Ljava/lang/String;
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v9    # "allZeros":Z
    :cond_157
    if-le v4, v5, :cond_16b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_16b

    .line 243
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16c

    .line 245
    :cond_16b
    nop

    .line 247
    .restart local v0    # "exp":Ljava/lang/String;
    :goto_16c
    if-nez v7, :cond_181

    if-nez v0, :cond_181

    .line 250
    :try_start_170
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_174} :catch_175

    return-object v2

    .line 251
    :catch_175
    move-exception v2

    .line 255
    :try_start_176
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_176 .. :try_end_17a} :catch_17b

    return-object v2

    .line 256
    :catch_17b
    move-exception v2

    .line 259
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 263
    :cond_181
    invoke-static {v8}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    invoke-static {v0}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    goto :goto_18f

    :cond_18e
    const/4 v2, 0x0

    .line 265
    .local v2, "allZeros":Z
    :goto_18f
    :try_start_18f
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 266
    .local v5, "f":Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_1a4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_19d
    .catch Ljava/lang/NumberFormatException; {:try_start_18f .. :try_end_19d} :catch_1a5

    cmpl-float v6, v6, v10

    if-nez v6, :cond_1a3

    if-eqz v2, :cond_1a4

    .line 267
    :cond_1a3
    return-object v5

    .line 271
    .end local v5    # "f":Ljava/lang/Float;
    :cond_1a4
    goto :goto_1a6

    .line 269
    :catch_1a5
    move-exception v5

    .line 273
    :goto_1a6
    :try_start_1a6
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 274
    .local v5, "d":Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_1bb

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_1b4
    .catch Ljava/lang/NumberFormatException; {:try_start_1a6 .. :try_end_1b4} :catch_1bc

    cmpl-double v6, v9, v11

    if-nez v6, :cond_1ba

    if-eqz v2, :cond_1bb

    .line 275
    :cond_1ba
    return-object v5

    .line 279
    .end local v5    # "d":Ljava/lang/Double;
    :cond_1bb
    goto :goto_1bd

    .line 277
    :catch_1bc
    move-exception v5

    .line 281
    :goto_1bd
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 153
    .end local v0    # "exp":Ljava/lang/String;
    .end local v1    # "lastChar":C
    .end local v2    # "allZeros":Z
    .end local v3    # "decPos":I
    .end local v4    # "expPos":I
    .end local v7    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_1c2
    :goto_1c2
    invoke-static {p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1c7
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "\"\" is not a valid number."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 297
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 298
    return v0

    .line 300
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_18

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_15

    .line 302
    return v2

    .line 300
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 305
    .end local v1    # "i":I
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 593
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 596
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 597
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 598
    return v0

    .line 596
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 601
    .end local v1    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 594
    :cond_21
    :goto_21
    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 18
    .param p0, "str"    # Ljava/lang/String;

    .line 618
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 619
    return v1

    .line 621
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 622
    .local v0, "chars":[C
    array-length v2, v0

    .line 623
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 624
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 625
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 626
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 628
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v7, 0x0

    .line 629
    .local v7, "start":I
    :goto_1b
    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-le v2, v10, :cond_5d

    .line 630
    aget-char v10, v0, v7

    if-ne v10, v14, :cond_5d

    add-int/lit8 v10, v7, 0x1

    aget-char v10, v0, v10

    const/16 v15, 0x78

    if-ne v10, v15, :cond_5d

    .line 631
    add-int/lit8 v8, v7, 0x2

    .line 632
    .local v8, "i":I
    if-ne v8, v2, :cond_38

    .line 633
    return v1

    .line 636
    :cond_38
    :goto_38
    array-length v10, v0

    if-ge v8, v10, :cond_5c

    .line 637
    aget-char v10, v0, v8

    if-lt v10, v14, :cond_43

    aget-char v10, v0, v8

    if-le v10, v13, :cond_58

    :cond_43
    aget-char v10, v0, v8

    const/16 v15, 0x61

    if-lt v10, v15, :cond_4d

    aget-char v10, v0, v8

    if-le v10, v12, :cond_58

    :cond_4d
    aget-char v10, v0, v8

    const/16 v15, 0x41

    if-lt v10, v15, :cond_5b

    aget-char v10, v0, v8

    if-le v10, v11, :cond_58

    goto :goto_5b

    .line 636
    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 640
    :cond_5b
    :goto_5b
    return v1

    .line 643
    :cond_5c
    return v9

    .line 646
    .end local v8    # "i":I
    :cond_5d
    add-int/lit8 v2, v2, -0x1

    .line 648
    move v10, v3

    move v3, v7

    .line 651
    .local v3, "i":I
    .local v10, "hasExp":Z
    :goto_61
    const/16 v15, 0x45

    const/16 v8, 0x65

    if-lt v3, v2, :cond_c1

    add-int/lit8 v1, v2, 0x1

    if-ge v3, v1, :cond_70

    if-eqz v5, :cond_70

    if-nez v6, :cond_70

    goto :goto_c1

    .line 684
    :cond_70
    array-length v1, v0

    if-ge v3, v1, :cond_b7

    .line 685
    aget-char v1, v0, v3

    if-lt v1, v14, :cond_7c

    aget-char v1, v0, v3

    if-gt v1, v13, :cond_7c

    .line 687
    return v9

    .line 689
    :cond_7c
    aget-char v1, v0, v3

    if-eq v1, v8, :cond_b5

    aget-char v1, v0, v3

    if-ne v1, v15, :cond_85

    goto :goto_b5

    .line 693
    :cond_85
    if-nez v5, :cond_9c

    aget-char v1, v0, v3

    const/16 v8, 0x64

    if-eq v1, v8, :cond_9b

    aget-char v1, v0, v3

    const/16 v8, 0x44

    if-eq v1, v8, :cond_9b

    aget-char v1, v0, v3

    if-eq v1, v12, :cond_9b

    aget-char v1, v0, v3

    if-ne v1, v11, :cond_9c

    .line 698
    :cond_9b
    return v6

    .line 700
    :cond_9c
    aget-char v1, v0, v3

    const/16 v8, 0x6c

    if-eq v1, v8, :cond_ab

    aget-char v1, v0, v3

    const/16 v8, 0x4c

    if-ne v1, v8, :cond_a9

    goto :goto_ab

    .line 706
    :cond_a9
    const/4 v1, 0x0

    return v1

    .line 703
    :cond_ab
    :goto_ab
    if-eqz v6, :cond_b2

    if-nez v10, :cond_b2

    const/16 v16, 0x1

    goto :goto_b4

    :cond_b2
    const/16 v16, 0x0

    :goto_b4
    return v16

    .line 691
    :cond_b5
    :goto_b5
    const/4 v1, 0x0

    return v1

    .line 710
    :cond_b7
    if-nez v5, :cond_be

    if-eqz v6, :cond_be

    const/16 v16, 0x1

    goto :goto_c0

    :cond_be
    const/16 v16, 0x0

    :goto_c0
    return v16

    .line 652
    :cond_c1
    :goto_c1
    aget-char v1, v0, v3

    if-lt v1, v14, :cond_d0

    aget-char v1, v0, v3

    if-gt v1, v13, :cond_d0

    .line 653
    const/4 v1, 0x1

    .line 654
    .end local v6    # "foundDigit":Z
    .local v1, "foundDigit":Z
    const/4 v5, 0x0

    .line 682
    move v6, v1

    .end local v1    # "foundDigit":Z
    .restart local v6    # "foundDigit":Z
    :goto_cc
    const/4 v1, 0x0

    const/16 v8, 0x2d

    goto :goto_10e

    .line 656
    :cond_d0
    aget-char v1, v0, v3

    const/16 v9, 0x2e

    if-ne v1, v9, :cond_e0

    .line 657
    if-nez v4, :cond_de

    if-eqz v10, :cond_db

    goto :goto_de

    .line 661
    :cond_db
    const/4 v1, 0x1

    .line 682
    move v4, v1

    goto :goto_cc

    .line 659
    :cond_de
    :goto_de
    const/4 v1, 0x0

    return v1

    .line 662
    :cond_e0
    aget-char v1, v0, v3

    if-eq v1, v8, :cond_102

    aget-char v1, v0, v3

    if-ne v1, v15, :cond_e9

    goto :goto_102

    .line 673
    :cond_e9
    aget-char v1, v0, v3

    const/16 v8, 0x2b

    if-eq v1, v8, :cond_f9

    aget-char v1, v0, v3

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_f7

    .line 674
    const/4 v1, 0x0

    goto :goto_fc

    .line 680
    :cond_f7
    const/4 v1, 0x0

    return v1

    .line 674
    :cond_f9
    const/4 v1, 0x0

    const/16 v8, 0x2d

    :goto_fc
    if-nez v5, :cond_ff

    .line 675
    return v1

    .line 677
    :cond_ff
    const/4 v5, 0x0

    .line 678
    const/4 v6, 0x0

    goto :goto_10e

    .line 664
    :cond_102
    :goto_102
    const/4 v1, 0x0

    const/16 v8, 0x2d

    if-eqz v10, :cond_108

    .line 666
    return v1

    .line 668
    :cond_108
    if-nez v6, :cond_10b

    .line 669
    return v1

    .line 671
    :cond_10b
    const/4 v9, 0x1

    .line 672
    .end local v10    # "hasExp":Z
    .local v9, "hasExp":Z
    const/4 v5, 0x1

    .line 682
    move v10, v9

    .end local v9    # "hasExp":Z
    .restart local v10    # "hasExp":Z
    :goto_10e
    add-int/lit8 v3, v3, 0x1

    .line 648
    const/4 v9, 0x1

    goto/16 :goto_61
.end method

.method public static maximum(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 445
    if-le p1, p0, :cond_3

    .line 446
    move p0, p1

    .line 448
    :cond_3
    if-le p2, p0, :cond_6

    .line 449
    move p0, p2

    .line 451
    :cond_6
    return p0
.end method

.method public static maximum(JJJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 427
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 428
    move-wide p0, p2

    .line 430
    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    .line 431
    move-wide p0, p4

    .line 433
    :cond_a
    return-wide p0
.end method

.method public static minimum(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 409
    if-ge p1, p0, :cond_3

    .line 410
    move p0, p1

    .line 412
    :cond_3
    if-ge p2, p0, :cond_6

    .line 413
    move p0, p2

    .line 415
    :cond_6
    return p0
.end method

.method public static minimum(JJJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 391
    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    .line 392
    move-wide p0, p2

    .line 394
    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    .line 395
    move-wide p0, p4

    .line 397
    :cond_a
    return-wide p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/NumberUtils;->stringToInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 75
    :catch_5
    move-exception v0

    .line 76
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method
