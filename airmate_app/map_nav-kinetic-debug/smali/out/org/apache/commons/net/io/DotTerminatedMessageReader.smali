.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/Reader;
.source "DotTerminatedMessageReader.java"


# static fields
.field private static final LS:Ljava/lang/String;

.field private static final LS_CHARS:[C


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private internalBuffer:[C

.field private internalReader:Ljava/io/PushbackReader;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS_CHARS:[C

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;

    .line 63
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS_CHARS:[C

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    .line 65
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 69
    new-instance v0, Ljava/io/PushbackReader;

    invoke-direct {v0, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    .line 70
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    if-nez v1, :cond_9

    .line 264
    monitor-exit v0

    return-void

    .line 267
    :cond_9
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-nez v1, :cond_15

    .line 269
    :goto_d
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    goto :goto_d

    .line 274
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 275
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 276
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    array-length v1, v1

    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    const/4 v1, 0x0

    :try_start_4
    iget v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    array-length v3, v3

    if-ge v2, v3, :cond_17

    .line 93
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    aget-char v2, v2, v3

    monitor-exit v0

    return v2

    .line 96
    :cond_17
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1e

    .line 98
    monitor-exit v0

    return v3

    .line 101
    :cond_1e
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v2}, Ljava/io/PushbackReader;->read()I

    move-result v2
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_ba

    move v4, v2

    .local v4, "ch":I
    const/4 v5, 0x1

    if-ne v2, v3, :cond_30

    .line 103
    :try_start_28
    iput-boolean v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 104
    monitor-exit v0

    return v3

    .line 169
    :catchall_2c
    move-exception v2

    move v1, v4

    goto/16 :goto_bb

    .line 107
    :cond_30
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/16 v6, 0x2e

    if-eqz v2, :cond_4d

    .line 109
    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 110
    if-ne v4, v6, :cond_4d

    .line 112
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v1}, Ljava/io/PushbackReader;->read()I

    move-result v1
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_2c

    .line 114
    .end local v4    # "ch":I
    .local v1, "ch":I
    if-eq v1, v6, :cond_4b

    .line 117
    :try_start_42
    iput-boolean v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 118
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v2}, Ljava/io/PushbackReader;->read()I

    .line 119
    monitor-exit v0

    return v3

    .line 123
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_ba

    return v6

    .line 128
    .end local v1    # "ch":I
    .restart local v4    # "ch":I
    :cond_4d
    const/16 v2, 0xd

    if-ne v4, v2, :cond_b7

    .line 130
    :try_start_51
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v3}, Ljava/io/PushbackReader;->read()I

    move-result v3
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_2c

    .line 132
    .end local v4    # "ch":I
    .local v3, "ch":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_ab

    .line 134
    :try_start_5b
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v2}, Ljava/io/PushbackReader;->read()I

    move-result v2
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_a8

    .line 136
    .end local v3    # "ch":I
    .local v2, "ch":I
    if-ne v2, v6, :cond_84

    .line 138
    :try_start_63
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v3}, Ljava/io/PushbackReader;->read()I

    move-result v3

    move v2, v3

    .line 140
    if-eq v2, v6, :cond_74

    .line 143
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v3}, Ljava/io/PushbackReader;->read()I

    .line 144
    iput-boolean v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    goto :goto_89

    .line 148
    :cond_74
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    iget v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    int-to-char v5, v2

    aput-char v5, v3, v4

    goto :goto_89

    .line 169
    :catchall_7f
    move-exception v1

    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_bb

    .line 153
    :cond_84
    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v3, v2}, Ljava/io/PushbackReader;->unread(I)V

    .line 156
    :goto_89
    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    sget-object v4, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS_CHARS:[C

    array-length v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    .line 157
    sget-object v3, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS_CHARS:[C

    iget-object v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    iget v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    sget-object v6, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->LS_CHARS:[C

    array-length v6, v6

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    aget-char v1, v1, v3
    :try_end_a7
    .catchall {:try_start_63 .. :try_end_a7} :catchall_7f

    goto :goto_b8

    .line 169
    .end local v2    # "ch":I
    .restart local v3    # "ch":I
    :catchall_a8
    move-exception v2

    move v1, v3

    goto :goto_bb

    .line 163
    :cond_ab
    :try_start_ab
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    iget v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    int-to-char v5, v3

    aput-char v5, v1, v4

    .line 164
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_ab .. :try_end_b6} :catchall_a8

    return v2

    .line 168
    .end local v3    # "ch":I
    .restart local v4    # "ch":I
    :cond_b7
    move v1, v4

    .end local v4    # "ch":I
    .restart local v1    # "ch":I
    :goto_b8
    :try_start_b8
    monitor-exit v0

    return v1

    .line 169
    .end local v1    # "ch":I
    :catchall_ba
    move-exception v2

    .restart local v1    # "ch":I
    :goto_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_ba

    throw v2
.end method

.method public read([C)I
    .registers 4
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 11
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p3, v1, :cond_f

    .line 210
    :try_start_7
    monitor-exit v0

    return v2

    .line 225
    :catchall_9
    move-exception v1

    .end local p3    # "length":I
    .local v1, "length":I
    .local v2, "ch":I
    .local v3, "off":I
    :goto_a
    const/4 v3, 0x0

    move-object v6, v1

    move v1, p3

    move-object p3, v6

    goto :goto_3a

    .line 212
    .end local v1    # "length":I
    .end local v2    # "ch":I
    .end local v3    # "off":I
    .restart local p3    # "length":I
    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_9

    move v3, v1

    .local v3, "ch":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1c

    .line 214
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_19

    return v4

    .line 225
    :catchall_19
    move-exception v1

    move v2, v3

    goto :goto_a

    .line 216
    :cond_1c
    move v1, p3

    move v2, v3

    move p3, p2

    .line 220
    .end local v3    # "ch":I
    .restart local v1    # "length":I
    .restart local v2    # "ch":I
    .local p2, "off":I
    .local p3, "offset":I
    :goto_1f
    add-int/lit8 v3, p3, 0x1

    .local v3, "offset":I
    int-to-char v5, v2

    :try_start_22
    aput-char v5, p1, p3

    .line 222
    .end local p3    # "offset":I
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_32

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result p3

    move v2, p3

    if-ne p3, v4, :cond_30

    goto :goto_32

    .line 216
    :cond_30
    move p3, v3

    goto :goto_1f

    .line 224
    :cond_32
    :goto_32
    sub-int p3, v3, p2

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_36

    return p3

    .line 225
    :catchall_36
    move-exception p3

    move v6, v3

    move v3, p2

    move p2, v6

    .local v3, "off":I
    .local p2, "offset":I
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    throw p3

    :catchall_3c
    move-exception p3

    goto :goto_3a
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_3
    iget v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->pos:I

    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalBuffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_15

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->internalReader:Ljava/io/PushbackReader;

    invoke-virtual {v1}, Ljava/io/PushbackReader;->ready()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    monitor-exit v0

    return v1

    .line 240
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
