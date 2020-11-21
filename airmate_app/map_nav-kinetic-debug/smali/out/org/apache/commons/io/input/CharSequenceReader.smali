.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 51
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 52
    return-void
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .line 60
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    .line 61
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .line 79
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 80
    const/4 v0, -0x1

    return v0

    .line 82
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 10
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 96
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_c

    .line 97
    return v2

    .line 99
    :cond_c
    if-eqz p1, :cond_53

    .line 102
    if-ltz p3, :cond_2b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2b

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, p3, :cond_2a

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v3

    .line 109
    .local v3, "c":I
    if-ne v3, v2, :cond_20

    .line 110
    return v0

    .line 112
    :cond_20
    add-int v4, p2, v1

    int-to-char v5, v3

    aput-char v5, p1, v4

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 107
    .end local v3    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 115
    .end local v1    # "i":I
    :cond_2a
    return v0

    .line 103
    .end local v0    # "count":I
    :cond_2b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Character array is missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .line 123
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 124
    return-void
.end method

.method public skip(J)J
    .registers 7
    .param p1, "n"    # J

    .line 133
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2b

    .line 137
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 138
    const-wide/16 v0, -0x1

    return-wide v0

    .line 140
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 141
    .local v0, "dest":I
    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int v1, v0, v1

    .line 142
    .local v1, "count":I
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 143
    int-to-long v2, v1

    return-wide v2

    .line 134
    .end local v0    # "dest":I
    .end local v1    # "count":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Number of characters to skip is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
