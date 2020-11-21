.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;
.source "DotTerminatedMessageWriter.java"


# static fields
.field private static final __LAST_WAS_CR_STATE:I = 0x1

.field private static final __LAST_WAS_NL_STATE:I = 0x2

.field private static final __NOTHING_SPECIAL_STATE:I


# instance fields
.field private __output:Ljava/io/Writer;

.field private __state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "output"    # Ljava/io/Writer;

    .line 58
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 61
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

    .line 198
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    if-nez v1, :cond_9

    .line 201
    monitor-exit v0

    return-void

    .line 203
    :cond_9
    iget v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 204
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_22

    .line 205
    :cond_16
    iget v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    .line 206
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 208
    :cond_22
    :goto_22
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public write(I)V
    .registers 8
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eq p1, v3, :cond_30

    if-eq p1, v4, :cond_27

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_12

    goto :goto_1b

    .line 94
    :cond_12
    :try_start_12
    iget v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-ne v3, v1, :cond_1b

    .line 95
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 98
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 99
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 100
    monitor-exit v0

    return-void

    .line 102
    :catchall_25
    move-exception v1

    goto :goto_42

    .line 83
    :cond_27
    iput v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 84
    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(I)V

    .line 85
    monitor-exit v0

    return-void

    .line 87
    :cond_30
    iget v5, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-eq v5, v2, :cond_39

    .line 88
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(I)V

    .line 89
    :cond_39
    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 90
    iput v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    .line 91
    monitor-exit v0

    return-void

    .line 102
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_25

    throw v1
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    .line 152
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    .line 168
    return-void
.end method

.method public write([C)V
    .registers 4
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    .line 138
    return-void
.end method

.method public write([CII)V
    .registers 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :goto_3
    add-int/lit8 v1, p3, -0x1

    .local v1, "length":I
    if-lez p3, :cond_13

    .line 122
    .end local p3    # "length":I
    add-int/lit8 p3, p2, 0x1

    .local p3, "offset":I
    :try_start_9
    aget-char p2, p1, p2

    .end local p2    # "offset":I
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    .line 121
    move p2, p3

    move p3, v1

    goto :goto_3

    .line 123
    :catchall_11
    move-exception p2

    goto :goto_19

    .end local p3    # "offset":I
    .restart local p2    # "offset":I
    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    .line 124
    return-void

    .line 123
    :catchall_15
    move-exception p3

    move-object v2, p3

    move p3, p2

    move-object p2, v2

    .end local p2    # "offset":I
    .restart local p3    # "offset":I
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_11

    throw p2
.end method
