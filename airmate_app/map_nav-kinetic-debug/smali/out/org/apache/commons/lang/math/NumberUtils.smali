.class public Lorg/apache/commons/lang/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 55
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 57
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 59
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 65
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 67
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 69
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 71
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 73
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 75
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static compare(DD)I
    .registers 11
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .line 1261
    const/4 v0, -0x1

    cmpg-double v1, p0, p2

    if-gez v1, :cond_6

    .line 1262
    return v0

    .line 1264
    :cond_6
    const/4 v1, 0x1

    cmpl-double v2, p0, p2

    if-lez v2, :cond_c

    .line 1265
    return v1

    .line 1271
    :cond_c
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1272
    .local v2, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1273
    .local v4, "rhsBits":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_1a

    .line 1274
    const/4 v0, 0x0

    return v0

    .line 1282
    :cond_1a
    cmp-long v6, v2, v4

    if-gez v6, :cond_1f

    .line 1283
    return v0

    .line 1285
    :cond_1f
    return v1
.end method

.method public static compare(FF)I
    .registers 6
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .line 1322
    const/4 v0, -0x1

    cmpg-float v1, p0, p1

    if-gez v1, :cond_6

    .line 1323
    return v0

    .line 1325
    :cond_6
    const/4 v1, 0x1

    cmpl-float v2, p0, p1

    if-lez v2, :cond_c

    .line 1326
    return v1

    .line 1332
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 1333
    .local v2, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1334
    .local v3, "rhsBits":I
    if-ne v2, v3, :cond_18

    .line 1335
    const/4 v0, 0x0

    return v0

    .line 1343
    :cond_18
    if-ge v2, v3, :cond_1b

    .line 1344
    return v0

    .line 1346
    :cond_1b
    return v1
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 659
    if-nez p0, :cond_4

    .line 660
    const/4 v0, 0x0

    return-object v0

    .line 663
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 666
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 664
    :cond_10
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 643
    if-nez p0, :cond_4

    .line 644
    const/4 v0, 0x0

    return-object v0

    .line 646
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 593
    if-nez p0, :cond_4

    .line 594
    const/4 v0, 0x0

    return-object v0

    .line 596
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 577
    if-nez p0, :cond_4

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 580
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 610
    if-nez p0, :cond_4

    .line 611
    const/4 v0, 0x0

    return-object v0

    .line 614
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 627
    if-nez p0, :cond_4

    .line 628
    const/4 v0, 0x0

    return-object v0

    .line 630
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 16
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 399
    return-object v0

    .line 401
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c7

    .line 404
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 409
    return-object v0

    .line 411
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

    .line 414
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 418
    .local v1, "lastChar":C
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 419
    .local v3, "decPos":I
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x45

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 421
    .local v4, "expPos":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-le v3, v5, :cond_74

    .line 423
    if-le v4, v5, :cond_69

    .line 424
    if-lt v4, v3, :cond_52

    .line 427
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_6f

    .line 425
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

    .line 429
    :cond_69
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "dec":Ljava/lang/String;
    :goto_6f
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7e

    .line 433
    .end local v7    # "dec":Ljava/lang/String;
    :cond_74
    if-le v4, v5, :cond_7b

    .line 434
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_7c

    .line 436
    :cond_7b
    move-object v7, p0

    .local v7, "mant":Ljava/lang/String;
    :goto_7c
    move-object v8, v7

    .line 438
    .end local v7    # "mant":Ljava/lang/String;
    .local v8, "mant":Ljava/lang/String;
    move-object v7, v0

    .line 440
    .local v7, "dec":Ljava/lang/String;
    :goto_7e
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-nez v9, :cond_157

    .line 441
    if-le v4, v5, :cond_9c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_9c

    .line 442
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    .line 444
    :cond_9c
    nop

    .line 447
    .local v0, "exp":Ljava/lang/String;
    :goto_9d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "numeric":Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-static {v0}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    const/4 v9, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v9, 0x0

    .line 449
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

    .line 452
    :cond_cd
    if-nez v7, :cond_f4

    if-nez v0, :cond_f4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x2d

    if-ne v6, v10, :cond_e3

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    :cond_e3
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 456
    :cond_e9
    :try_start_e9
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ed} :catch_ee

    return-object v2

    .line 457
    :catch_ee
    move-exception v2

    .line 460
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 463
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

    .line 467
    :cond_10b
    :try_start_10b
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 468
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

    .line 471
    :cond_11f
    return-object v2

    .line 476
    .end local v2    # "f":Ljava/lang/Float;
    :cond_120
    goto :goto_122

    .line 474
    :catch_121
    move-exception v2

    .line 481
    :cond_122
    :goto_122
    :try_start_122
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 482
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

    .line 483
    :cond_137
    return-object v2

    .line 487
    .end local v2    # "d":Ljava/lang/Double;
    :cond_138
    goto :goto_13a

    .line 485
    :catch_139
    move-exception v2

    .line 489
    :goto_13a
    :try_start_13a
    invoke-static {v5}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_13e
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_13e} :catch_13f

    return-object v2

    .line 490
    :catch_13f
    move-exception v2

    .line 495
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

    .line 501
    .end local v0    # "exp":Ljava/lang/String;
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v9    # "allZeros":Z
    :cond_157
    if-le v4, v5, :cond_16b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_16b

    .line 502
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_16c

    .line 504
    :cond_16b
    nop

    .line 506
    .restart local v0    # "exp":Ljava/lang/String;
    :goto_16c
    if-nez v7, :cond_181

    if-nez v0, :cond_181

    .line 509
    :try_start_170
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_174} :catch_175

    return-object v2

    .line 510
    :catch_175
    move-exception v2

    .line 514
    :try_start_176
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2
    :try_end_17a
    .catch Ljava/lang/NumberFormatException; {:try_start_176 .. :try_end_17a} :catch_17b

    return-object v2

    .line 515
    :catch_17b
    move-exception v2

    .line 518
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 522
    :cond_181
    invoke-static {v8}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    invoke-static {v0}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18e

    goto :goto_18f

    :cond_18e
    const/4 v2, 0x0

    .line 524
    .local v2, "allZeros":Z
    :goto_18f
    :try_start_18f
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 525
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

    .line 526
    :cond_1a3
    return-object v5

    .line 530
    .end local v5    # "f":Ljava/lang/Float;
    :cond_1a4
    goto :goto_1a6

    .line 528
    :catch_1a5
    move-exception v5

    .line 532
    :goto_1a6
    :try_start_1a6
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 533
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

    .line 534
    :cond_1ba
    return-object v5

    .line 538
    .end local v5    # "d":Ljava/lang/Double;
    :cond_1bb
    goto :goto_1bd

    .line 536
    :catch_1bc
    move-exception v5

    .line 540
    :goto_1bd
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 412
    .end local v0    # "exp":Ljava/lang/String;
    .end local v1    # "lastChar":C
    .end local v2    # "allZeros":Z
    .end local v3    # "decPos":I
    .end local v4    # "expPos":I
    .end local v7    # "dec":Ljava/lang/String;
    .end local v8    # "mant":Ljava/lang/String;
    :cond_1c2
    :goto_1c2
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 402
    :cond_1c7
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 555
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 556
    return v0

    .line 558
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_18

    .line 559
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_15

    .line 560
    return v2

    .line 558
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 563
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

    .line 1362
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1363
    return v1

    .line 1365
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1366
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1367
    return v1

    .line 1365
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1370
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 18
    .param p0, "str"    # Ljava/lang/String;

    .line 1387
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1388
    return v1

    .line 1390
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1391
    .local v0, "chars":[C
    array-length v2, v0

    .line 1392
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 1393
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 1394
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 1395
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 1397
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v7, 0x0

    .line 1398
    .local v7, "start":I
    :goto_1b
    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-le v2, v10, :cond_5d

    .line 1399
    aget-char v10, v0, v7

    if-ne v10, v14, :cond_5d

    add-int/lit8 v10, v7, 0x1

    aget-char v10, v0, v10

    const/16 v15, 0x78

    if-ne v10, v15, :cond_5d

    .line 1400
    add-int/lit8 v8, v7, 0x2

    .line 1401
    .local v8, "i":I
    if-ne v8, v2, :cond_38

    .line 1402
    return v1

    .line 1405
    :cond_38
    :goto_38
    array-length v10, v0

    if-ge v8, v10, :cond_5c

    .line 1406
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

    .line 1405
    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 1409
    :cond_5b
    :goto_5b
    return v1

    .line 1412
    :cond_5c
    return v9

    .line 1415
    .end local v8    # "i":I
    :cond_5d
    add-int/lit8 v2, v2, -0x1

    .line 1417
    move v10, v3

    move v3, v7

    .line 1420
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

    .line 1453
    :cond_70
    array-length v1, v0

    if-ge v3, v1, :cond_b7

    .line 1454
    aget-char v1, v0, v3

    if-lt v1, v14, :cond_7c

    aget-char v1, v0, v3

    if-gt v1, v13, :cond_7c

    .line 1456
    return v9

    .line 1458
    :cond_7c
    aget-char v1, v0, v3

    if-eq v1, v8, :cond_b5

    aget-char v1, v0, v3

    if-ne v1, v15, :cond_85

    goto :goto_b5

    .line 1462
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

    .line 1467
    :cond_9b
    return v6

    .line 1469
    :cond_9c
    aget-char v1, v0, v3

    const/16 v8, 0x6c

    if-eq v1, v8, :cond_ab

    aget-char v1, v0, v3

    const/16 v8, 0x4c

    if-ne v1, v8, :cond_a9

    goto :goto_ab

    .line 1475
    :cond_a9
    const/4 v1, 0x0

    return v1

    .line 1472
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

    .line 1460
    :cond_b5
    :goto_b5
    const/4 v1, 0x0

    return v1

    .line 1479
    :cond_b7
    if-nez v5, :cond_be

    if-eqz v6, :cond_be

    const/16 v16, 0x1

    goto :goto_c0

    :cond_be
    const/16 v16, 0x0

    :goto_c0
    return v16

    .line 1421
    :cond_c1
    :goto_c1
    aget-char v1, v0, v3

    if-lt v1, v14, :cond_d0

    aget-char v1, v0, v3

    if-gt v1, v13, :cond_d0

    .line 1422
    const/4 v1, 0x1

    .line 1423
    .end local v6    # "foundDigit":Z
    .local v1, "foundDigit":Z
    const/4 v5, 0x0

    .line 1451
    move v6, v1

    .end local v1    # "foundDigit":Z
    .restart local v6    # "foundDigit":Z
    :goto_cc
    const/4 v1, 0x0

    const/16 v8, 0x2d

    goto :goto_10e

    .line 1425
    :cond_d0
    aget-char v1, v0, v3

    const/16 v9, 0x2e

    if-ne v1, v9, :cond_e0

    .line 1426
    if-nez v4, :cond_de

    if-eqz v10, :cond_db

    goto :goto_de

    .line 1430
    :cond_db
    const/4 v1, 0x1

    .line 1451
    move v4, v1

    goto :goto_cc

    .line 1428
    :cond_de
    :goto_de
    const/4 v1, 0x0

    return v1

    .line 1431
    :cond_e0
    aget-char v1, v0, v3

    if-eq v1, v8, :cond_102

    aget-char v1, v0, v3

    if-ne v1, v15, :cond_e9

    goto :goto_102

    .line 1442
    :cond_e9
    aget-char v1, v0, v3

    const/16 v8, 0x2b

    if-eq v1, v8, :cond_f9

    aget-char v1, v0, v3

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_f7

    .line 1443
    const/4 v1, 0x0

    goto :goto_fc

    .line 1449
    :cond_f7
    const/4 v1, 0x0

    return v1

    .line 1443
    :cond_f9
    const/4 v1, 0x0

    const/16 v8, 0x2d

    :goto_fc
    if-nez v5, :cond_ff

    .line 1444
    return v1

    .line 1446
    :cond_ff
    const/4 v5, 0x0

    .line 1447
    const/4 v6, 0x0

    goto :goto_10e

    .line 1433
    :cond_102
    :goto_102
    const/4 v1, 0x0

    const/16 v8, 0x2d

    if-eqz v10, :cond_108

    .line 1435
    return v1

    .line 1437
    :cond_108
    if-nez v6, :cond_10b

    .line 1438
    return v1

    .line 1440
    :cond_10b
    const/4 v9, 0x1

    .line 1441
    .end local v10    # "hasExp":Z
    .local v9, "hasExp":Z
    const/4 v5, 0x1

    .line 1451
    move v10, v9

    .end local v9    # "hasExp":Z
    .restart local v10    # "hasExp":Z
    :goto_10e
    add-int/lit8 v3, v3, 0x1

    .line 1417
    const/4 v9, 0x1

    goto/16 :goto_61
.end method

.method public static max(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1184
    if-le p1, p0, :cond_3

    .line 1185
    move p0, p1

    .line 1187
    :cond_3
    if-le p2, p0, :cond_6

    .line 1188
    move p0, p2

    .line 1190
    :cond_6
    return p0
.end method

.method public static max([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 934
    if-eqz p0, :cond_1e

    .line 936
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 941
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 942
    .local v0, "max":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 943
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_12

    .line 944
    aget-byte v0, p0, v1

    .line 942
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 948
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 937
    .end local v0    # "max":B
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1206
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 7
    .param p0, "array"    # [D

    .line 962
    if-eqz p0, :cond_2b

    .line 964
    array-length v0, p0

    if-eqz v0, :cond_23

    .line 969
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 970
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 971
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 972
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 974
    :cond_17
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1f

    .line 975
    aget-wide v0, p0, v2

    .line 970
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 979
    .end local v2    # "j":I
    :cond_22
    return-wide v0

    .line 965
    .end local v0    # "max":D
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1222
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 993
    if-eqz p0, :cond_2b

    .line 995
    array-length v0, p0

    if-eqz v0, :cond_23

    .line 1000
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1001
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 1002
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1003
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1005
    :cond_17
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1f

    .line 1006
    aget v0, p0, v1

    .line 1001
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1010
    .end local v1    # "j":I
    :cond_22
    return v0

    .line 996
    .end local v0    # "max":F
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1148
    if-le p1, p0, :cond_3

    .line 1149
    move p0, p1

    .line 1151
    :cond_3
    if-le p2, p0, :cond_6

    .line 1152
    move p0, p2

    .line 1154
    :cond_6
    return p0
.end method

.method public static max([I)I
    .registers 4
    .param p0, "array"    # [I

    .line 880
    if-eqz p0, :cond_1e

    .line 882
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 887
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 888
    .local v0, "max":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 889
    aget v2, p0, v1

    if-le v2, v0, :cond_12

    .line 890
    aget v0, p0, v1

    .line 888
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 894
    .end local v1    # "j":I
    :cond_15
    return v0

    .line 883
    .end local v0    # "max":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(JJJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1130
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 1131
    move-wide p0, p2

    .line 1133
    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    .line 1134
    move-wide p0, p4

    .line 1136
    :cond_a
    return-wide p0
.end method

.method public static max([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 853
    if-eqz p0, :cond_20

    .line 855
    array-length v0, p0

    if-eqz v0, :cond_18

    .line 860
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 861
    .local v0, "max":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_17

    .line 862
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_14

    .line 863
    aget-wide v0, p0, v2

    .line 861
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 867
    .end local v2    # "j":I
    :cond_17
    return-wide v0

    .line 856
    .end local v0    # "max":J
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1166
    if-le p1, p0, :cond_3

    .line 1167
    move p0, p1

    .line 1169
    :cond_3
    if-le p2, p0, :cond_6

    .line 1170
    move p0, p2

    .line 1172
    :cond_6
    return p0
.end method

.method public static max([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 907
    if-eqz p0, :cond_1e

    .line 909
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 914
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 915
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 916
    aget-short v2, p0, v1

    if-le v2, v0, :cond_12

    .line 917
    aget-short v0, p0, v1

    .line 915
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 921
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 910
    .end local v0    # "max":S
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(BBB)B
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1078
    if-ge p1, p0, :cond_3

    .line 1079
    move p0, p1

    .line 1081
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1082
    move p0, p2

    .line 1084
    :cond_6
    return p0
.end method

.method public static min([B)B
    .registers 4
    .param p0, "array"    # [B

    .line 762
    if-eqz p0, :cond_1e

    .line 764
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 769
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 770
    .local v0, "min":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 771
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_12

    .line 772
    aget-byte v0, p0, v1

    .line 770
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 776
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 765
    .end local v0    # "min":B
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1100
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 7
    .param p0, "array"    # [D

    .line 790
    if-eqz p0, :cond_2b

    .line 792
    array-length v0, p0

    if-eqz v0, :cond_23

    .line 797
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 798
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 799
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 800
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 802
    :cond_17
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1f

    .line 803
    aget-wide v0, p0, v2

    .line 798
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 807
    .end local v2    # "i":I
    :cond_22
    return-wide v0

    .line 793
    .end local v0    # "min":D
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1116
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 4
    .param p0, "array"    # [F

    .line 821
    if-eqz p0, :cond_2b

    .line 823
    array-length v0, p0

    if-eqz v0, :cond_23

    .line 828
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 829
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 830
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 831
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 833
    :cond_17
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1f

    .line 834
    aget v0, p0, v1

    .line 829
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 838
    .end local v1    # "i":I
    :cond_22
    return v0

    .line 824
    .end local v0    # "min":F
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(III)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1042
    if-ge p1, p0, :cond_3

    .line 1043
    move p0, p1

    .line 1045
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1046
    move p0, p2

    .line 1048
    :cond_6
    return p0
.end method

.method public static min([I)I
    .registers 4
    .param p0, "array"    # [I

    .line 708
    if-eqz p0, :cond_1e

    .line 710
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 715
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 716
    .local v0, "min":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 717
    aget v2, p0, v1

    if-ge v2, v0, :cond_12

    .line 718
    aget v0, p0, v1

    .line 716
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 722
    .end local v1    # "j":I
    :cond_15
    return v0

    .line 711
    .end local v0    # "min":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(JJJ)J
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1024
    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    .line 1025
    move-wide p0, p2

    .line 1027
    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    .line 1028
    move-wide p0, p4

    .line 1030
    :cond_a
    return-wide p0
.end method

.method public static min([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 681
    if-eqz p0, :cond_20

    .line 683
    array-length v0, p0

    if-eqz v0, :cond_18

    .line 688
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 689
    .local v0, "min":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_17

    .line 690
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_14

    .line 691
    aget-wide v0, p0, v2

    .line 689
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 695
    .end local v2    # "i":I
    :cond_17
    return-wide v0

    .line 684
    .end local v0    # "min":J
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(SSS)S
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1060
    if-ge p1, p0, :cond_3

    .line 1061
    move p0, p1

    .line 1063
    :cond_3
    if-ge p2, p0, :cond_6

    .line 1064
    move p0, p2

    .line 1066
    :cond_6
    return p0
.end method

.method public static min([S)S
    .registers 4
    .param p0, "array"    # [S

    .line 735
    if-eqz p0, :cond_1e

    .line 737
    array-length v0, p0

    if-eqz v0, :cond_16

    .line 742
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 743
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 744
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_12

    .line 745
    aget-short v0, p0, v1

    .line 743
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 749
    .end local v1    # "i":I
    :cond_15
    return v0

    .line 738
    .end local v0    # "min":S
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 151
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 302
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 325
    if-nez p0, :cond_3

    .line 326
    return-wide p1

    .line 329
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 330
    :catch_8
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 273
    if-nez p0, :cond_3

    .line 274
    return p1

    .line 277
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 278
    :catch_8
    move-exception v0

    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 172
    if-nez p0, :cond_3

    .line 173
    return p1

    .line 176
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 177
    :catch_8
    move-exception v0

    .line 178
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 200
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 221
    if-nez p0, :cond_3

    .line 222
    return-wide p1

    .line 225
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 226
    :catch_8
    move-exception v0

    .line 227
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method
