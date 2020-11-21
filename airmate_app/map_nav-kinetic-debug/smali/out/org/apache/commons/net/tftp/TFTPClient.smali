.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 76
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 77
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .registers 2

    .line 105
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .registers 29
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v0, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 132
    .local v4, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v3, v6}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 134
    .local v5, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 136
    move v7, v6

    .local v7, "bytesRead":I
    move v8, v6

    .local v8, "hostPort":I
    move v9, v6

    .local v9, "lastBlock":I
    move v10, v6

    .line 137
    .local v10, "dataLength":I
    const/4 v11, 0x1

    .line 139
    .local v11, "block":I
    if-nez v2, :cond_21

    .line 140
    new-instance v12, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v13, p3

    invoke-direct {v12, v13}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_24

    .line 142
    :cond_21
    move-object/from16 v13, p3

    move-object v12, v13

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v12, "output":Ljava/io/OutputStream;
    :goto_24
    new-instance v13, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v14, p1

    invoke-direct {v13, v0, v3, v14, v2}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    const/4 v15, 0x0

    move/from16 v16, v10

    move v10, v8

    move v8, v7

    move-object v7, v15

    .line 148
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v0, "host":Ljava/net/InetAddress;
    .local v7, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v8, "bytesRead":I
    .local v10, "hostPort":I
    .local v13, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v15, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v16, "dataLength":I
    :goto_31
    invoke-virtual {v1, v13}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 153
    move/from16 v17, v16

    move/from16 v16, v10

    move v10, v9

    move-object v9, v7

    move-object v7, v4

    move-object v4, v0

    .end local v0    # "host":Ljava/net/InetAddress;
    .local v4, "host":Ljava/net/InetAddress;
    .local v7, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v9, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .local v10, "lastBlock":I
    .local v16, "hostPort":I
    .local v17, "dataLength":I
    :goto_3c
    const/4 v0, 0x0

    .local v0, "timeouts":I
    :goto_3d
    move/from16 v18, v0

    .line 154
    .end local v0    # "timeouts":I
    .local v18, "timeouts":I
    iget v0, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v6, v18

    .end local v18    # "timeouts":I
    .local v6, "timeouts":I
    if-ge v6, v0, :cond_9c

    .line 158
    :try_start_45
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0
    :try_end_49
    .catch Ljava/net/SocketException; {:try_start_45 .. :try_end_49} :catch_82
    .catch Ljava/io/InterruptedIOException; {:try_start_45 .. :try_end_49} :catch_6d
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_45 .. :try_end_49} :catch_4c

    .line 159
    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    nop

    .line 188
    move-object v7, v0

    goto :goto_9c

    .line 179
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_4c
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 181
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 182
    new-instance v9, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad packet: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 170
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .restart local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_6d
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 172
    .local v0, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "timeouts":I
    .local v2, "timeouts":I
    iget v6, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v2, v6, :cond_77

    .line 177
    goto :goto_8c

    .line 174
    .end local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 175
    new-instance v6, Ljava/io/IOException;

    const-string v9, "Connection timed out."

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v2    # "timeouts":I
    .restart local v6    # "timeouts":I
    .restart local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_82
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 163
    .local v0, "e":Ljava/net/SocketException;
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "timeouts":I
    .restart local v2    # "timeouts":I
    iget v6, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v2, v6, :cond_91

    .line 168
    nop

    .line 153
    .end local v2    # "timeouts":I
    .local v0, "timeouts":I
    :goto_8c
    move v0, v2

    move/from16 v2, p2

    const/4 v6, 0x0

    goto :goto_3d

    .line 165
    .end local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v2    # "timeouts":I
    :cond_91
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 166
    new-instance v6, Ljava/io/IOException;

    const-string v9, "Connection timed out."

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v2    # "timeouts":I
    .restart local v6    # "timeouts":I
    .restart local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_9c
    :goto_9c
    if-nez v10, :cond_bc

    .line 190
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v0

    .line 191
    .end local v16    # "hostPort":I
    .local v0, "hostPort":I
    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 192
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 194
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 195
    .end local v4    # "host":Ljava/net/InetAddress;
    .local v2, "host":Ljava/net/InetAddress;
    invoke-virtual {v5, v2}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 196
    invoke-virtual {v13, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 202
    move-object v4, v2

    .end local v0    # "hostPort":I
    .local v2, "hostPort":I
    .restart local v4    # "host":Ljava/net/InetAddress;
    :cond_ba
    move v2, v0

    goto :goto_be

    .end local v2    # "hostPort":I
    .restart local v16    # "hostPort":I
    :cond_bc
    move/from16 v2, v16

    .end local v16    # "hostPort":I
    .restart local v2    # "hostPort":I
    :goto_be
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_177

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v0

    if-ne v0, v2, :cond_177

    .line 206
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0

    move/from16 v19, v6

    .end local v6    # "timeouts":I
    .local v19, "timeouts":I
    const/4 v6, 0x3

    if-eq v0, v6, :cond_112

    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    if-eq v0, v3, :cond_e5

    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 257
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Received unexpected packet type."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    .end local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :cond_e5
    move-object v0, v7

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 210
    .local v0, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 211
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error code "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    .end local v0    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_112
    move-object v9, v7

    check-cast v9, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 215
    .restart local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v3

    .line 217
    .end local v17    # "dataLength":I
    .local v3, "dataLength":I
    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v10

    .line 219
    if-ne v10, v11, :cond_153

    .line 223
    :try_start_11f
    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v6

    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v0

    invoke-virtual {v12, v6, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_12a} :catch_13e

    .line 234
    nop

    .line 235
    add-int/lit8 v11, v11, 0x1

    .line 236
    const v0, 0xffff

    if-le v11, v0, :cond_133

    .line 239
    const/4 v11, 0x0

    .line 275
    :cond_133
    invoke-virtual {v5, v10}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    .line 276
    move-object v0, v5

    .line 277
    .end local v13    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    add-int/2addr v8, v3

    .line 280
    move-object v13, v0

    move-object/from16 v21, v5

    move-object v0, v9

    move v9, v10

    goto :goto_193

    .line 226
    .end local v0    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v13    # "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_13e
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    move/from16 v20, v3

    .end local v3    # "dataLength":I
    .local v20, "dataLength":I
    const-string v3, "File write failed."

    move-object/from16 v21, v5

    const/4 v5, 0x3

    .end local v5    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .local v21, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-direct {v6, v4, v2, v5, v3}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    move-object v3, v6

    .line 231
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v3, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 233
    throw v0

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    .end local v20    # "dataLength":I
    .end local v21    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .local v3, "dataLength":I
    .restart local v5    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v9    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_153
    move/from16 v20, v3

    move-object/from16 v21, v5

    const v0, 0xffff

    .end local v3    # "dataLength":I
    .end local v5    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v20    # "dataLength":I
    .restart local v21    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 248
    if-nez v11, :cond_160

    goto :goto_162

    :cond_160
    add-int/lit8 v0, v11, -0x1

    :goto_162
    if-ne v10, v0, :cond_16a

    .line 249
    nop

    .line 280
    move-object v0, v9

    move v9, v10

    move/from16 v3, v20

    goto :goto_193

    .line 153
    .end local v19    # "timeouts":I
    :cond_16a
    move/from16 v16, v2

    move/from16 v17, v20

    move-object/from16 v5, v21

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v6, 0x0

    goto/16 :goto_3c

    .line 262
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v20    # "dataLength":I
    .end local v21    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v5    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v6    # "timeouts":I
    .restart local v17    # "dataLength":I
    :cond_177
    move-object/from16 v21, v5

    move/from16 v19, v6

    .end local v5    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v6    # "timeouts":I
    .restart local v19    # "timeouts":I
    .restart local v21    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v6

    const-string v15, "Unexpected host or port."

    invoke-direct {v0, v5, v6, v3, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 266
    .local v0, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 267
    nop

    .line 280
    move-object v15, v0

    move-object v0, v9

    move v9, v10

    move/from16 v3, v17

    .end local v10    # "lastBlock":I
    .end local v17    # "dataLength":I
    .local v0, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v3    # "dataLength":I
    .local v9, "lastBlock":I
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_193
    const/16 v5, 0x200

    if-eq v3, v5, :cond_19e

    .line 282
    .end local v0    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .end local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v13}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 285
    return v8

    .line 142
    .end local v19    # "timeouts":I
    .restart local v0    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    .restart local v15    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_19e
    move v10, v2

    move/from16 v16, v3

    move-object/from16 v5, v21

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v6, 0x0

    move-object/from16 v22, v7

    move-object v7, v0

    move-object v0, v4

    move-object/from16 v4, v22

    goto/16 :goto_31
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 609
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 571
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 590
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .registers 33
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 374
    .local v0, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    iget-object v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 378
    .local v3, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    const/4 v4, 0x1

    .line 380
    .local v4, "justStarted":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 382
    const/4 v5, 0x0

    move v6, v5

    .local v6, "totalThisPacket":I
    move v7, v5

    .local v7, "bytesRead":I
    move v8, v5

    .local v8, "hostPort":I
    move v9, v5

    .local v9, "lastBlock":I
    move v10, v5

    .line 383
    .local v10, "dataLength":I
    const/4 v11, 0x0

    .line 384
    .local v11, "block":I
    const/4 v12, 0x0

    .line 386
    .local v12, "lastAckWait":Z
    if-nez v2, :cond_2a

    .line 387
    new-instance v13, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v14, p3

    invoke-direct {v13, v14}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2d

    .line 389
    :cond_2a
    move-object/from16 v14, p3

    move-object v13, v14

    .end local p3    # "input":Ljava/io/InputStream;
    .local v13, "input":Ljava/io/InputStream;
    :goto_2d
    new-instance v14, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v15, p1

    move-object/from16 v5, p4

    move/from16 v16, v4

    move/from16 v4, p5

    .end local v4    # "justStarted":Z
    .local v16, "justStarted":Z
    invoke-direct {v14, v5, v4, v15, v2}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    const/16 v17, 0x0

    move v2, v11

    move v11, v9

    move v9, v7

    move-object/from16 v7, v17

    .line 397
    .end local p4    # "host":Ljava/net/InetAddress;
    .local v2, "block":I
    .local v5, "host":Ljava/net/InetAddress;
    .local v7, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .local v9, "bytesRead":I
    .local v11, "lastBlock":I
    .local v14, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v17, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_41
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 405
    move/from16 v18, v11

    move-object v11, v7

    move-object v7, v0

    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v7, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v11, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .local v18, "lastBlock":I
    :goto_48
    const/4 v0, 0x0

    .local v0, "timeouts":I
    :goto_49
    move/from16 v19, v0

    .line 406
    .end local v0    # "timeouts":I
    .local v19, "timeouts":I
    iget v0, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v4, v19

    .end local v19    # "timeouts":I
    .local v4, "timeouts":I
    if-ge v4, v0, :cond_ba

    .line 410
    :try_start_51
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v0
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_51 .. :try_end_55} :catch_99
    .catch Ljava/io/InterruptedIOException; {:try_start_51 .. :try_end_55} :catch_80
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_51 .. :try_end_55} :catch_5b

    .line 411
    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    nop

    .line 440
    move-object v7, v0

    move/from16 v20, v6

    goto/16 :goto_be

    .line 431
    .end local v0    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :catch_5b
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 433
    .local v0, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 434
    new-instance v11, Ljava/io/IOException;

    move/from16 v20, v6

    .end local v6    # "totalThisPacket":I
    .local v20, "totalThisPacket":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v21, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    const-string v7, "Bad packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 422
    .end local v0    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    .end local v20    # "totalThisPacket":I
    .end local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "totalThisPacket":I
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_80
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v6, v0

    .end local v6    # "totalThisPacket":I
    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v20    # "totalThisPacket":I
    .restart local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object v0, v6

    .line 424
    .local v0, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v4, v4, 0x1

    iget v6, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v4, v6, :cond_8e

    .line 429
    goto :goto_a7

    .line 426
    .end local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_8e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 427
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 413
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v20    # "totalThisPacket":I
    .end local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "totalThisPacket":I
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :catch_99
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v6, v0

    .end local v6    # "totalThisPacket":I
    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v20    # "totalThisPacket":I
    .restart local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    move-object v0, v6

    .line 415
    .local v0, "e":Ljava/net/SocketException;
    add-int/lit8 v4, v4, 0x1

    iget v6, v1, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    if-ge v4, v6, :cond_af

    .line 420
    nop

    .line 405
    .end local v4    # "timeouts":I
    .end local v20    # "totalThisPacket":I
    .end local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .local v0, "timeouts":I
    .restart local v6    # "totalThisPacket":I
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_a7
    move v0, v4

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v4, p5

    goto :goto_49

    .line 417
    .end local v6    # "totalThisPacket":I
    .end local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .end local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v0, "e":Ljava/net/SocketException;
    .restart local v4    # "timeouts":I
    .restart local v20    # "totalThisPacket":I
    .restart local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_af
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 418
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 440
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v20    # "totalThisPacket":I
    .end local v21    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v6    # "totalThisPacket":I
    .restart local v7    # "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    .restart local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_ba
    move/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "totalThisPacket":I
    .restart local v20    # "totalThisPacket":I
    :goto_be
    if-eqz v16, :cond_df

    .line 442
    const/4 v0, 0x0

    .line 443
    .end local v16    # "justStarted":Z
    .local v0, "justStarted":Z
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v6

    .line 444
    .end local v8    # "hostPort":I
    .local v6, "hostPort":I
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 445
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_dc

    .line 447
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 448
    invoke-virtual {v3, v5}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 449
    invoke-virtual {v14, v5}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 455
    .end local v0    # "justStarted":Z
    .end local v6    # "hostPort":I
    .restart local v8    # "hostPort":I
    .restart local v16    # "justStarted":Z
    :cond_dc
    move/from16 v16, v0

    move v8, v6

    :cond_df
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v0

    if-ne v0, v8, :cond_19e

    .line 459
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1d6

    .line 499
    move/from16 v22, v4

    move-object/from16 v23, v5

    .end local v4    # "timeouts":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .local v22, "timeouts":I
    .local v23, "host":Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 500
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Received unexpected packet type."

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    .end local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v22    # "timeouts":I
    .end local v23    # "host":Ljava/net/InetAddress;
    .restart local v4    # "timeouts":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    :pswitch_105
    move-object v0, v7

    check-cast v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 463
    .local v0, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 464
    new-instance v6, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v4

    .end local v4    # "timeouts":I
    .restart local v22    # "timeouts":I
    const-string v4, "Error code "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " received: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 467
    .end local v0    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .end local v22    # "timeouts":I
    .restart local v4    # "timeouts":I
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_134
    move/from16 v22, v4

    .end local v4    # "timeouts":I
    .restart local v22    # "timeouts":I
    move-object v11, v7

    check-cast v11, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 469
    .restart local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual {v11}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v0

    .line 471
    .end local v18    # "lastBlock":I
    .local v0, "lastBlock":I
    const v4, 0xffff

    if-ne v0, v2, :cond_17f

    .line 473
    add-int/lit8 v2, v2, 0x1

    .line 474
    if-le v2, v4, :cond_147

    .line 477
    const/4 v2, 0x0

    .line 479
    :cond_147
    if-eqz v12, :cond_14f

    .line 481
    nop

    .line 545
    move v11, v0

    move-object/from16 v23, v5

    goto/16 :goto_1c7

    .line 521
    :cond_14f
    const/16 v4, 0x200

    .line 522
    .end local v10    # "dataLength":I
    .local v4, "dataLength":I
    const/4 v6, 0x4

    .line 523
    .local v6, "offset":I
    const/4 v10, 0x0

    .line 525
    .end local v20    # "totalThisPacket":I
    .local v10, "totalThisPacket":I
    :goto_153
    if-lez v4, :cond_166

    move-object/from16 v23, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local v23    # "host":Ljava/net/InetAddress;
    iget-object v5, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    invoke-virtual {v13, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v9, v5

    if-lez v5, :cond_168

    .line 527
    add-int/2addr v6, v9

    .line 528
    sub-int/2addr v4, v9

    .line 529
    add-int/2addr v10, v9

    .line 525
    move-object/from16 v5, v23

    goto :goto_153

    .line 532
    .end local v23    # "host":Ljava/net/InetAddress;
    .restart local v5    # "host":Ljava/net/InetAddress;
    :cond_166
    move-object/from16 v23, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local v23    # "host":Ljava/net/InetAddress;
    :cond_168
    const/16 v5, 0x200

    if-ge v10, v5, :cond_16d

    .line 534
    const/4 v12, 0x1

    .line 536
    :cond_16d
    invoke-virtual {v3, v2}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 537
    iget-object v5, v1, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move/from16 v24, v2

    .end local v2    # "block":I
    .local v24, "block":I
    const/4 v2, 0x4

    invoke-virtual {v3, v5, v2, v10}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    .line 538
    move-object v2, v3

    .line 540
    move-object v14, v2

    move v6, v10

    move/from16 v2, v24

    move v10, v4

    goto :goto_18e

    .line 489
    .end local v4    # "dataLength":I
    .end local v6    # "offset":I
    .end local v11    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v23    # "host":Ljava/net/InetAddress;
    .end local v24    # "block":I
    .restart local v2    # "block":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .local v10, "dataLength":I
    .restart local v20    # "totalThisPacket":I
    :cond_17f
    move-object/from16 v23, v5

    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local v23    # "host":Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 491
    if-nez v2, :cond_187

    goto :goto_189

    :cond_187
    add-int/lit8 v4, v2, -0x1

    :goto_189
    if-ne v0, v4, :cond_194

    .line 492
    nop

    .line 540
    move/from16 v6, v20

    .end local v20    # "totalThisPacket":I
    .local v0, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .local v6, "totalThisPacket":I
    .local v11, "lastBlock":I
    :goto_18e
    move-object/from16 v26, v11

    move v11, v0

    move-object/from16 v0, v26

    goto :goto_1c1

    .line 405
    .end local v6    # "totalThisPacket":I
    .end local v11    # "lastBlock":I
    .end local v22    # "timeouts":I
    .local v0, "lastBlock":I
    .restart local v20    # "totalThisPacket":I
    :cond_194
    move/from16 v18, v0

    move/from16 v6, v20

    move-object/from16 v5, v23

    move/from16 v4, p5

    goto/16 :goto_48

    .line 505
    .end local v0    # "lastBlock":I
    .end local v23    # "host":Ljava/net/InetAddress;
    .local v4, "timeouts":I
    .restart local v5    # "host":Ljava/net/InetAddress;
    .local v11, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v18    # "lastBlock":I
    :cond_19e
    move/from16 v22, v4

    move-object/from16 v23, v5

    .end local v4    # "timeouts":I
    .end local v5    # "host":Ljava/net/InetAddress;
    .restart local v22    # "timeouts":I
    .restart local v23    # "host":Ljava/net/InetAddress;
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v5

    const/4 v6, 0x5

    move/from16 v25, v2

    .end local v2    # "block":I
    .local v25, "block":I
    const-string v2, "Unexpected host or port."

    invoke-direct {v0, v4, v5, v6, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 509
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .local v0, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 510
    nop

    .line 540
    move-object/from16 v17, v0

    move-object v0, v11

    move/from16 v11, v18

    move/from16 v6, v20

    move/from16 v2, v25

    .end local v18    # "lastBlock":I
    .end local v20    # "totalThisPacket":I
    .end local v25    # "block":I
    .local v0, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v2    # "block":I
    .restart local v6    # "totalThisPacket":I
    .local v11, "lastBlock":I
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :goto_1c1
    if-gtz v6, :cond_1cb

    if-nez v12, :cond_1cb

    .line 545
    .end local v0    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move/from16 v20, v6

    .end local v6    # "totalThisPacket":I
    .restart local v20    # "totalThisPacket":I
    :goto_1c7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 546
    return-void

    .line 389
    .end local v20    # "totalThisPacket":I
    .end local v22    # "timeouts":I
    .restart local v0    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    .restart local v6    # "totalThisPacket":I
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_1cb
    move-object/from16 v5, v23

    move/from16 v4, p5

    move-object/from16 v26, v7

    move-object v7, v0

    move-object/from16 v0, v26

    goto/16 :goto_41

    :pswitch_data_1d6
    .packed-switch 0x4
        :pswitch_134
        :pswitch_105
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .registers 3
    .param p1, "numTimeouts"    # I

    .line 91
    const/4 v0, 0x1

    if-ge p1, v0, :cond_6

    .line 92
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_8

    .line 94
    :cond_6
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 95
    :goto_8
    return-void
.end method
