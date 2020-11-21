.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ToNetASCIIOutputStream.java"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .registers 4
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    const/16 v0, 0xa

    const/16 v1, 0xd

    if-eq p1, v0, :cond_14

    if-eq p1, v1, :cond_a

    goto :goto_1d

    .line 71
    :cond_a
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 72
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_27

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_14
    :try_start_14
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    if-nez v0, :cond_1d

    .line 76
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 79
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_27

    .line 81
    monitor-exit p0

    return-void

    .line 67
    .end local p1    # "ch":I
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 98
    monitor-exit p0

    return-void

    .line 96
    .end local p1    # "buffer":[B
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    :goto_1
    add-int/lit8 v0, p3, -0x1

    .local v0, "length":I
    if-lez p3, :cond_12

    .line 116
    .end local p3    # "length":I
    add-int/lit8 p3, p2, 0x1

    .local p3, "offset":I
    :try_start_7
    aget-byte p2, p1, p2

    .end local p2    # "offset":I
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    .line 115
    move p2, p3

    move p3, v0

    goto :goto_1

    .line 114
    .end local v0    # "length":I
    .end local p1    # "buffer":[B
    .end local p3    # "offset":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 117
    .restart local v0    # "length":I
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    :cond_12
    monitor-exit p0

    return-void
.end method
