.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FromNetASCIIOutputStream.java"


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 54
    return-void
.end method

.method private __write(I)V
    .registers 5
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1a

    .line 76
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_14

    .line 78
    iget-object v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 79
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 81
    :cond_14
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_34

    .line 62
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 64
    goto :goto_34

    .line 66
    :cond_1e
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_2c

    .line 68
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 69
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 70
    goto :goto_34

    .line 72
    :cond_2c
    iput-boolean v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    .line 73
    iget-object v1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 74
    nop

    .line 84
    :goto_34
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_a

    .line 166
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 167
    monitor-exit p0

    return-void

    .line 170
    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_15

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 172
    :cond_15
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    .line 173
    monitor-exit p0

    return-void

    .line 163
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    .line 106
    monitor-exit p0

    return-void

    .line 109
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    .line 110
    monitor-exit p0

    return-void

    .line 102
    .end local p1    # "ch":I
    :catchall_11
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

    .line 124
    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 125
    monitor-exit p0

    return-void

    .line 123
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

    .line 142
    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_c

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    .line 147
    monitor-exit p0

    return-void

    .line 150
    :cond_c
    :goto_c
    add-int/lit8 v0, p3, -0x1

    .local v0, "length":I
    if-lez p3, :cond_1a

    .line 151
    .end local p3    # "length":I
    add-int/lit8 p3, p2, 0x1

    .local p3, "offset":I
    :try_start_12
    aget-byte p2, p1, p2

    .end local p2    # "offset":I
    invoke-direct {p0, p2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 150
    move p2, p3

    move p3, v0

    goto :goto_c

    .line 152
    .end local p3    # "offset":I
    .restart local p2    # "offset":I
    :cond_1a
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "length":I
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
