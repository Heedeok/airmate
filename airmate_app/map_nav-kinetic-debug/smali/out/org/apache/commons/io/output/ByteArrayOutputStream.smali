.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffers:Ljava/util/List;

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 82
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    .line 83
    if-ltz p1, :cond_10

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 88
    return-void

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBuffer(I)[B
    .registers 3
    .param p1, "index"    # I

    .line 98
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private needNewBuffer(I)V
    .registers 5
    .param p1, "newcount"    # I

    .line 108
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_23

    .line 110
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 112
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 113
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 114
    goto :goto_52

    .line 117
    :cond_23
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_2c

    .line 118
    move v0, p1

    .line 119
    .local v0, "newBufferSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 120
    goto :goto_41

    .line 121
    .end local v0    # "newBufferSize":I
    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    .restart local v0    # "newBufferSize":I
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 127
    :goto_41
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 128
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 129
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "newBufferSize":I
    :goto_52
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 232
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 233
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 234
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 235
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 236
    monitor-exit p0

    return-void

    .line 231
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 8

    monitor-enter p0

    .line 267
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 268
    .local v0, "remaining":I
    if-nez v0, :cond_9

    .line 269
    sget-object v1, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 271
    :cond_9
    :try_start_9
    new-array v1, v0, [B

    .line 272
    .local v1, "newbuf":[B
    const/4 v2, 0x0

    .line 273
    .local v2, "pos":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "remaining":I
    .local v4, "pos":I
    :goto_10
    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2c

    .line 274
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v5

    .line 275
    .local v5, "buf":[B
    array-length v6, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 276
    .local v6, "c":I
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2e

    .line 277
    add-int/2addr v4, v6

    .line 278
    sub-int/2addr v2, v6

    .line 279
    if-nez v2, :cond_29

    .line 280
    goto :goto_2c

    .line 273
    .end local v5    # "buf":[B
    .end local v6    # "c":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 283
    .end local v0    # "i":I
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v1

    .line 266
    .end local v1    # "newbuf":[B
    .end local v2    # "remaining":I
    .end local v4    # "pos":I
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 292
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "readCount":I
    :try_start_2
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v1, v2

    .line 194
    .local v1, "inBufferPos":I
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 195
    .local v2, "n":I
    :goto_11
    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 196
    add-int/2addr v0, v2

    .line 197
    add-int/2addr v1, v2

    .line 198
    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 199
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    if-ne v1, v3, :cond_27

    .line 200
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v3}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 201
    const/4 v1, 0x0

    .line 203
    :cond_27
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_35

    move v2, v3

    .line 204
    goto :goto_11

    .line 205
    :cond_33
    monitor-exit p0

    return v0

    .line 191
    .end local v0    # "readCount":I
    .end local v1    # "inBufferPos":I
    .end local v2    # "n":I
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .param p1, "b"    # I

    monitor-enter p0

    .line 171
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    .line 172
    .local v0, "inBufferPos":I
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 173
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 174
    const/4 v0, 0x0

    .line 176
    :cond_13
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 177
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 178
    monitor-exit p0

    return-void

    .line 170
    .end local v0    # "inBufferPos":I
    .end local p1    # "b":I
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 140
    if-ltz p2, :cond_3e

    array-length v0, p1

    if-gt p2, v0, :cond_3e

    if-ltz p3, :cond_3e

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3e

    add-int v0, p2, p3

    if-ltz v0, :cond_3e

    .line 146
    if-nez p3, :cond_13

    .line 147
    return-void

    .line 149
    :cond_13
    monitor-enter p0

    .line 150
    :try_start_14
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    .line 151
    .local v0, "newcount":I
    move v1, p3

    .line 152
    .local v1, "remaining":I
    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v2, v3

    .line 153
    .local v2, "inBufferPos":I
    :goto_1d
    if-lez v1, :cond_37

    .line 154
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 155
    .local v3, "part":I
    add-int v4, p2, p3

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    sub-int/2addr v1, v3

    .line 157
    if-lez v1, :cond_36

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 159
    const/4 v2, 0x0

    .line 161
    .end local v3    # "part":I
    :cond_36
    goto :goto_1d

    .line 162
    :cond_37
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 163
    .end local v0    # "newcount":I
    .end local v1    # "remaining":I
    .end local v2    # "inBufferPos":I
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_3b

    throw v0

    .line 145
    :cond_3e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 248
    .local v0, "remaining":I
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "remaining":I
    :goto_6
    iget-object v3, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 249
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->getBuffer(I)[B

    move-result-object v3

    .line 250
    .local v3, "buf":[B
    array-length v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 251
    .local v4, "c":I
    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    .line 252
    sub-int/2addr v2, v4

    .line 253
    if-nez v2, :cond_1e

    .line 254
    goto :goto_21

    .line 248
    .end local v3    # "buf":[B
    .end local v4    # "c":I
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 257
    .end local v0    # "i":I
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 246
    .end local v2    # "remaining":I
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
