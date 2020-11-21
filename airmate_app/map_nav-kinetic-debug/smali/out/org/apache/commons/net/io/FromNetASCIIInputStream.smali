.class public final Lorg/apache/commons/net/io/FromNetASCIIInputStream;
.super Ljava/io/PushbackInputStream;
.source "FromNetASCIIInputStream.java"


# static fields
.field static final _lineSeparator:Ljava/lang/String;

.field static final _lineSeparatorBytes:[B

.field static final _noConversionRequired:Z


# instance fields
.field private __length:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    .line 43
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    .line 44
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;

    .line 69
    sget-object v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 70
    return-void
.end method

.method private __read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 79
    .local v0, "ch":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_27

    .line 81
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 82
    const/16 v2, 0xa

    if-ne v0, v2, :cond_20

    .line 84
    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread([B)V

    .line 85
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 87
    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    goto :goto_27

    .line 91
    :cond_20
    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->unread(I)V

    .line 93
    :cond_26
    return v1

    .line 97
    :cond_27
    :goto_27
    return v0
.end method

.method public static final isConversionRequired()Z
    .registers 1

    .line 60
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_9

    .line 118
    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0

    .line 120
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v0

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

    .line 138
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    .line 162
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->available()I

    move-result v1

    .line 166
    .local v1, "ch":I
    if-le p3, v1, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, p3

    :goto_e
    iput v2, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 169
    iget v2, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-ge v2, v0, :cond_16

    .line 170
    iput v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    .line 172
    :cond_16
    sget-boolean v2, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v2, :cond_21

    .line 173
    iget v0, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    invoke-super {p0, p1, p2, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    return v0

    .line 175
    :cond_21
    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 176
    return v3

    .line 178
    :cond_2a
    move v2, v1

    move v1, p2

    .line 182
    .local v1, "offset":I
    .local v2, "ch":I
    .local p2, "off":I
    :goto_2c
    add-int/lit8 v4, v1, 0x1

    .local v4, "offset":I
    int-to-byte v5, v2

    aput-byte v5, p1, v1

    .line 184
    .end local v1    # "offset":I
    iget v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__length:I

    if-lez v1, :cond_42

    invoke-direct {p0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->__read()I

    move-result v1

    move v2, v1

    if-ne v1, v3, :cond_40

    goto :goto_42

    .line 178
    :cond_40
    move v1, v4

    goto :goto_2c

    .line 187
    :cond_42
    :goto_42
    sub-int v0, v4, p2

    return v0
.end method
