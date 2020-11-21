.class public final Lorg/apache/commons/lang/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method public constructor <init>(C)V
    .registers 3
    .param p1, "ch"    # C

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(CC)V
    .registers 4
    .param p1, "start"    # C
    .param p2, "end"    # C

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 82
    return-void
.end method

.method public constructor <init>(CCZ)V
    .registers 5
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "negated"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-le p1, p2, :cond_8

    .line 101
    move v0, p1

    .line 102
    .local v0, "temp":C
    move p1, p2

    .line 103
    move p2, v0

    .line 106
    .end local v0    # "temp":C
    :cond_8
    iput-char p1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    .line 107
    iput-char p2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    .line 108
    iput-boolean p3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    .line 109
    return-void
.end method

.method public constructor <init>(CZ)V
    .registers 3
    .param p1, "ch"    # C
    .param p2, "negated"    # Z

    .line 71
    invoke-direct {p0, p1, p1, p2}, Lorg/apache/commons/lang/CharRange;-><init>(CCZ)V

    .line 72
    return-void
.end method


# virtual methods
.method public contains(C)Z
    .registers 6
    .param p1, "ch"    # C

    .line 152
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_c

    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-boolean v3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eq v0, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public contains(Lorg/apache/commons/lang/CharRange;)Z
    .registers 6
    .param p1, "range"    # Lorg/apache/commons/lang/CharRange;

    .line 164
    if-eqz p1, :cond_4c

    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 168
    iget-boolean v0, p1, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v0, :cond_1b

    .line 169
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->start:C

    if-lt v0, v3, :cond_19

    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->end:C

    if-gt v0, v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    .line 171
    :cond_1b
    iget-char v0, p1, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->start:C

    if-lt v0, v3, :cond_2a

    iget-char v0, p1, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-le v0, v3, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v1, 0x0

    nop

    :cond_2a
    :goto_2a
    return v1

    .line 174
    :cond_2b
    iget-boolean v0, p1, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-eqz v0, :cond_3d

    .line 175
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    if-nez v0, :cond_3b

    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    const v3, 0xffff

    if-ne v0, v3, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    return v1

    .line 177
    :cond_3d
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->start:C

    if-gt v0, v3, :cond_4a

    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang/CharRange;->end:C

    if-lt v0, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    return v1

    .line 165
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Range must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 193
    return v0

    .line 195
    :cond_4
    instance-of v1, p1, Lorg/apache/commons/lang/CharRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 196
    return v2

    .line 198
    :cond_a
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/CharRange;

    .line 199
    .local v1, "other":Lorg/apache/commons/lang/CharRange;
    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v4, v1, Lorg/apache/commons/lang/CharRange;->start:C

    if-ne v3, v4, :cond_20

    iget-char v3, p0, Lorg/apache/commons/lang/CharRange;->end:C

    iget-char v4, v1, Lorg/apache/commons/lang/CharRange;->end:C

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    iget-boolean v4, v1, Lorg/apache/commons/lang/CharRange;->negated:Z

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public getEnd()C
    .registers 2

    .line 128
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .registers 2

    .line 119
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 208
    iget-char v0, p0, Lorg/apache/commons/lang/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegated()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Lorg/apache/commons/lang/CharRange;->negated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 217
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 219
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/lang/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 220
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    :cond_15
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang/CharRange;->end:C

    if-eq v1, v2, :cond_2a

    .line 224
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    iget-char v1, p0, Lorg/apache/commons/lang/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    .line 229
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_30
    iget-object v0, p0, Lorg/apache/commons/lang/CharRange;->iToString:Ljava/lang/String;

    return-object v0
.end method
