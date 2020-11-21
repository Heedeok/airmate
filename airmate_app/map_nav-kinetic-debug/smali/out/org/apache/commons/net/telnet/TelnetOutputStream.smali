.class final Lorg/apache/commons/net/telnet/TelnetOutputStream;
.super Ljava/io/OutputStream;
.source "TelnetOutputStream.java"


# instance fields
.field private __client:Lorg/apache/commons/net/telnet/TelnetClient;

.field private __convertCRtoCRLF:Z

.field private __lastWasCR:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/net/telnet/TelnetClient;)V
    .registers 3
    .param p1, "client"    # Lorg/apache/commons/net/telnet/TelnetClient;

    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 41
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_closeOutputStream()V

    .line 151
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetClient;->_flushOutputStream()V

    .line 144
    return-void
.end method

.method public write(I)V
    .registers 7
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    .line 58
    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 60
    :try_start_6
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 62
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    if-eqz v2, :cond_2b

    .line 64
    iget-boolean v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__convertCRtoCRLF:Z

    const/16 v4, 0xa

    if-eqz v2, :cond_24

    .line 66
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 67
    if-ne p1, v4, :cond_2b

    .line 69
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 70
    monitor-exit v0

    return-void

    .line 73
    :cond_24
    if-eq p1, v4, :cond_2b

    .line 74
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 77
    :cond_2b
    iput-boolean v3, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 79
    const/16 v2, 0xd

    if-eq p1, v2, :cond_44

    if-eq p1, v1, :cond_39

    .line 90
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 91
    goto :goto_5f

    .line 86
    :cond_39
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 87
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 88
    goto :goto_5f

    .line 82
    :cond_44
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__lastWasCR:Z

    .line 84
    goto :goto_5f

    .line 94
    :cond_4d
    if-ne p1, v1, :cond_5a

    .line 96
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 97
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    goto :goto_5f

    .line 100
    :cond_5a
    iget-object v1, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/telnet/TelnetClient;->_sendByte(I)V

    .line 101
    :goto_5f
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public write([B)V
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write([BII)V

    .line 116
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TelnetOutputStream;->__client:Lorg/apache/commons/net/telnet/TelnetClient;

    monitor-enter v0

    .line 134
    :goto_3
    add-int/lit8 v1, p3, -0x1

    .local v1, "length":I
    if-lez p3, :cond_13

    .line 135
    .end local p3    # "length":I
    add-int/lit8 p3, p2, 0x1

    .local p3, "offset":I
    :try_start_9
    aget-byte p2, p1, p2

    .end local p2    # "offset":I
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/telnet/TelnetOutputStream;->write(I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    .line 134
    move p2, p3

    move p3, v1

    goto :goto_3

    .line 136
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

    .line 137
    return-void

    .line 136
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
