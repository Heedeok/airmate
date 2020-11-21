.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 4
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 331
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .registers 9
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 320
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .registers 20
    .param p0, "source"    # Ljava/io/Reader;
    .param p1, "dest"    # Ljava/io/Writer;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 257
    move-object v1, p1

    move/from16 v8, p2

    new-array v9, v8, [C

    .line 258
    .local v9, "buffer":[C
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 262
    .local v2, "total":J
    .local v4, "chars":I
    :goto_9
    move-object v10, p0

    :try_start_a
    invoke-virtual {p0, v9}, Ljava/io/Reader;->read([C)I

    move-result v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_51

    .end local v4    # "chars":I
    move v11, v5

    .local v11, "chars":I
    const/4 v4, -0x1

    if-eq v5, v4, :cond_4f

    .line 266
    if-nez v11, :cond_34

    .line 268
    :try_start_14
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v4

    move v11, v4

    .line 269
    if-gez v11, :cond_1c

    .line 270
    goto :goto_4f

    .line 271
    :cond_1c
    invoke-virtual {p1, v11}, Ljava/io/Writer;->write(I)V

    .line 272
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_32

    .line 273
    const-wide/16 v4, 0x1

    add-long v12, v2, v4

    .line 274
    .end local v2    # "total":J
    .local v12, "total":J
    if-eqz p5, :cond_4c

    .line 275
    move-object/from16 v2, p5

    move-wide v3, v12

    move v5, v11

    move-wide/from16 v6, p3

    :try_start_2e
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_49

    goto :goto_4c

    .line 286
    .end local v12    # "total":J
    .restart local v2    # "total":J
    :catch_32
    move-exception v0

    goto :goto_53

    .line 279
    :cond_34
    :try_start_34
    invoke-virtual {p1, v9, v0, v11}, Ljava/io/Writer;->write([CII)V

    .line 280
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_32

    .line 281
    int-to-long v4, v11

    add-long v12, v2, v4

    .line 282
    .end local v2    # "total":J
    .restart local v12    # "total":J
    if-eqz p5, :cond_4c

    .line 283
    move-object/from16 v2, p5

    move-wide v3, v12

    move v5, v11

    move-wide/from16 v6, p3

    :try_start_45
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4c

    .line 286
    :catch_49
    move-exception v0

    move-wide v2, v12

    goto :goto_53

    .line 258
    :cond_4c
    :goto_4c
    move v4, v11

    move-wide v2, v12

    goto :goto_9

    .line 290
    .end local v12    # "total":J
    .restart local v2    # "total":J
    :cond_4f
    :goto_4f
    nop

    .line 292
    return-wide v2

    .line 286
    .end local v11    # "chars":I
    .restart local v4    # "chars":I
    :catch_51
    move-exception v0

    move v11, v4

    .line 288
    .end local v4    # "chars":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "chars":I
    :goto_53
    new-instance v4, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v4, v5, v2, v3, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v4
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 4
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 213
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 9
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 202
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .registers 13
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 173
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .registers 21
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .param p3, "streamSize"    # J
    .param p5, "listener"    # Lorg/apache/commons/net/io/CopyStreamListener;
    .param p6, "flush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    .line 95
    move-object v1, p1

    move/from16 v8, p2

    new-array v9, v8, [B

    .line 96
    .local v9, "buffer":[B
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 100
    .local v2, "total":J
    .local v4, "bytes":I
    :goto_9
    move-object v10, p0

    :try_start_a
    invoke-virtual {p0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_55

    .end local v4    # "bytes":I
    move v11, v5

    .local v11, "bytes":I
    const/4 v4, -0x1

    if-eq v5, v4, :cond_53

    .line 105
    if-nez v11, :cond_36

    .line 107
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    move v11, v4

    .line 108
    if-gez v11, :cond_1c

    .line 109
    goto :goto_53

    .line 110
    :cond_1c
    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 111
    if-eqz p6, :cond_24

    .line 112
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_34

    .line 113
    :cond_24
    const-wide/16 v4, 0x1

    add-long v12, v2, v4

    .line 114
    .end local v2    # "total":J
    .local v12, "total":J
    if-eqz p5, :cond_50

    .line 115
    const/4 v5, 0x1

    move-object/from16 v2, p5

    move-wide v3, v12

    move-wide/from16 v6, p3

    :try_start_30
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_4d

    goto :goto_50

    .line 127
    .end local v12    # "total":J
    .restart local v2    # "total":J
    :catch_34
    move-exception v0

    goto :goto_57

    .line 119
    :cond_36
    :try_start_36
    invoke-virtual {p1, v9, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 120
    if-eqz p6, :cond_3e

    .line 121
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3e} :catch_34

    .line 122
    :cond_3e
    int-to-long v4, v11

    add-long v12, v2, v4

    .line 123
    .end local v2    # "total":J
    .restart local v12    # "total":J
    if-eqz p5, :cond_50

    .line 124
    move-object/from16 v2, p5

    move-wide v3, v12

    move v5, v11

    move-wide/from16 v6, p3

    :try_start_49
    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_50

    .line 127
    :catch_4d
    move-exception v0

    move-wide v2, v12

    goto :goto_57

    .line 96
    :cond_50
    :goto_50
    move v4, v11

    move-wide v2, v12

    goto :goto_9

    .line 131
    .end local v12    # "total":J
    .restart local v2    # "total":J
    :cond_53
    :goto_53
    nop

    .line 133
    return-wide v2

    .line 127
    .end local v11    # "bytes":I
    .restart local v4    # "bytes":I
    :catch_55
    move-exception v0

    move v11, v4

    .line 129
    .end local v4    # "bytes":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "bytes":I
    :goto_57
    new-instance v4, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v5, "IOException caught while copying."

    invoke-direct {v4, v5, v2, v3, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v4
.end method
