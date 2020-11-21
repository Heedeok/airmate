.class public final Lorg/apache/commons/net/tftp/TFTPErrorPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPErrorPacket.java"


# static fields
.field public static final ACCESS_VIOLATION:I = 0x2

.field public static final FILE_EXISTS:I = 0x6

.field public static final FILE_NOT_FOUND:I = 0x1

.field public static final ILLEGAL_OPERATION:I = 0x4

.field public static final NO_SUCH_USER:I = 0x7

.field public static final OUT_OF_SPACE:I = 0x3

.field public static final UNDEFINED:I = 0x0

.field public static final UNKNOWN_TID:I = 0x5


# instance fields
.field _error:I

.field _message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/DatagramPacket;)V
    .registers 7
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 113
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 114
    .local v0, "data":[B
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 116
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getType()I

    move-result v3

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    if-ne v3, v4, :cond_52

    .line 119
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    .line 121
    if-lt v1, v2, :cond_4a

    .line 124
    const/4 v2, 0x4

    .line 125
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v3, "buffer":Ljava/lang/StringBuffer;
    :goto_34
    if-ge v2, v1, :cond_43

    aget-byte v4, v0, v2

    if-eqz v4, :cond_43

    .line 129
    aget-byte v4, v0, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 133
    :cond_43
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    .line 134
    return-void

    .line 122
    .end local v2    # "index":I
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :cond_4a
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad error packet. No message."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_52
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "TFTP operator code does not match type."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;)V
    .registers 6
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "error"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 93
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    .line 94
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .registers 7
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 152
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 154
    .local v0, "length":I
    const/4 v1, 0x0

    aput-byte v1, p2, v1

    .line 155
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_type:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p2, v3

    .line 156
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    const v3, 0xffff

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p2, v3

    .line 157
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, p2, v3

    .line 159
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    add-int/lit8 v2, v0, 0x4

    aput-byte v1, p2, v2

    .line 163
    iget-object v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 164
    iget v1, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 165
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 166
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 168
    return-object p1
.end method

.method public getError()I
    .registers 2

    .line 213
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    return-object v0
.end method

.method public newDatagram()Ljava/net/DatagramPacket;
    .registers 7

    .line 190
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    .line 193
    .local v1, "data":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 194
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_type:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    .line 195
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    const v4, 0xffff

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    .line 196
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_error:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    .line 198
    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v3, v0, 0x4

    aput-byte v2, v1, v3

    .line 202
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_address:Ljava/net/InetAddress;

    iget v5, p0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->_port:I

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v2
.end method
