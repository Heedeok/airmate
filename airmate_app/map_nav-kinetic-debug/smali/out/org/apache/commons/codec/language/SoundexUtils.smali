.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 40
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3c

    .line 43
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 44
    .local v0, "len":I
    new-array v1, v0, [C

    .line 45
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 46
    .local v2, "count":I
    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v4, "count":I
    :goto_13
    if-ge v2, v0, :cond_2b

    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 48
    add-int/lit8 v5, v4, 0x1

    .local v5, "count":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v4

    .line 46
    move v4, v5

    .end local v5    # "count":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 51
    .end local v2    # "i":I
    :cond_2b
    if-ne v4, v0, :cond_32

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 54
    :cond_32
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 41
    .end local v0    # "len":I
    .end local v1    # "chars":[C
    .end local v4    # "count":I
    :cond_3c
    :goto_3c
    return-object p0
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "encoder"    # Lorg/apache/commons/codec/StringEncoder;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 84
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "es1"    # Ljava/lang/String;
    .param p1, "es2"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-nez p1, :cond_6

    goto :goto_26

    .line 112
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 113
    .local v1, "lengthToMatch":I
    const/4 v2, 0x0

    .line 114
    .local v2, "diff":I
    nop

    .local v0, "i":I
    :goto_14
    if-ge v0, v1, :cond_25

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_22

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 114
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 119
    .end local v0    # "i":I
    :cond_25
    return v2

    .line 110
    .end local v1    # "lengthToMatch":I
    .end local v2    # "diff":I
    :cond_26
    :goto_26
    return v0
.end method
