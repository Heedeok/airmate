.class public final Lcom/google/common/io/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2
    .param p0, "target"    # Ljava/lang/Appendable;

    .line 439
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_8

    .line 440
    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    return-object v0

    .line 442
    :cond_8
    new-instance v0, Lcom/google/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;",
            "Lcom/google/common/io/OutputSupplier<",
            "TW;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<TW;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "successfulOps":I
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 156
    .local v1, "in":Ljava/lang/Readable;, "TR;"
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_a
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Appendable;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_3d

    .line 158
    .local v5, "out":Ljava/lang/Appendable;, "TW;"
    :try_start_10
    invoke-static {v1, v5}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v6
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_2e

    .line 159
    .local v6, "count":J
    add-int/lit8 v0, v0, 0x1

    .line 160
    nop

    .line 162
    :try_start_17
    move-object v8, v5

    check-cast v8, Ljava/io/Closeable;

    if-ge v0, v4, :cond_1e

    const/4 v9, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v9, 0x0

    :goto_1f
    invoke-static {v8, v9}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_3d

    .line 163
    add-int/2addr v0, v4

    .line 166
    move-object v8, v1

    check-cast v8, Ljava/io/Closeable;

    if-ge v0, v2, :cond_2a

    const/4 v3, 0x1

    nop

    :cond_2a
    invoke-static {v8, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v6

    .line 162
    .end local v6    # "count":J
    :catchall_2e
    move-exception v6

    :try_start_2f
    move-object v7, v5

    check-cast v7, Ljava/io/Closeable;

    if-ge v0, v4, :cond_36

    const/4 v8, 0x1

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    :goto_37
    invoke-static {v7, v8}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    throw v6
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3d

    .line 166
    .end local v5    # "out":Ljava/lang/Appendable;, "TW;"
    :catchall_3d
    move-exception v5

    move-object v6, v1

    check-cast v6, Ljava/io/Closeable;

    if-ge v0, v2, :cond_45

    const/4 v3, 0x1

    nop

    :cond_45
    invoke-static {v6, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/lang/Appendable;)J
    .registers 7
    .param p1, "to"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;",
            "Ljava/lang/Appendable;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    .local p0, "from":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v0, 0x1

    .line 183
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 185
    .local v1, "in":Ljava/lang/Readable;, "TR;"
    :try_start_7
    invoke-static {v1, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_14

    .line 186
    .local v2, "count":J
    const/4 v0, 0x0

    .line 187
    nop

    .line 189
    move-object v4, v1

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .end local v2    # "count":J
    :catchall_14
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .registers 8
    .param p0, "from"    # Ljava/lang/Readable;
    .param p1, "to"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 204
    .local v0, "buf":Ljava/nio/CharBuffer;
    const-wide/16 v1, 0x0

    .line 206
    .local v1, "total":J
    :goto_8
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 207
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    .line 208
    nop

    .line 214
    .end local v3    # "r":I
    return-wide v1

    .line 210
    .restart local v3    # "r":I
    :cond_11
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 211
    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 212
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 213
    .end local v3    # "r":I
    goto :goto_8
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
            "Ljava/io/Reader;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .line 389
    .local p0, "suppliers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;>;"
    new-instance v0, Lcom/google/common/io/CharStreams$4;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$4;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation

    .line 399
    .local p0, "suppliers":[Lcom/google/common/io/InputSupplier;, "[Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newReaderSupplier(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/InputSupplier;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier<",
            "+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/InputStreamReader;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "in":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/google/common/io/CharStreams$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharStreams$2;-><init>(Lcom/google/common/io/InputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newReaderSupplier(Ljava/lang/String;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/io/InputSupplier<",
            "Ljava/io/StringReader;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/common/io/CharStreams$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newWriterSupplier(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)Lcom/google/common/io/OutputSupplier;
    .registers 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier<",
            "+",
            "Ljava/io/OutputStream;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/io/OutputSupplier<",
            "Ljava/io/OutputStreamWriter;",
            ">;"
        }
    .end annotation

    .line 109
    .local p0, "out":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/google/common/io/CharStreams$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharStreams$3;-><init>(Lcom/google/common/io/OutputSupplier;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readFirstLine(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v0, 0x1

    .line 288
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 290
    .local v1, "r":Ljava/lang/Readable;, "TR;"
    :try_start_7
    new-instance v2, Lcom/google/common/io/LineReader;

    invoke-direct {v2, v1}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    invoke-virtual {v2}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    .line 291
    .local v2, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 292
    nop

    .line 294
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .end local v2    # "line":Ljava/lang/String;
    :catchall_19
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    .local p1, "callback":Lcom/google/common/io/LineProcessor;, "Lcom/google/common/io/LineProcessor<TT;>;"
    const/4 v0, 0x1

    .line 356
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 358
    .local v1, "r":Ljava/lang/Readable;, "TR;"
    :try_start_7
    new-instance v2, Lcom/google/common/io/LineReader;

    invoke-direct {v2, v1}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 360
    .local v2, "lineReader":Lcom/google/common/io/LineReader;
    :cond_c
    invoke-virtual {v2}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 361
    invoke-interface {p1, v4}, Lcom/google/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z

    move-result v3
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_27

    if-nez v3, :cond_c

    .line 362
    nop

    .line 365
    :cond_1a
    const/4 v0, 0x0

    .line 367
    .end local v2    # "lineReader":Lcom/google/common/io/LineReader;
    .end local v4    # "line":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 368
    nop

    .line 369
    invoke-interface {p1}, Lcom/google/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 367
    :catchall_27
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static readLines(Lcom/google/common/io/InputSupplier;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;)",
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

    .line 309
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v0, 0x1

    .line 310
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 312
    .local v1, "r":Ljava/lang/Readable;, "TR;"
    :try_start_7
    invoke-static {v1}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;)Ljava/util/List;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_14

    .line 313
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 314
    nop

    .line 316
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_14
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method public static readLines(Ljava/lang/Readable;)Ljava/util/List;
    .registers 5
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
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

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 337
    .local v1, "lineReader":Lcom/google/common/io/LineReader;
    :goto_a
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_15

    .line 338
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 340
    :cond_15
    return-object v0
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .registers 8
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_22

    .line 415
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    .line 416
    .local v2, "amt":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_1f

    .line 418
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 421
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_21

    .line 419
    :cond_19
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 423
    :cond_1f
    const/4 v0, 0x0

    sub-long/2addr p1, v2

    .line 425
    .end local v2    # "amt":J
    :goto_21
    goto :goto_0

    .line 426
    :cond_22
    return-void
.end method

.method public static toString(Lcom/google/common/io/InputSupplier;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Lcom/google/common/io/InputSupplier;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .registers 2
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Lcom/google/common/io/InputSupplier;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Readable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Lcom/google/common/io/InputSupplier<",
            "TR;>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p0, "supplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<TR;>;"
    const/4 v0, 0x1

    .line 266
    .local v0, "threw":Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Readable;

    .line 268
    .local v1, "r":Ljava/lang/Readable;, "TR;"
    :try_start_7
    invoke-static {v1}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_14

    .line 269
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 270
    nop

    .line 272
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v2

    .end local v2    # "result":Ljava/lang/StringBuilder;
    :catchall_14
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 253
    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Lcom/google/common/io/OutputSupplier;)V
    .registers 6
    .param p0, "from"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/io/OutputSupplier<",
            "TW;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p1, "to":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<TW;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, "threw":Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Appendable;

    .line 133
    .local v1, "out":Ljava/lang/Appendable;, "TW;"
    :try_start_a
    invoke-interface {v1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_16

    .line 134
    const/4 v0, 0x0

    .line 136
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 137
    nop

    .line 138
    return-void

    .line 136
    :catchall_16
    move-exception v2

    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method
