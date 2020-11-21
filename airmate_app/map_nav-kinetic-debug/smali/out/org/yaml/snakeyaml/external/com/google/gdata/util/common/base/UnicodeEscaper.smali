.class public abstract Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/Escaper;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEST_PAD:I = 0x20

.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    nop

    .line 500
    new-instance v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .registers 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 456
    if-ge p1, p2, :cond_7c

    .line 457
    add-int/lit8 v0, p1, 0x1

    .local v0, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 458
    .local p1, "c1":C
    const v1, 0xd800

    if-lt p1, v1, :cond_7b

    const v1, 0xdfff

    if-le p1, v1, :cond_13

    goto :goto_7b

    .line 461
    :cond_13
    const v1, 0xdbff

    if-gt p1, v1, :cond_52

    .line 464
    if-ne v0, p2, :cond_1c

    .line 465
    neg-int v1, p1

    return v1

    .line 468
    :cond_1c
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 469
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 470
    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 472
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected low surrogate but got char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    .end local v1    # "c2":C
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_7b
    :goto_7b
    return p1

    .line 479
    .end local v0    # "index":I
    .local p1, "index":I
    :cond_7c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final growBuffer([CII)[C
    .registers 5
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 488
    new-array v0, p2, [C

    .line 489
    .local v0, "copy":[C
    if-lez p1, :cond_8

    .line 490
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_8
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "out"    # Ljava/lang/Appendable;

    .line 286
    nop

    .line 288
    new-instance v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;

    invoke-direct {v0, p0, p1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;-><init>(Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    .local v0, "end":I
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 163
    .local v1, "index":I
    if-ne v1, v0, :cond_d

    move-object v2, p1

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_11
    return-object v2
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    .local v0, "end":I
    sget-object v1, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 192
    .local v1, "dest":[C
    const/4 v2, 0x0

    .line 193
    .local v2, "destIndex":I
    const/4 v3, 0x0

    move v4, v2

    move-object v2, v1

    move v1, p2

    const/4 p2, 0x0

    .line 195
    .local v1, "index":I
    .local v2, "dest":[C
    .local v4, "destIndex":I
    .local p2, "unescapedChunkStart":I
    :goto_12
    if-ge v1, v0, :cond_59

    .line 196
    invoke-static {p1, v1, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 197
    .local v5, "cp":I
    if-ltz v5, :cond_51

    .line 200
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 201
    .local v6, "escaped":[C
    if-eqz v6, :cond_41

    .line 202
    sub-int v7, v1, p2

    .line 207
    .local v7, "charsSkipped":I
    add-int v8, v4, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 208
    .local v8, "sizeNeeded":I
    array-length v9, v2

    if-ge v9, v8, :cond_32

    .line 209
    sub-int v9, v0, v1

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x20

    .line 210
    .local v9, "destLength":I
    invoke-static {v2, v4, v9}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 213
    .end local v9    # "destLength":I
    :cond_32
    if-lez v7, :cond_38

    .line 214
    invoke-virtual {p1, p2, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 215
    add-int/2addr v4, v7

    .line 217
    :cond_38
    array-length v9, v6

    if-lez v9, :cond_41

    .line 218
    array-length v9, v6

    invoke-static {v6, v3, v2, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length v9, v6

    add-int/2addr v4, v9

    .line 222
    .end local v7    # "charsSkipped":I
    .end local v8    # "sizeNeeded":I
    :cond_41
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_49

    const/4 v7, 0x2

    goto :goto_4a

    :cond_49
    const/4 v7, 0x1

    :goto_4a
    add-int p2, v1, v7

    .line 223
    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 224
    .end local v5    # "cp":I
    .end local v6    # "escaped":[C
    goto :goto_12

    .line 198
    .restart local v5    # "cp":I
    :cond_51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trailing high surrogate at end of input"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    .end local v5    # "cp":I
    :cond_59
    sub-int v5, v0, p2

    .line 230
    .local v5, "charsSkipped":I
    if-lez v5, :cond_6a

    .line 231
    add-int v6, v4, v5

    .line 232
    .local v6, "endIndex":I
    array-length v7, v2

    if-ge v7, v6, :cond_66

    .line 233
    invoke-static {v2, v4, v6}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v2

    .line 235
    :cond_66
    invoke-virtual {p1, p2, v0, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 236
    move v4, v6

    .line 238
    .end local v6    # "endIndex":I
    :cond_6a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 122
    move v0, p2

    .line 123
    .local v0, "index":I
    :goto_1
    if-ge v0, p3, :cond_1b

    .line 124
    invoke-static {p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 125
    .local v1, "cp":I
    if-ltz v1, :cond_1b

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_10

    .line 126
    goto :goto_1b

    .line 128
    :cond_10
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    goto :goto_19

    :cond_18
    const/4 v2, 0x1

    :goto_19
    add-int/2addr v0, v2

    .line 129
    .end local v1    # "cp":I
    goto :goto_1

    .line 130
    :cond_1b
    :goto_1b
    return v0
.end method
