.class public Lorg/apache/commons/lang/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 5390
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 5429
    if-nez p0, :cond_4

    .line 5430
    const/4 v0, 0x0

    return-object v0

    .line 5432
    :cond_4
    const/4 v0, 0x4

    if-lt p2, v0, :cond_91

    .line 5435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_e

    .line 5436
    return-object p0

    .line 5438
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_18

    .line 5439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5441
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_29

    .line 5442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    .line 5444
    :cond_29
    if-gt p1, v0, :cond_44

    .line 5445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5447
    :cond_44
    const/4 v0, 0x7

    if-lt p2, v0, :cond_89

    .line 5450
    add-int/lit8 v0, p2, -0x3

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 5451
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, -0x3

    invoke-static {v1, v2}, Lorg/apache/commons/lang/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5453
    :cond_6c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5448
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5433
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static capitalise(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4783
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitaliseAllWords(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4892
    invoke-static {p0}, Lorg/apache/commons/lang/WordUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 4764
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    .end local v1    # "strLen":I
    goto :goto_29

    .line 4765
    .restart local v1    # "strLen":I
    :cond_a
    nop

    .line 4767
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4765
    .end local v1    # "strLen":I
    :cond_29
    :goto_29
    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4614
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4642
    if-eqz p0, :cond_1a

    if-gtz p1, :cond_5

    goto :goto_1a

    .line 4645
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4646
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4647
    .local v1, "pads":I
    if-gtz v1, :cond_e

    .line 4648
    return-object p0

    .line 4650
    :cond_e
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4651
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4652
    return-object p0

    .line 4643
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4682
    if-eqz p0, :cond_22

    if-gtz p1, :cond_5

    goto :goto_22

    .line 4685
    :cond_5
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4686
    const-string p2, " "

    .line 4688
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4689
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4690
    .local v1, "pads":I
    if-gtz v1, :cond_16

    .line 4691
    return-object p0

    .line 4693
    :cond_16
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4694
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4695
    return-object p0

    .line 4683
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4004
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4005
    return-object p0

    .line 4008
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    .line 4009
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4010
    .local v0, "ch":C
    if-eq v0, v3, :cond_1d

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    .line 4013
    :cond_1c
    return-object p0

    .line 4011
    :cond_1d
    :goto_1d
    const-string v1, ""

    return-object v1

    .line 4016
    .end local v0    # "ch":C
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 4017
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4019
    .local v4, "last":C
    if-ne v4, v1, :cond_36

    .line 4020
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3a

    .line 4021
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 4023
    :cond_36
    if-eq v4, v3, :cond_3a

    .line 4024
    add-int/lit8 v0, v0, 0x1

    .line 4026
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 4056
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-nez p1, :cond_9

    goto :goto_1f

    .line 4059
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4060
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4062
    :cond_1e
    return-object p0

    .line 4057
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public static chompLast(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4076
    const-string v0, "\n"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chompLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4090
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 4091
    return-object p0

    .line 4093
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4094
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4095
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4097
    :cond_29
    return-object p0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 4188
    if-nez p0, :cond_4

    .line 4189
    const/4 v0, 0x0

    return-object v0

    .line 4191
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4192
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 4193
    const-string v1, ""

    return-object v1

    .line 4195
    :cond_e
    add-int/lit8 v1, v0, -0x1

    .line 4196
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4197
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4198
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2e

    .line 4199
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2e

    .line 4200
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4203
    :cond_2e
    return-object v3
.end method

.method public static chopNewline(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 4217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4218
    .local v0, "lastIdx":I
    if-gtz v0, :cond_b

    .line 4219
    const-string v1, ""

    return-object v1

    .line 4221
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4222
    .local v1, "last":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_20

    .line 4223
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_22

    .line 4224
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 4227
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 4229
    :cond_22
    :goto_22
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 281
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static concatenate([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 2809
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;C)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 1008
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1009
    return v1

    .line 1011
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v1, 0x1

    nop

    :cond_10
    return v1
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1036
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_6

    goto :goto_f

    .line 1039
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_e

    const/4 v0, 0x1

    nop

    :cond_e
    return v0

    .line 1037
    :cond_f
    :goto_f
    return v0
.end method

.method public static containsAny(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1208
    if-nez p1, :cond_4

    .line 1209
    const/4 v0, 0x0

    return v0

    .line 1211
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsAny(Ljava/lang/String;[C)Z

    move-result v0

    return v0
.end method

.method public static containsAny(Ljava/lang/String;[C)Z
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1166
    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    array-length v1, p1

    if-nez v1, :cond_f

    goto :goto_2b

    .line 1169
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1170
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1171
    .local v2, "ch":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1b
    array-length v4, p1

    if-ge v3, v4, :cond_27

    .line 1172
    aget-char v4, p1, v3

    if-ne v4, v2, :cond_24

    .line 1173
    const/4 v0, 0x1

    return v0

    .line 1171
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1169
    .end local v2    # "ch":C
    .end local v3    # "j":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1177
    .end local v1    # "i":I
    :cond_2a
    return v0

    .line 1167
    :cond_2b
    :goto_2b
    return v0
.end method

.method public static containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 1066
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 1069
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1067
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static containsNone(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1418
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1421
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsNone(Ljava/lang/String;[C)Z

    move-result v0

    return v0

    .line 1419
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public static containsNone(Ljava/lang/String;[C)Z
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "invalidChars"    # [C

    .line 1379
    const/4 v0, 0x1

    if-eqz p0, :cond_22

    if-nez p1, :cond_6

    goto :goto_22

    .line 1382
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1383
    .local v1, "strSize":I
    array-length v2, p1

    .line 1384
    .local v2, "validSize":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v1, :cond_21

    .line 1385
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1386
    .local v5, "ch":C
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_14
    if-ge v6, v2, :cond_1e

    .line 1387
    aget-char v7, p1, v6

    if-ne v7, v5, :cond_1b

    .line 1388
    return v3

    .line 1386
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1384
    .end local v5    # "ch":C
    .end local v6    # "j":I
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1392
    .end local v4    # "i":I
    :cond_21
    return v0

    .line 1380
    .end local v1    # "strSize":I
    .end local v2    # "validSize":I
    :cond_22
    :goto_22
    return v0
.end method

.method public static containsOnly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1348
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1351
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->containsOnly(Ljava/lang/String;[C)Z

    move-result v0

    return v0

    .line 1349
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static containsOnly(Ljava/lang/String;[C)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "valid"    # [C

    .line 1313
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-nez p0, :cond_6

    goto :goto_1c

    .line 1316
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 1317
    return v2

    .line 1319
    :cond_e
    array-length v1, p1

    if-nez v1, :cond_12

    .line 1320
    return v0

    .line 1322
    :cond_12
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfAnyBut(Ljava/lang/String;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1b

    const/4 v0, 0x1

    nop

    :cond_1b
    return v0

    .line 1314
    :cond_1c
    :goto_1c
    return v0
.end method

.method public static countMatches(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;

    .line 4917
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_21

    .line 4920
    :cond_e
    const/4 v0, 0x0

    .line 4921
    .local v0, "count":I
    nop

    .line 4922
    .local v1, "idx":I
    :goto_10
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 4923
    add-int/lit8 v0, v0, 0x1

    .line 4924
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10

    .line 4926
    :cond_20
    return v0

    .line 4918
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_21
    :goto_21
    return v1
.end method

.method public static defaultIfEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5263
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5222
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5243
    if-nez p0, :cond_4

    move-object v0, p1

    goto :goto_5

    :cond_4
    move-object v0, p0

    :goto_5
    return-object v0
.end method

.method public static deleteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3165
    if-nez p0, :cond_4

    .line 3166
    const/4 v0, 0x0

    return-object v0

    .line 3168
    :cond_4
    const-string v0, " \t\r\n\u0008"

    invoke-static {p0, v0}, Lorg/apache/commons/lang/CharSetUtils;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 3186
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3187
    return-object p0

    .line 3189
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3190
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 3191
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 3192
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v4, "count":I
    :goto_11
    if-ge v2, v0, :cond_29

    .line 3193
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_26

    .line 3194
    add-int/lit8 v5, v4, 0x1

    .local v5, "count":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    .line 3192
    move v4, v5

    .end local v5    # "count":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3197
    .end local v2    # "i":I
    :cond_29
    if-ne v4, v0, :cond_2c

    .line 3198
    return-object p0

    .line 3200
    :cond_2c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 5484
    if-nez p0, :cond_3

    .line 5485
    return-object p1

    .line 5487
    :cond_3
    if-nez p1, :cond_6

    .line 5488
    return-object p0

    .line 5490
    :cond_6
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5491
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 5492
    const-string v1, ""

    return-object v1

    .line 5494
    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 5914
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 5954
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 5957
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 5958
    return v0

    .line 5960
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 5961
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    return v1

    .line 5955
    .end local v0    # "strOffset":I
    :cond_28
    :goto_28
    if-nez p0, :cond_2e

    if-nez p1, :cond_2e

    const/4 v0, 0x1

    nop

    :cond_2e
    return v0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 5939
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 655
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 680
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4251
    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4113
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4114
    .local v0, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_10

    .line 4115
    return-object p1

    .line 4116
    :cond_10
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 4117
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4119
    :cond_18
    const-string v1, ""

    return-object v1
.end method

.method public static getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "strs"    # [Ljava/lang/String;

    .line 5662
    if-eqz p0, :cond_24

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_24

    .line 5665
    :cond_6
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->indexOfDifference([Ljava/lang/String;)I

    move-result v0

    .line 5666
    .local v0, "smallestIndexOfDiff":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    .line 5668
    aget-object v1, p0, v2

    if-nez v1, :cond_15

    .line 5669
    const-string v1, ""

    return-object v1

    .line 5671
    :cond_15
    aget-object v1, p0, v2

    return-object v1

    .line 5672
    :cond_18
    if-nez v0, :cond_1d

    .line 5674
    const-string v1, ""

    return-object v1

    .line 5677
    :cond_1d
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5663
    .end local v0    # "smallestIndexOfDiff":I
    :cond_24
    :goto_24
    const-string v0, ""

    return-object v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 5718
    if-eqz p0, :cond_6b

    if-eqz p1, :cond_6b

    .line 5739
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5740
    .local v0, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 5742
    .local v1, "m":I
    if-nez v0, :cond_f

    .line 5743
    return v1

    .line 5744
    :cond_f
    if-nez v1, :cond_12

    .line 5745
    return v0

    .line 5748
    :cond_12
    if-le v0, v1, :cond_1c

    .line 5750
    move-object v2, p0

    .line 5751
    .local v2, "tmp":Ljava/lang/String;
    move-object p0, p1

    .line 5752
    move-object p1, v2

    .line 5753
    move v0, v1

    .line 5754
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 5757
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 5758
    .local v2, "p":[I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 5769
    .local v3, "d":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    if-gt v5, v0, :cond_2d

    .line 5770
    aput v5, v2, v5

    .line 5769
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 5773
    :cond_2d
    const/4 v6, 0x1

    move-object v7, v2

    const/4 v2, 0x1

    .local v2, "j":I
    .local v7, "p":[I
    :goto_30
    if-gt v2, v1, :cond_68

    .line 5774
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 5775
    .local v8, "t_j":C
    aput v2, v3, v4

    .line 5777
    const/4 v5, 0x1

    :goto_3b
    if-gt v5, v0, :cond_62

    .line 5778
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_47

    const/4 v9, 0x0

    goto :goto_48

    :cond_47
    const/4 v9, 0x1

    .line 5780
    .local v9, "cost":I
    :goto_48
    add-int/lit8 v10, v5, -0x1

    aget v10, v3, v10

    add-int/2addr v10, v6

    aget v11, v7, v5

    add-int/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v5, -0x1

    aget v11, v7, v11

    add-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v3, v5

    .line 5777
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 5784
    .end local v9    # "cost":I
    :cond_62
    move-object v9, v7

    .line 5785
    .local v9, "_d":[I
    move-object v7, v3

    .line 5786
    move-object v3, v9

    .line 5773
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 5791
    .end local v8    # "t_j":C
    .end local v9    # "_d":[I
    :cond_68
    aget v4, v7, v0

    return v4

    .line 5719
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "j":I
    .end local v3    # "d":[I
    .end local v5    # "i":I
    .end local v7    # "p":[I
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 2051
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNestedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2081
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4155
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4156
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 4157
    const-string v1, ""

    return-object v1

    .line 4159
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static indexOf(Ljava/lang/String;C)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 705
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 706
    const/4 v0, -0x1

    return v0

    .line 708
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/String;CI)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .line 737
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 738
    const/4 v0, -0x1

    return v0

    .line 740
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 766
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 769
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 767
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 850
    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    .line 854
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_16

    .line 855
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 857
    :cond_16
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 851
    :cond_1b
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1134
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 1137
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->indexOfAny(Ljava/lang/String;[C)I

    move-result v0

    return v0

    .line 1135
    :cond_16
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/String;[C)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1097
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2a

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2a

    .line 1100
    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 1101
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1102
    .local v3, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1b
    array-length v5, p1

    if-ge v4, v5, :cond_26

    .line 1103
    aget-char v5, p1, v4

    if-ne v5, v3, :cond_23

    .line 1104
    return v2

    .line 1102
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1100
    .end local v3    # "ch":C
    .end local v4    # "j":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1108
    .end local v2    # "i":I
    :cond_29
    return v1

    .line 1098
    :cond_2a
    :goto_2a
    return v1
.end method

.method public static indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .line 1453
    const/4 v0, -0x1

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 1456
    :cond_6
    array-length v1, p1

    .line 1459
    .local v1, "sz":I
    const v2, 0x7fffffff

    .line 1461
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1462
    .local v3, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_20

    .line 1463
    aget-object v5, p1, v4

    .line 1464
    .local v5, "search":Ljava/lang/String;
    if-nez v5, :cond_13

    .line 1465
    goto :goto_1d

    .line 1467
    :cond_13
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1468
    if-ne v3, v0, :cond_1a

    .line 1469
    goto :goto_1d

    .line 1472
    :cond_1a
    if-ge v3, v2, :cond_1d

    .line 1473
    move v2, v3

    .line 1462
    .end local v5    # "search":Ljava/lang/String;
    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1477
    .end local v4    # "i":I
    :cond_20
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 1454
    .end local v1    # "sz":I
    .end local v2    # "ret":I
    .end local v3    # "tmp":I
    :cond_28
    :goto_28
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1277
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_24

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_24

    .line 1280
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 1281
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_20

    .line 1282
    return v0

    .line 1280
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1285
    .end local v0    # "i":I
    :cond_23
    return v1

    .line 1278
    :cond_24
    :goto_24
    return v1
.end method

.method public static indexOfAnyBut(Ljava/lang/String;[C)I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # [C

    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2b

    invoke-static {p1}, Lorg/apache/commons/lang/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2b

    .line 1242
    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1243
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1244
    .local v3, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1b
    array-length v5, p1

    if-ge v4, v5, :cond_29

    .line 1245
    aget-char v5, p1, v4

    if-ne v5, v3, :cond_26

    .line 1246
    nop

    .line 1242
    .end local v3    # "ch":C
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1244
    .restart local v3    # "ch":C
    .restart local v4    # "j":I
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1249
    .end local v4    # "j":I
    :cond_29
    return v2

    .line 1251
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_2a
    return v1

    .line 1240
    :cond_2b
    :goto_2b
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 5521
    const/4 v0, -0x1

    if-ne p0, p1, :cond_4

    .line 5522
    return v0

    .line 5524
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_34

    if-nez p1, :cond_a

    goto :goto_34

    .line 5528
    :cond_a
    nop

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 5529
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_22

    .line 5530
    goto :goto_25

    .line 5528
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 5533
    :cond_25
    :goto_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    goto :goto_33

    .line 5536
    :cond_32
    return v0

    .line 5534
    :cond_33
    :goto_33
    return v1

    .line 5525
    .end local v1    # "i":I
    :cond_34
    :goto_34
    return v1
.end method

.method public static indexOfDifference([Ljava/lang/String;)I
    .registers 14
    .param p0, "strs"    # [Ljava/lang/String;

    .line 5571
    const/4 v0, -0x1

    if-eqz p0, :cond_68

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_9

    goto/16 :goto_68

    .line 5574
    :cond_9
    const/4 v1, 0x0

    .line 5575
    .local v1, "anyStringNull":Z
    const/4 v3, 0x1

    .line 5576
    .local v3, "allStringsNull":Z
    array-length v4, p0

    .line 5577
    .local v4, "arrayLen":I
    const v5, 0x7fffffff

    .line 5578
    .local v5, "shortestStrLen":I
    const/4 v6, 0x0

    .line 5583
    .local v6, "longestStrLen":I
    const/4 v7, 0x0

    move v8, v6

    move v6, v5

    move v5, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v5, "anyStringNull":Z
    .local v6, "shortestStrLen":I
    .local v8, "longestStrLen":I
    :goto_15
    if-ge v1, v4, :cond_36

    .line 5584
    aget-object v9, p0, v1

    if-nez v9, :cond_1e

    .line 5585
    const/4 v5, 0x1

    .line 5586
    const/4 v6, 0x0

    goto :goto_33

    .line 5588
    :cond_1e
    const/4 v3, 0x0

    .line 5589
    aget-object v9, p0, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5590
    aget-object v9, p0, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5583
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 5595
    :cond_36
    if-nez v3, :cond_67

    if-nez v8, :cond_3d

    if-nez v5, :cond_3d

    .end local v1    # "i":I
    goto :goto_67

    .line 5600
    .restart local v1    # "i":I
    :cond_3d
    if-nez v6, :cond_40

    .line 5601
    .end local v1    # "i":I
    return v7

    .line 5605
    .local v1, "firstDiff":I
    :cond_40
    const/4 v1, -0x1

    .line 5606
    move v9, v1

    const/4 v1, 0x0

    .local v1, "stringPos":I
    .local v9, "firstDiff":I
    :goto_43
    if-ge v1, v6, :cond_61

    .line 5607
    aget-object v10, p0, v7

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 5608
    .local v10, "comparisonChar":C
    const/4 v11, 0x1

    .local v11, "arrayPos":I
    :goto_4c
    if-ge v11, v4, :cond_5b

    .line 5609
    aget-object v12, p0, v11

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v10, :cond_58

    .line 5610
    move v9, v1

    .line 5611
    goto :goto_5b

    .line 5608
    :cond_58
    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    .line 5614
    .end local v11    # "arrayPos":I
    :cond_5b
    :goto_5b
    if-eq v9, v0, :cond_5e

    .line 5615
    goto :goto_61

    .line 5606
    .end local v10    # "comparisonChar":C
    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 5619
    .end local v1    # "stringPos":I
    :cond_61
    :goto_61
    if-ne v9, v0, :cond_66

    if-eq v6, v8, :cond_66

    .line 5623
    return v6

    .line 5625
    :cond_66
    return v9

    .line 5596
    .end local v9    # "firstDiff":I
    :cond_67
    :goto_67
    return v0

    .line 5572
    .end local v3    # "allStringsNull":Z
    .end local v4    # "arrayLen":I
    .end local v5    # "anyStringNull":Z
    .end local v6    # "shortestStrLen":I
    .end local v8    # "longestStrLen":I
    :cond_68
    :goto_68
    return v0
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 4950
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4951
    return v0

    .line 4953
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4954
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 4955
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 4956
    return v0

    .line 4954
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4959
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphaSpace(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4984
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4985
    return v0

    .line 4987
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4988
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 4989
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 4990
    return v0

    .line 4988
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4993
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5017
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5018
    return v0

    .line 5020
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5021
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5022
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5023
    return v0

    .line 5021
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5026
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumericSpace(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 5051
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5052
    return v0

    .line 5054
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5055
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5056
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5057
    return v0

    .line 5055
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5060
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isAsciiPrintable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5089
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5090
    return v0

    .line 5092
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5093
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5094
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5095
    return v0

    .line 5093
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5098
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 228
    const/4 v0, 0x1

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_b

    .end local v2    # "strLen":I
    goto :goto_1f

    .line 229
    .restart local v2    # "strLen":I
    :cond_b
    nop

    .line 231
    const/4 v1, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1e

    .line 232
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 233
    return v1

    .line 231
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 236
    .end local v3    # "i":I
    :cond_1e
    return v0

    .line 229
    .end local v2    # "strLen":I
    :cond_1f
    :goto_1f
    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 190
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 208
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5123
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5124
    return v0

    .line 5126
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5127
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5128
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5129
    return v0

    .line 5127
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5132
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isNumericSpace(Ljava/lang/String;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 5159
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5160
    return v0

    .line 5162
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5163
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5164
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5165
    return v0

    .line 5163
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5168
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5191
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5192
    return v0

    .line 5194
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5195
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5196
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5197
    return v0

    .line 5195
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5200
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/util/Collection;C)Ljava/lang/String;
    .registers 3
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # C

    .line 3109
    if-nez p0, :cond_4

    .line 3110
    const/4 v0, 0x0

    return-object v0

    .line 3112
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3130
    if-nez p0, :cond_4

    .line 3131
    const/4 v0, 0x0

    return-object v0

    .line 3133
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # C

    .line 3021
    if-nez p0, :cond_4

    .line 3022
    const/4 v0, 0x0

    return-object v0

    .line 3024
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3025
    const-string v0, ""

    return-object v0

    .line 3027
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3028
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3029
    invoke-static {v0}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3033
    :cond_1c
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3034
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_28

    .line 3035
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3038
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3039
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3040
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3041
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_28

    .line 3042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 3046
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "iterator"    # Ljava/util/Iterator;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3065
    if-nez p0, :cond_4

    .line 3066
    const/4 v0, 0x0

    return-object v0

    .line 3068
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3069
    const-string v0, ""

    return-object v0

    .line 3071
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3072
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3073
    invoke-static {v0}, Lorg/apache/commons/lang/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3077
    :cond_1c
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3078
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_28

    .line 3079
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 3082
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3083
    if-eqz p1, :cond_33

    .line 3084
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3086
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3087
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_28

    .line 3088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 3091
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 2833
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .line 2859
    if-nez p0, :cond_4

    .line 2860
    const/4 v0, 0x0

    return-object v0

    .line 2863
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 2893
    if-nez p0, :cond_4

    .line 2894
    const/4 v0, 0x0

    return-object v0

    .line 2896
    :cond_4
    sub-int v0, p3, p2

    .line 2897
    .local v0, "bufSize":I
    if-gtz v0, :cond_b

    .line 2898
    const-string v1, ""

    return-object v1

    .line 2901
    :cond_b
    aget-object v1, p0, p2

    if-nez v1, :cond_12

    const/16 v1, 0x10

    goto :goto_1c

    :cond_12
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    .line 2902
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2904
    .local v1, "buf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "i":I
    :goto_26
    if-ge v2, p3, :cond_39

    .line 2905
    if-le v2, p2, :cond_2d

    .line 2906
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2908
    :cond_2d
    aget-object v3, p0, v2

    if-eqz v3, :cond_36

    .line 2909
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2904
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2912
    .end local v2    # "i":I
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2940
    if-nez p0, :cond_4

    .line 2941
    const/4 v0, 0x0

    return-object v0

    .line 2943
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 2974
    if-nez p0, :cond_4

    .line 2975
    const/4 v0, 0x0

    return-object v0

    .line 2977
    :cond_4
    if-nez p1, :cond_8

    .line 2978
    const-string p1, ""

    .line 2983
    :cond_8
    sub-int v0, p3, p2

    .line 2984
    .local v0, "bufSize":I
    if-gtz v0, :cond_f

    .line 2985
    const-string v1, ""

    return-object v1

    .line 2988
    :cond_f
    aget-object v1, p0, p2

    if-nez v1, :cond_16

    const/16 v1, 0x10

    goto :goto_20

    :cond_16
    aget-object v1, p0, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    .line 2991
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2993
    .local v1, "buf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "i":I
    :goto_2d
    if-ge v2, p3, :cond_40

    .line 2994
    if-le v2, p2, :cond_34

    .line 2995
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2997
    :cond_34
    aget-object v3, p0, v2

    if-eqz v3, :cond_3d

    .line 2998
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 2993
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 3001
    .end local v2    # "i":I
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf(Ljava/lang/String;C)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 882
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 883
    const/4 v0, -0x1

    return v0

    .line 885
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;CI)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "startPos"    # I

    .line 916
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 917
    const/4 v0, -0x1

    return v0

    .line 919
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 945
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 948
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 946
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .line 980
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 983
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 981
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStrs"    # [Ljava/lang/String;

    .line 1506
    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    .line 1509
    :cond_5
    array-length v0, p1

    .line 1510
    .local v0, "sz":I
    const/4 v1, -0x1

    .line 1511
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1512
    .local v2, "tmp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1a

    .line 1513
    aget-object v4, p1, v3

    .line 1514
    .local v4, "search":Ljava/lang/String;
    if-nez v4, :cond_10

    .line 1515
    goto :goto_17

    .line 1517
    :cond_10
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1518
    if-le v2, v1, :cond_17

    .line 1519
    move v1, v2

    .line 1512
    .end local v4    # "search":Ljava/lang/String;
    :cond_17
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1522
    .end local v3    # "i":I
    :cond_1a
    return v1

    .line 1507
    .end local v0    # "sz":I
    .end local v1    # "ret":I
    .end local v2    # "tmp":I
    :cond_1b
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 1662
    if-nez p0, :cond_4

    .line 1663
    const/4 v0, 0x0

    return-object v0

    .line 1665
    :cond_4
    if-gez p1, :cond_9

    .line 1666
    const-string v0, ""

    return-object v0

    .line 1668
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 1669
    return-object p0

    .line 1671
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4484
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4509
    if-nez p0, :cond_4

    .line 4510
    const/4 v0, 0x0

    return-object v0

    .line 4512
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4513
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4514
    return-object p0

    .line 4516
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4517
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4519
    :cond_1a
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4546
    if-nez p0, :cond_4

    .line 4547
    const/4 v0, 0x0

    return-object v0

    .line 4549
    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4550
    const-string p2, " "

    .line 4552
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4553
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4554
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4555
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4556
    return-object p0

    .line 4558
    :cond_19
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2a

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_2a

    .line 4559
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4562
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4563
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4564
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4565
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4567
    :cond_3c
    new-array v3, v2, [C

    .line 4568
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 4569
    .local v5, "padChars":[C
    nop

    .local v4, "i":I
    :goto_43
    if-ge v4, v2, :cond_4e

    .line 4570
    rem-int v6, v4, v0

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    .line 4569
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 4572
    .end local v4    # "i":I
    :cond_4e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static length(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4585
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4736
    if-nez p0, :cond_4

    .line 4737
    const/4 v0, 0x0

    return-object v0

    .line 4739
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 1732
    if-nez p0, :cond_4

    .line 1733
    const/4 v0, 0x0

    return-object v0

    .line 1735
    :cond_4
    if-ltz p2, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_24

    .line 1738
    :cond_d
    if-gez p1, :cond_10

    .line 1739
    const/4 p1, 0x0

    .line 1741
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_1d

    .line 1742
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1744
    :cond_1d
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1736
    :cond_24
    :goto_24
    const-string v0, ""

    return-object v0
.end method

.method public static ordinalIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 800
    const/4 v0, -0x1

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    if-gtz p2, :cond_8

    goto :goto_20

    .line 803
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 804
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_10
    const/4 v1, 0x0

    .line 807
    .local v1, "found":I
    nop

    .line 809
    .local v0, "index":I
    :cond_12
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 810
    if-gez v0, :cond_1b

    .line 811
    return v0

    .line 813
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 814
    if-lt v1, p2, :cond_12

    .line 815
    return v0

    .line 801
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_20
    :goto_20
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 3945
    if-nez p0, :cond_4

    .line 3946
    const/4 v0, 0x0

    return-object v0

    .line 3948
    :cond_4
    if-nez p1, :cond_8

    .line 3949
    const-string p1, ""

    .line 3951
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3952
    .local v0, "len":I
    if-gez p2, :cond_f

    .line 3953
    const/4 p2, 0x0

    .line 3955
    :cond_f
    if-le p2, v0, :cond_12

    .line 3956
    move p2, v0

    .line 3958
    :cond_12
    if-gez p3, :cond_15

    .line 3959
    const/4 p3, 0x0

    .line 3961
    :cond_15
    if-le p3, v0, :cond_18

    .line 3962
    move p3, v0

    .line 3964
    :cond_18
    if-le p2, p3, :cond_1d

    .line 3965
    move v1, p2

    .line 3966
    .local v1, "temp":I
    move p2, p3

    .line 3967
    move p3, v1

    .line 3969
    .end local v1    # "temp":I
    :cond_1d
    new-instance v1, Ljava/lang/StringBuffer;

    add-int v2, v0, p2

    sub-int/2addr v2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static overlayString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 3908
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padding(IC)Ljava/lang/String;
    .registers 5
    .param p0, "repeat"    # I
    .param p1, "padChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 4342
    if-ltz p0, :cond_13

    .line 4345
    new-array v0, p0, [C

    .line 4346
    .local v0, "buf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 4347
    aput-char p1, v0, v1

    .line 4346
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4349
    .end local v1    # "i":I
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 4343
    .end local v0    # "buf":[C
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot pad a negative amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prechomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .line 4135
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4136
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 4137
    return-object p0

    .line 4139
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 3392
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_2d

    .line 3395
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3396
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 3397
    .local v1, "pos":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "pos":I
    :goto_16
    array-length v4, v0

    if-ge v1, v4, :cond_27

    .line 3398
    aget-char v4, v0, v1

    if-eq v4, p1, :cond_24

    .line 3399
    add-int/lit8 v4, v3, 0x1

    .local v4, "pos":I
    aget-char v5, v0, v1

    aput-char v5, v0, v3

    .line 3397
    move v3, v4

    .end local v4    # "pos":I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 3402
    .end local v1    # "i":I
    :cond_27
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 3393
    .end local v0    # "chars":[C
    .end local v3    # "pos":I
    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3366
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 3369
    :cond_d
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3367
    :cond_15
    :goto_15
    return-object p0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3299
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3302
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3303
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3305
    :cond_22
    return-object p0

    .line 3300
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3333
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3336
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3337
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3339
    :cond_22
    return-object p0

    .line 3334
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3230
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3233
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3236
    :cond_1c
    return-object p0

    .line 3231
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3265
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3268
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3271
    :cond_1c
    return-object p0

    .line 3266
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 4277
    if-nez p0, :cond_4

    .line 4278
    const/4 v0, 0x0

    return-object v0

    .line 4280
    :cond_4
    if-gtz p1, :cond_9

    .line 4281
    const-string v0, ""

    return-object v0

    .line 4283
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4284
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_71

    if-nez v0, :cond_13

    goto :goto_71

    .line 4287
    :cond_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_23

    .line 4288
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4291
    :cond_23
    mul-int v3, v0, p1

    .line 4292
    .local v3, "outputLength":I
    packed-switch v0, :pswitch_data_72

    .line 4310
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4311
    .local v1, "buf":Ljava/lang/StringBuffer;
    goto :goto_64

    .line 4301
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :pswitch_2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4302
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4303
    .local v1, "ch1":C
    new-array v4, v3, [C

    .line 4304
    .local v4, "output2":[C
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_3c
    if-ltz v5, :cond_49

    .line 4305
    aput-char v2, v4, v5

    .line 4306
    add-int/lit8 v6, v5, 0x1

    aput-char v1, v4, v6

    .line 4304
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    .line 4308
    .end local v5    # "i":I
    :cond_49
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 4294
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v4    # "output2":[C
    :pswitch_4f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4295
    .local v1, "ch":C
    new-array v2, v3, [C

    .line 4296
    .local v2, "output1":[C
    add-int/lit8 v4, p1, -0x1

    .local v4, "i":I
    :goto_57
    if-ltz v4, :cond_5e

    .line 4297
    aput-char v1, v2, v4

    .line 4296
    add-int/lit8 v4, v4, -0x1

    goto :goto_57

    .line 4299
    .end local v4    # "i":I
    :cond_5e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 4311
    .local v1, "buf":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_64
    if-ge v2, p1, :cond_6c

    .line 4312
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4311
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 4314
    .end local v2    # "i":I
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4285
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "outputLength":I
    :cond_71
    :goto_71
    return-object p0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_2e
    .end packed-switch
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3458
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 3490
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz p2, :cond_64

    if-nez p3, :cond_11

    goto :goto_64

    .line 3493
    :cond_11
    const/4 v0, 0x0

    .line 3494
    .local v0, "start":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3495
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 3496
    return-object p0

    .line 3498
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3499
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 3500
    .local v4, "increase":I
    if-gez v4, :cond_27

    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    move v5, v4

    :goto_28
    move v4, v5

    .line 3501
    const/16 v5, 0x40

    if-gez p3, :cond_30

    const/16 v5, 0x10

    goto :goto_34

    :cond_30
    if-le p3, v5, :cond_33

    goto :goto_34

    :cond_33
    move v5, p3

    :goto_34
    mul-int v4, v4, v5

    .line 3502
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3503
    .local v5, "buf":Ljava/lang/StringBuffer;
    :goto_40
    if-eq v1, v2, :cond_58

    .line 3504
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3505
    add-int v0, v1, v3

    .line 3506
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_53

    .line 3507
    goto :goto_58

    .line 3509
    :cond_53
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_40

    .line 3511
    :cond_58
    :goto_58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3512
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3491
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "increase":I
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    :cond_64
    :goto_64
    return-object p0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 3809
    if-nez p0, :cond_4

    .line 3810
    const/4 v0, 0x0

    return-object v0

    .line 3812
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 3852
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_45

    .line 3855
    :cond_d
    if-nez p2, :cond_11

    .line 3856
    const-string p2, ""

    .line 3858
    :cond_11
    const/4 v0, 0x0

    .line 3859
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 3860
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3861
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3862
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v2, :cond_3d

    .line 3863
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3864
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3865
    .local v6, "index":I
    if-ltz v6, :cond_37

    .line 3866
    const/4 v0, 0x1

    .line 3867
    if-ge v6, v1, :cond_3a

    .line 3868
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 3871
    :cond_37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3862
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 3874
    .end local v4    # "i":I
    :cond_3d
    if-eqz v0, :cond_44

    .line 3875
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3877
    :cond_44
    return-object p0

    .line 3853
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    :cond_45
    :goto_45
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3555
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 24
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 3665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-eqz v0, :cond_152

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_152

    if-eqz v1, :cond_152

    array-length v5, v1

    if-eqz v5, :cond_152

    if-eqz v2, :cond_152

    array-length v5, v2

    if-nez v5, :cond_1e

    goto/16 :goto_152

    .line 3672
    :cond_1e
    if-ltz v4, :cond_133

    .line 3676
    array-length v5, v1

    .line 3677
    .local v5, "searchLength":I
    array-length v6, v2

    .line 3680
    .local v6, "replacementLength":I
    if-ne v5, v6, :cond_114

    .line 3688
    new-array v7, v5, [Z

    .line 3691
    .local v7, "noMoreMatchesForReplIndex":[Z
    const/4 v8, -0x1

    .line 3692
    .local v8, "textIndex":I
    const/4 v9, -0x1

    .line 3693
    .local v9, "replaceIndex":I
    const/4 v10, -0x1

    .line 3697
    .local v10, "tempIndex":I
    move v12, v10

    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "textIndex":I
    .local v10, "replaceIndex":I
    .local v12, "tempIndex":I
    :goto_2d
    const/4 v13, -0x1

    const/4 v14, 0x1

    if-ge v8, v5, :cond_5a

    .line 3698
    aget-boolean v15, v7, v8

    if-nez v15, :cond_57

    aget-object v15, v1, v8

    if-eqz v15, :cond_57

    aget-object v15, v1, v8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_57

    aget-object v15, v2, v8

    if-nez v15, :cond_46

    .line 3701
    goto :goto_57

    .line 3703
    :cond_46
    aget-object v15, v1, v8

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 3706
    if-ne v12, v13, :cond_51

    .line 3707
    aput-boolean v14, v7, v8

    goto :goto_57

    .line 3709
    :cond_51
    if-eq v9, v13, :cond_55

    if-ge v12, v9, :cond_57

    .line 3710
    :cond_55
    move v9, v12

    .line 3711
    move v10, v8

    .line 3697
    :cond_57
    :goto_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 3718
    :cond_5a
    if-ne v9, v13, :cond_5d

    .line 3719
    .end local v8    # "i":I
    return-object v0

    .line 3722
    .local v8, "start":I
    :cond_5d
    const/4 v8, 0x0

    .line 3725
    const/4 v15, 0x0

    .line 3728
    .local v15, "increase":I
    move v11, v15

    const/4 v15, 0x0

    .local v11, "increase":I
    .local v15, "i":I
    :goto_61
    array-length v14, v1

    if-ge v15, v14, :cond_7c

    .line 3729
    aget-object v14, v2, v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    aget-object v17, v1, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v14, v14, v17

    .line 3730
    .local v14, "greater":I
    if-lez v14, :cond_78

    .line 3731
    mul-int/lit8 v17, v14, 0x3

    add-int v11, v11, v17

    .line 3728
    .end local v14    # "greater":I
    :cond_78
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_61

    .line 3735
    .end local v15    # "i":I
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3737
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v11

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3739
    .local v14, "buf":Ljava/lang/StringBuffer;
    :goto_90
    if-eq v9, v13, :cond_ef

    .line 3741
    move v15, v8

    .restart local v15    # "i":I
    :goto_93
    if-ge v15, v9, :cond_a0

    .line 3742
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3741
    add-int/lit8 v15, v15, 0x1

    const/4 v13, -0x1

    goto :goto_93

    .line 3744
    .end local v15    # "i":I
    :cond_a0
    aget-object v13, v2, v10

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3746
    aget-object v13, v1, v10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v8, v9, v13

    .line 3748
    const/4 v9, -0x1

    .line 3749
    const/4 v10, -0x1

    .line 3750
    const/4 v12, -0x1

    .line 3753
    move v13, v12

    move v12, v10

    move v10, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v10, "textIndex":I
    .local v12, "replaceIndex":I
    .local v13, "tempIndex":I
    :goto_b4
    if-ge v9, v5, :cond_e8

    .line 3754
    aget-boolean v15, v7, v9

    if-nez v15, :cond_e2

    aget-object v15, v1, v9

    if-eqz v15, :cond_e2

    aget-object v15, v1, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_e2

    aget-object v15, v2, v9

    if-nez v15, :cond_cb

    .line 3757
    goto :goto_e2

    .line 3759
    :cond_cb
    aget-object v15, v1, v9

    invoke-virtual {v0, v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 3762
    const/4 v15, -0x1

    if-ne v13, v15, :cond_d9

    .line 3763
    const/16 v16, 0x1

    aput-boolean v16, v7, v9

    goto :goto_e5

    .line 3765
    :cond_d9
    const/16 v16, 0x1

    if-eq v10, v15, :cond_df

    if-ge v13, v10, :cond_e5

    .line 3766
    :cond_df
    move v10, v13

    .line 3767
    move v12, v9

    goto :goto_e5

    .line 3753
    :cond_e2
    :goto_e2
    const/4 v15, -0x1

    const/16 v16, 0x1

    :cond_e5
    :goto_e5
    add-int/lit8 v9, v9, 0x1

    goto :goto_b4

    .line 3737
    .end local v9    # "i":I
    :cond_e8
    const/16 v16, 0x1

    move v9, v10

    move v10, v12

    move v12, v13

    const/4 v13, -0x1

    goto :goto_90

    .line 3774
    .end local v13    # "tempIndex":I
    .local v9, "textIndex":I
    .local v10, "replaceIndex":I
    .local v12, "tempIndex":I
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 3775
    .local v13, "textLength":I
    move v15, v8

    .restart local v15    # "i":I
    :goto_f4
    if-ge v15, v13, :cond_104

    .line 3776
    move-object/from16 v18, v7

    .end local v7    # "noMoreMatchesForReplIndex":[Z
    .local v18, "noMoreMatchesForReplIndex":[Z
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3775
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    goto :goto_f4

    .line 3778
    .end local v15    # "i":I
    .end local v18    # "noMoreMatchesForReplIndex":[Z
    .restart local v7    # "noMoreMatchesForReplIndex":[Z
    :cond_104
    move-object/from16 v18, v7

    .end local v7    # "noMoreMatchesForReplIndex":[Z
    .restart local v18    # "noMoreMatchesForReplIndex":[Z
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3779
    .local v7, "result":Ljava/lang/String;
    if-nez v3, :cond_10d

    .line 3780
    return-object v7

    .line 3783
    :cond_10d
    add-int/lit8 v15, v4, -0x1

    invoke-static {v7, v1, v2, v3, v15}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 3681
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "start":I
    .end local v9    # "textIndex":I
    .end local v10    # "replaceIndex":I
    .end local v11    # "increase":I
    .end local v12    # "tempIndex":I
    .end local v13    # "textLength":I
    .end local v14    # "buf":Ljava/lang/StringBuffer;
    .end local v18    # "noMoreMatchesForReplIndex":[Z
    :cond_114
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3673
    .end local v5    # "searchLength":I
    .end local v6    # "replacementLength":I
    :cond_133
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "TimeToLive of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " is less than 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3668
    :cond_152
    :goto_152
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3606
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p1

    .line 3607
    .local v0, "timeToLive":I
    :goto_5
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3431
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5283
    if-nez p0, :cond_4

    .line 5284
    const/4 v0, 0x0

    return-object v0

    .line 5286
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 5309
    if-nez p0, :cond_4

    .line 5310
    const/4 v0, 0x0

    return-object v0

    .line 5314
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5315
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5316
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static reverseDelimitedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 5342
    if-nez p0, :cond_4

    .line 5343
    const/4 v0, 0x0

    return-object v0

    .line 5347
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5348
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5349
    if-nez p1, :cond_14

    .line 5350
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5352
    :cond_14
    invoke-static {v0, p1}, Lorg/apache/commons/lang/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 1695
    if-nez p0, :cond_4

    .line 1696
    const/4 v0, 0x0

    return-object v0

    .line 1698
    :cond_4
    if-gez p1, :cond_9

    .line 1699
    const-string v0, ""

    return-object v0

    .line 1701
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 1702
    return-object p0

    .line 1704
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4372
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4397
    if-nez p0, :cond_4

    .line 4398
    const/4 v0, 0x0

    return-object v0

    .line 4400
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4401
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4402
    return-object p0

    .line 4404
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4405
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4407
    :cond_1a
    invoke-static {v0, p2}, Lorg/apache/commons/lang/StringUtils;->padding(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4434
    if-nez p0, :cond_4

    .line 4435
    const/4 v0, 0x0

    return-object v0

    .line 4437
    :cond_4
    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4438
    const-string p2, " "

    .line 4440
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4441
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4442
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4443
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4444
    return-object p0

    .line 4446
    :cond_19
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2a

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_2a

    .line 4447
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4450
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4451
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4452
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4453
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4455
    :cond_3c
    new-array v3, v2, [C

    .line 4456
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 4457
    .local v5, "padChars":[C
    nop

    .local v4, "i":I
    :goto_43
    if-ge v4, v2, :cond_4e

    .line 4458
    rem-int v6, v4, v0

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    .line 4457
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 4460
    .end local v4    # "i":I
    :cond_4e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 2109
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2137
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2166
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2200
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 2711
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 2757
    if-nez p0, :cond_4

    .line 2758
    const/4 v0, 0x0

    return-object v0

    .line 2760
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 2761
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2763
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2764
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2765
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .line 2766
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 2767
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_1f
    array-length v5, v0

    if-ge v4, v5, :cond_52

    .line 2768
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 2769
    .local v5, "type":I
    if-ne v5, v3, :cond_2b

    .line 2770
    goto :goto_4f

    .line 2772
    :cond_2b
    if-eqz p1, :cond_43

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    const/4 v6, 0x1

    if-ne v3, v6, :cond_43

    .line 2773
    add-int/lit8 v6, v4, -0x1

    .line 2774
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_4e

    .line 2775
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2776
    move v2, v6

    goto :goto_4e

    .line 2779
    .end local v6    # "newTokenStart":I
    :cond_43
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2780
    move v2, v4

    .line 2782
    :cond_4e
    :goto_4e
    move v3, v5

    .line 2767
    .end local v5    # "type":I
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 2784
    .end local v4    # "pos":I
    :cond_52
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 2739
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2227
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2258
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2287
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2320
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2340
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2341
    return-object v0

    .line 2344
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2346
    .local v1, "len":I
    if-nez v1, :cond_d

    .line 2347
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2350
    :cond_d
    if-eqz p1, :cond_73

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_73

    .line 2355
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2357
    .local v0, "separatorLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2358
    .local v2, "substrings":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 2359
    .local v3, "numberOfSubstrings":I
    const/4 v4, 0x0

    .line 2360
    .local v4, "beg":I
    const/4 v5, 0x0

    .line 2361
    .local v5, "end":I
    :goto_24
    if-ge v5, v1, :cond_66

    .line 2362
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 2364
    const/4 v6, -0x1

    if-le v5, v6, :cond_5d

    .line 2365
    if-le v5, v4, :cond_46

    .line 2366
    add-int/lit8 v3, v3, 0x1

    .line 2368
    if-ne v3, p2, :cond_3c

    .line 2369
    move v5, v1

    .line 2370
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 2374
    :cond_3c
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    add-int v4, v5, v0

    goto :goto_24

    .line 2383
    :cond_46
    if-eqz p3, :cond_5a

    .line 2384
    add-int/lit8 v3, v3, 0x1

    .line 2385
    if-ne v3, p2, :cond_55

    .line 2386
    move v5, v1

    .line 2387
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 2389
    :cond_55
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    :cond_5a
    :goto_5a
    add-int v4, v5, v0

    goto :goto_24

    .line 2396
    :cond_5d
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    move v5, v1

    goto :goto_24

    .line 2401
    :cond_66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 2352
    .end local v0    # "separatorLength":I
    .end local v2    # "substrings":Ljava/util/ArrayList;
    .end local v3    # "numberOfSubstrings":I
    .end local v4    # "beg":I
    .end local v5    # "end":I
    :cond_73
    :goto_73
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 2430
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2466
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2549
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2589
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 2484
    if-nez p0, :cond_4

    .line 2485
    const/4 v0, 0x0

    return-object v0

    .line 2487
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2488
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 2489
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2491
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 2493
    .local v3, "start":I
    const/4 v4, 0x0

    .line 2494
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 2495
    .local v5, "lastMatch":Z
    :goto_16
    if-ge v2, v0, :cond_34

    .line 2496
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 2497
    if-nez v4, :cond_22

    if-eqz p2, :cond_2b

    .line 2498
    :cond_22
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2499
    const/4 v4, 0x0

    .line 2500
    const/4 v5, 0x1

    .line 2502
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2503
    goto :goto_16

    .line 2505
    :cond_2f
    const/4 v5, 0x0

    .line 2506
    const/4 v4, 0x1

    .line 2507
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2509
    :cond_34
    if-nez v4, :cond_3a

    if-eqz p2, :cond_41

    if-eqz v5, :cond_41

    .line 2510
    :cond_3a
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2611
    if-nez p0, :cond_4

    .line 2612
    const/4 v0, 0x0

    return-object v0

    .line 2614
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2615
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 2616
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2618
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x1

    .line 2620
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 2621
    .local v4, "start":I
    const/4 v5, 0x0

    .line 2622
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 2623
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_43

    .line 2625
    :goto_1a
    if-ge v3, v0, :cond_9c

    .line 2626
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 2627
    if-nez v5, :cond_2a

    if-eqz p3, :cond_3b

    .line 2628
    :cond_2a
    const/4 v6, 0x1

    .line 2629
    add-int/lit8 v8, v2, 0x1

    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_31

    .line 2630
    .end local v2    # "sizePlus1":I
    move v3, v0

    .line 2631
    const/4 v6, 0x0

    .line 2633
    :cond_31
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2634
    const/4 v2, 0x0

    .line 2636
    move v5, v2

    move v2, v8

    .end local v8    # "sizePlus1":I
    .restart local v2    # "sizePlus1":I
    :cond_3b
    add-int/2addr v3, v7

    move v4, v3

    .line 2637
    goto :goto_1a

    .line 2639
    :cond_3e
    const/4 v6, 0x0

    .line 2640
    const/4 v5, 0x1

    .line 2641
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2643
    :cond_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_73

    .line 2645
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2646
    .local v8, "sep":C
    :goto_4e
    if-ge v3, v0, :cond_9c

    .line 2647
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_6e

    .line 2648
    if-nez v5, :cond_5a

    if-eqz p3, :cond_6b

    .line 2649
    :cond_5a
    const/4 v6, 0x1

    .line 2650
    add-int/lit8 v9, v2, 0x1

    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_61

    .line 2651
    .end local v2    # "sizePlus1":I
    move v3, v0

    .line 2652
    const/4 v6, 0x0

    .line 2654
    :cond_61
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    const/4 v2, 0x0

    .line 2657
    move v5, v2

    move v2, v9

    .end local v9    # "sizePlus1":I
    .restart local v2    # "sizePlus1":I
    :cond_6b
    add-int/2addr v3, v7

    move v4, v3

    .line 2658
    goto :goto_4e

    .line 2660
    :cond_6e
    const/4 v6, 0x0

    .line 2661
    const/4 v5, 0x1

    .line 2662
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 2666
    .end local v8    # "sep":C
    :cond_73
    :goto_73
    if-ge v3, v0, :cond_9c

    .line 2667
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_97

    .line 2668
    if-nez v5, :cond_83

    if-eqz p3, :cond_94

    .line 2669
    :cond_83
    const/4 v6, 0x1

    .line 2670
    add-int/lit8 v8, v2, 0x1

    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_8a

    .line 2671
    .end local v2    # "sizePlus1":I
    move v3, v0

    .line 2672
    const/4 v6, 0x0

    .line 2674
    :cond_8a
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    const/4 v2, 0x0

    .line 2677
    move v5, v2

    move v2, v8

    .end local v8    # "sizePlus1":I
    .restart local v2    # "sizePlus1":I
    :cond_94
    add-int/2addr v3, v7

    move v4, v3

    .line 2678
    goto :goto_73

    .line 2680
    :cond_97
    const/4 v6, 0x0

    .line 2681
    const/4 v5, 0x1

    .line 2682
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 2685
    :cond_9c
    if-nez v5, :cond_a2

    if-eqz p3, :cond_a9

    if-eqz v6, :cond_a9

    .line 2686
    :cond_a2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2688
    :cond_a9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 5840
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 5880
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    .line 5883
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 5884
    return v0

    .line 5886
    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 5881
    :cond_1f
    :goto_1f
    if-nez p0, :cond_25

    if-nez p1, :cond_25

    const/4 v0, 0x1

    nop

    :cond_25
    return v0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 5865
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 475
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 476
    return-object p0

    .line 478
    :cond_7
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-static {p0, p1}, Lorg/apache/commons/lang/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strs"    # [Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 622
    if-eqz p0, :cond_19

    array-length v0, p0

    move v1, v0

    .local v1, "strsLen":I
    if-nez v0, :cond_7

    .end local v1    # "strsLen":I
    goto :goto_19

    .line 623
    .restart local v1    # "strsLen":I
    :cond_7
    nop

    .line 625
    new-array v0, v1, [Ljava/lang/String;

    .line 626
    .local v0, "newArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_18

    .line 627
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 629
    .end local v2    # "i":I
    :cond_18
    return-object v0

    .line 623
    .end local v0    # "newArr":[Ljava/lang/String;
    .end local v1    # "strsLen":I
    :cond_19
    :goto_19
    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 552
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "end":I
    if-nez v0, :cond_a

    .end local v1    # "end":I
    goto :goto_3d

    .line 553
    .restart local v1    # "end":I
    :cond_a
    nop

    .line 556
    if-nez p1, :cond_1e

    .line 557
    :goto_d
    if-eqz v1, :cond_37

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 558
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 560
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 561
    return-object p0

    .line 563
    :cond_25
    :goto_25
    if-eqz v1, :cond_37

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_37

    .line 564
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 567
    :cond_37
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    .end local v1    # "end":I
    :cond_3d
    :goto_3d
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 508
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    .end local v1    # "strLen":I
    goto :goto_39

    .line 509
    .restart local v1    # "strLen":I
    :cond_a
    nop

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "start":I
    if-nez p1, :cond_1d

    .line 513
    :goto_e
    if-eq v0, v1, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 516
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_24

    .line 517
    return-object p0

    .line 519
    :cond_24
    :goto_24
    if-eq v0, v1, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 523
    :cond_34
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 509
    .end local v0    # "start":I
    .end local v1    # "strLen":I
    :cond_39
    :goto_39
    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 445
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 415
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 416
    return-object v0

    .line 418
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/commons/lang/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 1552
    if-nez p0, :cond_4

    .line 1553
    const/4 v0, 0x0

    return-object v0

    .line 1557
    :cond_4
    if-gez p1, :cond_b

    .line 1558
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1561
    :cond_b
    if-gez p1, :cond_e

    .line 1562
    const/4 p1, 0x0

    .line 1564
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    .line 1565
    const-string v0, ""

    return-object v0

    .line 1568
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1607
    if-nez p0, :cond_4

    .line 1608
    const/4 v0, 0x0

    return-object v0

    .line 1612
    :cond_4
    if-gez p2, :cond_b

    .line 1613
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 1615
    :cond_b
    if-gez p1, :cond_12

    .line 1616
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 1620
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    .line 1621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 1625
    :cond_1c
    if-le p1, p2, :cond_21

    .line 1626
    const-string v0, ""

    return-object v0

    .line 1629
    :cond_21
    if-gez p1, :cond_24

    .line 1630
    const/4 p1, 0x0

    .line 1632
    :cond_24
    if-gez p2, :cond_27

    .line 1633
    const/4 p2, 0x0

    .line 1636
    :cond_27
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 1815
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1816
    return-object p0

    .line 1818
    :cond_7
    if-nez p1, :cond_c

    .line 1819
    const-string v0, ""

    return-object v0

    .line 1821
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1822
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 1823
    const-string v1, ""

    return-object v1

    .line 1825
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 1892
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1893
    return-object p0

    .line 1895
    :cond_7
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1896
    const-string v0, ""

    return-object v0

    .line 1898
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1899
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_23

    goto :goto_2d

    .line 1902
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1900
    :cond_2d
    :goto_2d
    const-string v1, ""

    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 1775
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    goto :goto_20

    .line 1778
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 1779
    const-string v0, ""

    return-object v0

    .line 1781
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1782
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 1783
    return-object p0

    .line 1785
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1776
    .end local v0    # "pos":I
    :cond_20
    :goto_20
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 1854
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 1857
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1858
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 1859
    return-object p0

    .line 1861
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1855
    .end local v0    # "pos":I
    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 1929
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 1960
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-nez p2, :cond_8

    goto :goto_25

    .line 1963
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1964
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 1965
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1966
    .local v3, "end":I
    if-eq v3, v2, :cond_24

    .line 1967
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1970
    .end local v3    # "end":I
    :cond_24
    return-object v0

    .line 1961
    .end local v1    # "start":I
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 1996
    const/4 v0, 0x0

    if-eqz p0, :cond_58

    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p2}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_58

    .line 1999
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2000
    .local v1, "strLen":I
    if-nez v1, :cond_19

    .line 2001
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2003
    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2004
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2005
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .local v4, "list":Ljava/util/List;
    const/4 v5, 0x0

    .line 2007
    .local v5, "pos":I
    :goto_27
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_44

    .line 2008
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2009
    .local v6, "start":I
    if-gez v6, :cond_32

    .line 2010
    goto :goto_44

    .line 2012
    :cond_32
    add-int/2addr v6, v3

    .line 2013
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 2014
    .local v7, "end":I
    if-gez v7, :cond_3a

    .line 2015
    goto :goto_44

    .line 2017
    :cond_3a
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    add-int v5, v7, v2

    goto :goto_27

    .line 2020
    .end local v6    # "start":I
    .end local v7    # "end":I
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2021
    return-object v0

    .line 2023
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1997
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;
    .end local v5    # "pos":I
    :cond_58
    :goto_58
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4859
    if-eqz p0, :cond_43

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    .end local v1    # "strLen":I
    goto :goto_43

    .line 4860
    .restart local v1    # "strLen":I
    :cond_a
    nop

    .line 4862
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4864
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 4865
    .local v2, "ch":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_3e

    .line 4866
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4867
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 4868
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_38

    .line 4869
    :cond_23
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 4870
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_38

    .line 4871
    :cond_2e
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4872
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 4874
    :cond_38
    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4865
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 4876
    .end local v3    # "i":I
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4860
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "strLen":I
    .end local v2    # "ch":C
    :cond_43
    :goto_43
    return-object p0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 308
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 360
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 334
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static uncapitalise(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4827
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 4808
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    .end local v1    # "strLen":I
    goto :goto_29

    .line 4809
    .restart local v1    # "strLen":I
    :cond_a
    nop

    .line 4811
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4809
    .end local v1    # "strLen":I
    :cond_29
    :goto_29
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4715
    if-nez p0, :cond_4

    .line 4716
    const/4 v0, 0x0

    return-object v0

    .line 4718
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
