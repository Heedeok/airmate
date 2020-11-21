.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier<",
            "+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, "successfulOps":I
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 121
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_a
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/OutputStream;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_34

    .line 123
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_10
    invoke-static {v1, v5}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_28

    .line 124
    .local v6, "count":J
    add-int/lit8 v0, v0, 0x1

    .line 125
    nop

    .line 127
    if-ge v0, v4, :cond_1b

    const/4 v8, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v8, 0x0

    :goto_1c
    :try_start_1c
    invoke-static {v5, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_34

    .line 128
    add-int/2addr v0, v4

    .line 131
    if-ge v0, v2, :cond_24

    const/4 v3, 0x1

    nop

    :cond_24
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v6

    .line 127
    .end local v6    # "count":J
    :catchall_28
    move-exception v6

    if-ge v0, v4, :cond_2d

    const/4 v7, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v7, 0x0

    :goto_2e
    :try_start_2e
    invoke-static {v5, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    throw v6
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_34

    .line 131
    .end local v5    # "out":Ljava/io/OutputStream;
    :catchall_34
    move-exception v5

    if-ge v0, v2, :cond_39

    const/4 v3, 0x1

    nop

    :cond_39
    invoke-static {v1, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/OutputStream;)J
    .registers 6
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v0, 0x1

    .line 148
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 150
    .local v1, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-static {v1, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_11

    .line 151
    .local v2, "count":J
    const/4 v0, 0x0

    .line 152
    nop

    .line 154
    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .end local v2    # "count":J
    :catchall_11
    move-exception v2

    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static copy(Ljava/io/InputStream;Lcom/google/common/io/OutputSupplier;)J
    .registers 6
    .param p0, "from"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/OutputSupplier<",
            "+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    const/4 v0, 0x1

    .line 172
    .local v0, "threw":Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 174
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_7
    invoke-static {p0, v1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_11

    .line 175
    .local v2, "count":J
    const/4 v0, 0x0

    .line 176
    nop

    .line 178
    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .end local v2    # "count":J
    :catchall_11
    move-exception v2

    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 194
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 196
    .local v1, "total":J
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 197
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    .line 198
    nop

    .line 203
    .end local v3    # "r":I
    return-wide v1

    .line 200
    .restart local v3    # "r":I
    :cond_f
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 201
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 202
    .end local v3    # "r":I
    goto :goto_6
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .registers 7
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 219
    .local v1, "total":J
    :goto_8
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 220
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    :goto_12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 222
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_12

    .line 224
    :cond_1f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_8

    .line 226
    :cond_23
    return-wide v1
.end method

.method public static equal(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/InputSupplier;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    .local p0, "supplier1":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "supplier2":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 607
    .local v1, "buf1":[B
    new-array v2, v0, [B

    .line 609
    .local v2, "buf2":[B
    const/4 v3, 0x1

    .line 610
    .local v3, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 612
    .local v4, "in1":Ljava/io/InputStream;
    :try_start_d
    invoke-interface {p1}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_3f

    .line 615
    .local v5, "in2":Ljava/io/InputStream;
    :goto_13
    const/4 v6, 0x0

    :try_start_14
    invoke-static {v4, v1, v6, v0}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 616
    .local v7, "read1":I
    invoke-static {v5, v2, v6, v0}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v8

    .line 617
    .local v8, "read2":I
    if-ne v7, v8, :cond_31

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_3a

    if-nez v9, :cond_25

    goto :goto_31

    .line 620
    :cond_25
    if-eq v7, v0, :cond_30

    .line 621
    const/4 v3, 0x0

    .line 622
    const/4 v0, 0x1

    .line 626
    :try_start_29
    invoke-static {v5, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3f

    .line 629
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return v0

    .line 624
    .end local v7    # "read1":I
    .end local v8    # "read2":I
    :cond_30
    goto :goto_13

    .line 618
    .restart local v7    # "read1":I
    .restart local v8    # "read2":I
    :cond_31
    :goto_31
    const/4 v3, 0x0

    .line 619
    nop

    .line 626
    :try_start_33
    invoke-static {v5, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3f

    .line 629
    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return v6

    .line 626
    .end local v7    # "read1":I
    .end local v8    # "read2":I
    :catchall_3a
    move-exception v0

    :try_start_3b
    invoke-static {v5, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    .line 629
    .end local v5    # "in2":Ljava/io/InputStream;
    :catchall_3f
    move-exception v0

    invoke-static {v4, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v0
.end method

.method public static getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
    .registers 4
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/util/zip/Checksum;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$2;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$2;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDigest(Lcom/google/common/io/InputSupplier;Ljava/security/MessageDigest;)[B
    .registers 3
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/security/MessageDigest;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 768
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$3;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$3;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static hash(Lcom/google/common/io/InputSupplier;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 4
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/hash/HashFunction;",
            ")",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 796
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    new-instance v1, Lcom/google/common/io/ByteStreams$4;

    invoke-direct {v1, v0}, Lcom/google/common/io/ByteStreams$4;-><init>(Lcom/google/common/hash/Hasher;)V

    invoke-static {p0, v1}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    return-object v1
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 901
    .local p0, "suppliers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$6;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$6;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 911
    .local p0, "suppliers":[Lcom/google/common/io/InputSupplier;, "[Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lcom/google/common/io/InputSupplier;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v0, 0x0

    .line 578
    .local v0, "count":J
    const/4 v2, 0x1

    .line 579
    .local v2, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 583
    .local v3, "in":Ljava/io/InputStream;
    :goto_9
    const-wide/32 v4, 0x7fffffff

    :try_start_c
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 584
    .local v4, "amt":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_27

    .line 585
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_2a

    const/4 v7, -0x1

    if-ne v6, v7, :cond_23

    .line 586
    const/4 v2, 0x0

    .line 587
    nop

    .line 595
    invoke-static {v3, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .line 589
    :cond_23
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_29

    .line 591
    :cond_27
    const/4 v6, 0x0

    add-long/2addr v0, v4

    .line 593
    .end local v4    # "amt":J
    :goto_29
    goto :goto_9

    .line 595
    :catchall_2a
    move-exception v4

    invoke-static {v3, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .registers 2
    .param p0, "bytes"    # [B

    .line 267
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([B)V

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .registers 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .line 278
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 279
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([BI)V

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .registers 1

    .line 421
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>()V

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .registers 6
    .param p0, "size"    # I

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 432
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(I)V

    return-object v0
.end method

.method public static newInputStreamSupplier([B)Lcom/google/common/io/InputSupplier;
    .registers 3
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .line 65
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/io/ByteStreams;->newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$1;-><init>([BII)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    if-ltz p3, :cond_14

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "total":I
    :goto_3
    if-ge v0, p3, :cond_13

    .line 841
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 842
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 843
    goto :goto_13

    .line 845
    :cond_11
    add-int/2addr v0, v1

    .line 846
    .end local v1    # "result":I
    goto :goto_3

    .line 847
    :cond_13
    :goto_13
    return v0

    .line 837
    .end local v0    # "total":I
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 707
    .local v0, "buf":[B
    const/4 v1, 0x1

    .line 708
    .local v1, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 712
    .local v2, "in":Ljava/io/InputStream;
    :cond_b
    :try_start_b
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 713
    .local v3, "amt":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    .line 714
    const/4 v1, 0x0

    .line 715
    goto :goto_1b

    .line 717
    :cond_14
    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v3}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v4

    if-nez v4, :cond_b

    .line 718
    :goto_1b
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v4
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_23

    .line 720
    invoke-static {v2, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v4

    .end local v3    # "amt":I
    :catchall_23
    move-exception v3

    invoke-static {v2, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 646
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-ne v0, p3, :cond_7

    .line 667
    return-void

    .line 665
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_22

    .line 683
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 684
    .local v2, "amt":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_1f

    .line 686
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 689
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_21

    .line 687
    :cond_19
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 691
    :cond_1f
    const/4 v0, 0x0

    sub-long/2addr p1, v2

    .line 693
    .end local v2    # "amt":J
    :goto_21
    goto :goto_0

    .line 694
    :cond_22
    return-void
.end method

.method public static slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
    .registers 13
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;JJ)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 865
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    const-string v5, "offset is negative"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 867
    cmp-long v4, p3, v2

    if-ltz v4, :cond_19

    const/4 v0, 0x1

    nop

    :cond_19
    const-string v1, "length is negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 868
    new-instance v0, Lcom/google/common/io/ByteStreams$5;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/common/io/ByteStreams$5;-><init>(Lcom/google/common/io/InputSupplier;JJ)V

    return-object v0
.end method

.method public static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v0, 0x1

    .line 252
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 254
    .local v1, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_11

    .line 255
    .local v2, "result":[B
    const/4 v0, 0x0

    .line 256
    nop

    .line 258
    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .end local v2    # "result":[B
    :catchall_11
    move-exception v2

    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .registers 5
    .param p0, "from"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier<",
            "+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "threw":Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    .line 100
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 101
    const/4 v0, 0x0

    .line 103
    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_13
    move-exception v2

    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
