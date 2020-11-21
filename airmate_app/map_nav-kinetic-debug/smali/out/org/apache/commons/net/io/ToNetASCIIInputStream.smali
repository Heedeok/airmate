.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;
.source "ToNetASCIIInputStream.java"


# static fields
.field private static final __LAST_WAS_CR:I = 0x1

.field private static final __LAST_WAS_NL:I = 0x2

.field private static final __NOTHING_SPECIAL:I


# instance fields
.field private __status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 53
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 176
    .local v0, "result":I
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 177
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 179
    :cond_e
    return v0
.end method

.method public markSupported()Z
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 72
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 73
    return v1

    .line 76
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 78
    .local v0, "ch":I
    const/4 v4, 0x1

    const/16 v5, 0xd

    if-eq v0, v1, :cond_1c

    if-eq v0, v5, :cond_19

    goto :goto_23

    .line 81
    :cond_19
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 82
    return v5

    .line 84
    :cond_1c
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    if-eq v1, v4, :cond_23

    .line 86
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 87
    return v5

    .line 91
    :cond_23
    :goto_23
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->__status:I

    .line 92
    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    .line 137
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    move-result v1

    .line 141
    .local v1, "ch":I
    if-le p3, v1, :cond_c

    .line 142
    move p3, v1

    .line 145
    :cond_c
    if-ge p3, v0, :cond_f

    .line 146
    const/4 p3, 0x1

    .line 148
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result v0

    move v1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 149
    return v2

    .line 151
    :cond_18
    move v0, p3

    move p3, p2

    .line 155
    .local v0, "length":I
    .local p2, "off":I
    .local p3, "offset":I
    :goto_1a
    add-int/lit8 v3, p3, 0x1

    .local v3, "offset":I
    int-to-byte v4, v1

    aput-byte v4, p1, p3

    .line 157
    .end local p3    # "offset":I
    add-int/2addr v0, v2

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    move-result p3

    move v1, p3

    if-ne p3, v2, :cond_2a

    goto :goto_2c

    .line 151
    :cond_2a
    move p3, v3

    goto :goto_1a

    .line 159
    :cond_2c
    :goto_2c
    sub-int p3, v3, p2

    return p3
.end method
