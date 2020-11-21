.class public final Lcom/google/common/io/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p0, "from"    # Ljava/lang/CharSequence;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 341
    return-void
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/File;)V
    .registers 3
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p1}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 246
    return-void
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "to"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    invoke-static {p1, p2}, Lcom/google/common/io/Files;->newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 311
    return-void
.end method

.method public static copy(Ljava/io/File;Lcom/google/common/io/OutputSupplier;)V
    .registers 3
    .param p0, "from"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
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

    .line 269
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 270
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Source %s and destination %s must be different"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/Files;->copy(Lcom/google/common/io/InputSupplier;Ljava/io/File;)V

    .line 295
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->copy(Lcom/google/common/io/InputSupplier;Ljava/io/OutputStream;)J

    .line 281
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/OutputSupplier;)V
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/OutputSupplier<",
            "TW;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    .local p2, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<TW;>;"
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/io/CharStreams;->copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 373
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Appendable;)V
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "to"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/io/CharStreams;->copy(Lcom/google/common/io/InputSupplier;Ljava/lang/Appendable;)J

    .line 388
    return-void
.end method

.method public static createParentDirs(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 474
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_b

    .line 482
    return-void

    .line 484
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 488
    return-void

    .line 486
    :cond_15
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create parent directories of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createTempDir()Ljava/io/File;
    .registers 5

    .line 434
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "baseDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "baseName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_21
    const/16 v3, 0x2710

    if-ge v2, v3, :cond_43

    .line 438
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .local v3, "tempDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 440
    return-object v3

    .line 437
    .end local v3    # "tempDir":Ljava/io/File;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 443
    .end local v2    # "counter":I
    :cond_43
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory within 10000 attempts (tried "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0 to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x270f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static equal(Ljava/io/File;Ljava/io/File;)Z
    .registers 9
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    if-eq p0, p1, :cond_2e

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 405
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 406
    .local v0, "len1":J
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 407
    .local v2, "len2":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_21

    cmp-long v6, v2, v4

    if-eqz v6, :cond_21

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    .line 408
    const/4 v4, 0x0

    return v4

    .line 410
    :cond_21
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v4

    invoke-static {p1}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/io/ByteStreams;->equal(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/InputSupplier;)Z

    move-result v4

    return v4

    .line 397
    .end local v0    # "len1":J
    .end local v2    # "len2":J
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    return v0
.end method

.method public static getChecksum(Ljava/io/File;Ljava/util/zip/Checksum;)J
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDigest(Ljava/io/File;Ljava/security/MessageDigest;)[B
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->getDigest(Lcom/google/common/io/InputSupplier;Ljava/security/MessageDigest;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 796
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 798
    .local v0, "dotIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const-string v1, ""

    goto :goto_15

    :cond_f
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    return-object v1
.end method

.method public static hash(Ljava/io/File;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->hash(Lcom/google/common/io/InputSupplier;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;)Ljava/nio/MappedByteBuffer;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/MappedByteBuffer;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 671
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/Files;->map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0

    .line 669
    :cond_f
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static map(Ljava/io/File;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v1, :cond_9

    const-string v1, "r"

    goto :goto_b

    :cond_9
    const-string v1, "rw"

    :goto_b
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    .local v0, "raf":Ljava/io/RandomAccessFile;
    const/4 v1, 0x1

    .line 702
    .local v1, "threw":Z
    :try_start_f
    invoke-static {v0, p1, p2, p3}, Lcom/google/common/io/Files;->map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_19

    .line 703
    .local v2, "mbb":Ljava/nio/MappedByteBuffer;
    const/4 v1, 0x0

    .line 704
    nop

    .line 706
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .end local v2    # "mbb":Ljava/nio/MappedByteBuffer;
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method private static map(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel$MapMode;J)Ljava/nio/MappedByteBuffer;
    .registers 12
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 714
    .local v6, "channel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x1

    move v7, v0

    .line 716
    .local v7, "threw":Z
    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-wide v4, p2

    :try_start_b
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    .line 717
    .local v0, "mbb":Ljava/nio/MappedByteBuffer;
    const/4 v1, 0x0

    .line 718
    .end local v7    # "threw":Z
    .local v1, "threw":Z
    nop

    .line 720
    invoke-static {v6, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v0

    .end local v0    # "mbb":Ljava/nio/MappedByteBuffer;
    .end local v1    # "threw":Z
    .restart local v7    # "threw":Z
    :catchall_15
    move-exception v0

    invoke-static {v6, v7}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v0
.end method

.method public static move(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Source %s and destination %s must be different"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 505
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 506
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_59

    .line 507
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_42

    .line 508
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_42
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_59
    return-void
.end method

.method public static newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/google/common/io/Files$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/Files$1;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/io/OutputSupplier<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Lcom/google/common/io/OutputSupplier<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/google/common/io/Files$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/Files$2;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/InputStreamReader;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/CharStreams;->newReaderSupplier(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedWriter;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public static newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/OutputSupplier<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/io/Files;->newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;Z)Lcom/google/common/io/OutputSupplier;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Lcom/google/common/io/OutputSupplier<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p2}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/CharStreams;->newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Ljava/io/File;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstLine(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->readFirstLine(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    .local p2, "callback":Lcom/google/common/io/LineProcessor;, "Lcom/google/common/io/LineProcessor<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/io/CharStreams;->readLines(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-static {p0, p1}, Lcom/google/common/io/Files;->newReaderSupplier(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->readLines(Lcom/google/common/io/InputSupplier;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static simplifyPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "pathname"    # Ljava/lang/String;

    .line 746
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 747
    const-string v0, "."

    return-object v0

    .line 751
    :cond_9
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    .line 753
    .local v1, "components":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 757
    .local v4, "component":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 758
    goto :goto_20

    .line 759
    :cond_35
    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 760
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 761
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 763
    :cond_61
    const-string v5, ".."

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 766
    :cond_67
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 771
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "component":Ljava/lang/String;
    :cond_6b
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_8b

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    :cond_8b
    :goto_8b
    const-string v0, "/../"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 777
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    .line 779
    :cond_99
    const-string v0, "/.."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 780
    const-string v3, "/"

    goto :goto_ae

    .line 781
    :cond_a4
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 782
    const-string v3, "."

    .line 785
    :cond_ae
    :goto_ae
    return-object v3
.end method

.method public static toByteArray(Ljava/io/File;)[B
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    .line 205
    invoke-static {p0}, Lcom/google/common/io/Files;->newInputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Lcom/google/common/io/InputSupplier;)[B

    move-result-object v0

    return-object v0

    .line 208
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 209
    .local v0, "b":[B
    const/4 v1, 0x1

    .line 210
    .local v1, "threw":Z
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 212
    .local v2, "in":Ljava/io/InputStream;
    :try_start_31
    invoke-static {v2, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3a

    .line 213
    const/4 v1, 0x0

    .line 215
    invoke-static {v2, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 216
    nop

    .line 217
    return-object v0

    .line 215
    :catchall_3a
    move-exception v3

    invoke-static {v2, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static touch(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_28

    .line 458
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update modification time of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_28
    :goto_28
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p0, "from"    # Ljava/lang/CharSequence;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 326
    return-void
.end method

.method private static write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .registers 5
    .param p0, "from"    # Ljava/lang/CharSequence;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-static {p1, p2, p3}, Lcom/google/common/io/Files;->newWriterSupplier(Ljava/io/File;Ljava/nio/charset/Charset;Z)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->write(Ljava/lang/CharSequence;Lcom/google/common/io/OutputSupplier;)V

    .line 357
    return-void
.end method

.method public static write([BLjava/io/File;)V
    .registers 3
    .param p0, "from"    # [B
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {p1}, Lcom/google/common/io/Files;->newOutputStreamSupplier(Ljava/io/File;)Lcom/google/common/io/OutputSupplier;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->write([BLcom/google/common/io/OutputSupplier;)V

    .line 257
    return-void
.end method
