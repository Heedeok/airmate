.class public final Lorg/apache/commons/net/tftp/TFTPDataPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPDataPacket.java"


# static fields
.field public static final MAX_DATA_LENGTH:I = 0x200

.field public static final MIN_DATA_LENGTH:I


# instance fields
.field _blockNumber:I

.field _data:[B

.field _length:I

.field _offset:I


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .registers 7
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 115
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    .line 116
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getType()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    if-ne v1, v3, :cond_42

    .line 121
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    .line 123
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    .line 125
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    const/16 v1, 0x200

    if-le v0, v1, :cond_41

    .line 126
    iput v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    .line 127
    :cond_41
    return-void

    .line 119
    :cond_42
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v1, "TFTP operator code does not match type."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[B)V
    .registers 12
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I
    .param p4, "data"    # [B

    .line 98
    array-length v6, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II[BII)V
    .registers 8
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "blockNumber"    # I
    .param p4, "data"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I

    .line 83
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 85
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    .line 86
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    .line 87
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    .line 89
    const/16 v0, 0x200

    if-le p6, v0, :cond_11

    .line 90
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    goto :goto_13

    .line 92
    :cond_11
    iput p6, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    .line 93
    :goto_13
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .registers 7
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 143
    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 144
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_type:I

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 145
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    const v1, 0xffff

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 146
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 149
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2b

    .line 150
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_2b
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 153
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_port:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 154
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 155
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 157
    return-object p1
.end method

.method public getBlockNumber()I
    .registers 2

    .line 195
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    return v0
.end method

.method public getData()[B
    .registers 2

    .line 252
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    return-object v0
.end method

.method public getDataLength()I
    .registers 2

    .line 230
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    return v0
.end method

.method public getDataOffset()I
    .registers 2

    .line 242
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    return v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .registers 6

    .line 177
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 178
    .local v0, "data":[B
    const/4 v2, 0x0

    aput-byte v2, v0, v2

    .line 179
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 180
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 181
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 183
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    new-instance v2, Ljava/net/DatagramPacket;

    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_port:I

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method

.method public setBlockNumber(I)V
    .registers 2
    .param p1, "blockNumber"    # I

    .line 201
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_blockNumber:I

    .line 202
    return-void
.end method

.method public setData([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 213
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_data:[B

    .line 214
    iput p2, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_offset:I

    .line 215
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    .line 217
    const/16 v0, 0x200

    if-le p3, v0, :cond_d

    .line 218
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    goto :goto_f

    .line 220
    :cond_d
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPDataPacket;->_length:I

    .line 221
    :goto_f
    return-void
.end method
