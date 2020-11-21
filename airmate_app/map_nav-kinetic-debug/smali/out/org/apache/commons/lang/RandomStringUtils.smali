.class public Lorg/apache/commons/lang/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .registers 2
    .param p0, "count"    # I

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .registers 12
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z

    .line 165
    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[C)Ljava/lang/String;
    .registers 13
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C

    .line 189
    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .registers 14
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C
    .param p6, "random"    # Ljava/util/Random;

    .line 227
    if-nez p0, :cond_5

    .line 228
    const-string v0, ""

    return-object v0

    .line 229
    :cond_5
    if-ltz p0, :cond_97

    .line 232
    if-nez p1, :cond_17

    if-nez p2, :cond_17

    .line 233
    const/16 p2, 0x7b

    .line 234
    const/16 p1, 0x20

    .line 235
    if-nez p3, :cond_17

    if-nez p4, :cond_17

    .line 236
    const/4 p1, 0x0

    .line 237
    const p2, 0x7fffffff

    .line 241
    :cond_17
    new-array v0, p0, [C

    .line 242
    .local v0, "buffer":[C
    sub-int v1, p2, p1

    .line 244
    .local v1, "gap":I
    :goto_1b
    add-int/lit8 v2, p0, -0x1

    .local v2, "count":I
    if-eqz p0, :cond_91

    .line 246
    .end local p0    # "count":I
    if-nez p5, :cond_28

    .line 247
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    int-to-char p0, p0

    goto :goto_2f

    .line 249
    :cond_28
    invoke-virtual {p6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    .line 251
    .local p0, "ch":C
    :goto_2f
    if-eqz p3, :cond_37

    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_37
    if-eqz p4, :cond_3f

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_3f
    if-nez p3, :cond_8d

    if-nez p4, :cond_8d

    .line 255
    :cond_43
    const/16 v3, 0x80

    const v4, 0xd800

    const v5, 0xdc00

    if-lt p0, v5, :cond_64

    const v6, 0xdfff

    if-gt p0, v6, :cond_64

    .line 256
    if-nez v2, :cond_57

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 260
    :cond_57
    aput-char p0, v0, v2

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 262
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    goto :goto_8f

    .line 264
    :cond_64
    if-lt p0, v4, :cond_7d

    const v4, 0xdb7f

    if-gt p0, v4, :cond_7d

    .line 265
    if-nez v2, :cond_70

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 269
    :cond_70
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 270
    add-int/lit8 v2, v2, -0x1

    .line 271
    aput-char p0, v0, v2

    goto :goto_8f

    .line 273
    :cond_7d
    const v3, 0xdb80

    if-lt p0, v3, :cond_8a

    const v3, 0xdbff

    if-gt p0, v3, :cond_8a

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 277
    :cond_8a
    aput-char p0, v0, v2

    goto :goto_8f

    .line 280
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    .line 242
    .end local v2    # "count":I
    .local p0, "count":I
    :goto_8f
    move p0, v2

    goto :goto_1b

    .line 283
    .end local p0    # "count":I
    .restart local v2    # "count":I
    :cond_91
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 230
    .end local v0    # "buffer":[C
    .end local v1    # "gap":I
    .end local v2    # "count":I
    .restart local p0    # "count":I
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested random string length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " is less than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "count"    # I
    .param p1, "chars"    # Ljava/lang/String;

    .line 300
    if-nez p1, :cond_f

    .line 301
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I
    .param p1, "letters"    # Z
    .param p2, "numbers"    # Z

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(I[C)Ljava/lang/String;
    .registers 10
    .param p0, "count"    # I
    .param p1, "chars"    # [C

    .line 319
    if-nez p1, :cond_f

    .line 320
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 322
    :cond_f
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lorg/apache/commons/lang/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .registers 3
    .param p0, "count"    # I

    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .registers 2
    .param p0, "count"    # I

    .line 113
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I

    .line 85
    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x7f

    invoke-static {p0, v1, v2, v0, v0}, Lorg/apache/commons/lang/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .registers 3
    .param p0, "count"    # I

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
