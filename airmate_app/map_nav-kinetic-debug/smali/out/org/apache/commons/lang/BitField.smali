.class public Lorg/apache/commons/lang/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "mask"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "count":I
    move v1, p1

    .line 49
    .local v1, "bit_pattern":I
    if-eqz v1, :cond_12

    .line 50
    :goto_9
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_12

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    shr-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 55
    :cond_12
    iput v0, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    .line 56
    return-void
.end method


# virtual methods
.method public clear(I)I
    .registers 3
    .param p1, "holder"    # I

    .line 186
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .registers 3
    .param p1, "holder"    # B

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .registers 3
    .param p1, "holder"    # S

    .line 198
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .registers 3
    .param p1, "holder"    # I

    .line 102
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .registers 3
    .param p1, "holder"    # S

    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .registers 3
    .param p1, "holder"    # S

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .registers 4
    .param p1, "holder"    # I

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .registers 4
    .param p1, "holder"    # I

    .line 146
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isSet(I)Z
    .registers 3
    .param p1, "holder"    # I

    .line 130
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public set(I)I
    .registers 3
    .param p1, "holder"    # I

    .line 223
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .registers 4
    .param p1, "holder"    # I
    .param p2, "flag"    # Z

    .line 261
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clear(I)I

    move-result v0

    :goto_b
    return v0
.end method

.method public setByte(B)B
    .registers 3
    .param p1, "holder"    # B

    .line 248
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .registers 4
    .param p1, "holder"    # B
    .param p2, "flag"    # Z

    .line 287
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->setByte(B)B

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clearByte(B)B

    move-result v0

    :goto_b
    return v0
.end method

.method public setShort(S)S
    .registers 3
    .param p1, "holder"    # S

    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .registers 4
    .param p1, "holder"    # S
    .param p2, "flag"    # Z

    .line 274
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->setShort(S)S

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/BitField;->clearShort(S)S

    move-result v0

    :goto_b
    return v0
.end method

.method public setShortValue(SS)S
    .registers 4
    .param p1, "holder"    # S
    .param p2, "value"    # S

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .registers 6
    .param p1, "holder"    # I
    .param p2, "value"    # I

    .line 160
    iget v0, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang/BitField;->_shift_count:I

    shl-int v1, p2, v1

    iget v2, p0, Lorg/apache/commons/lang/BitField;->_mask:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
