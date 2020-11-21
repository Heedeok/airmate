.class public abstract Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPPacket;
.source "TFTPRequestPacket.java"


# static fields
.field static final _modeBytes:[[B

.field static final _modeStrings:[Ljava/lang/String;


# instance fields
.field _filename:Ljava/lang/String;

.field _mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 57
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "netascii"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "octet"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    .line 64
    new-array v0, v0, [[B

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_26

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_30

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    return-void

    nop

    :array_26
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x61t
        0x73t
        0x63t
        0x69t
        0x69t
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x6ft
        0x63t
        0x74t
        0x65t
        0x74t
        0x0t
    .end array-data
.end method

.method constructor <init>(ILjava/net/DatagramPacket;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .line 111
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 118
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getType()I

    move-result v1

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v1, v3, :cond_8f

    .line 123
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x2

    .line 126
    .local v3, "index":I
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .line 128
    .local v4, "length":I
    :goto_22
    if-ge v3, v4, :cond_31

    aget-byte v5, v0, v3

    if-eqz v5, :cond_31

    .line 130
    aget-byte v5, v0, v3

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 134
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 136
    if-ge v3, v4, :cond_87

    .line 139
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 140
    add-int/2addr v3, v2

    .line 141
    :goto_3e
    if-ge v3, v4, :cond_4d

    aget-byte v2, v0, v3

    if-eqz v2, :cond_4d

    .line 143
    aget-byte v2, v0, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 147
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "mode":Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    array-length v4, v5

    .line 150
    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v4, :cond_6d

    .line 152
    sget-object v5, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeStrings:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 154
    iput v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    .line 155
    goto :goto_6d

    .line 150
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 159
    :cond_6d
    :goto_6d
    if-ge v3, v4, :cond_70

    .line 166
    return-void

    .line 161
    :cond_70
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPPacketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized TFTP transfer mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v2    # "mode":Ljava/lang/String;
    :cond_87
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v5, "Bad filename and mode format."

    invoke-direct {v2, v5}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "index":I
    .end local v4    # "length":I
    :cond_8f
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v2, "TFTP operator code does not match type."

    invoke-direct {v1, v2}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/net/InetAddress;IILjava/lang/String;I)V
    .registers 6
    .param p1, "destination"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "type"    # I
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 91
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/net/tftp/TFTPPacket;-><init>(ILjava/net/InetAddress;I)V

    .line 93
    iput-object p4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    .line 94
    iput p5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    .line 95
    return-void
.end method


# virtual methods
.method final _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
    .registers 8
    .param p1, "datagram"    # Ljava/net/DatagramPacket;
    .param p2, "data"    # [B

    .line 185
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, "fileLength":I
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 188
    .local v1, "modeLength":I
    const/4 v2, 0x0

    aput-byte v2, p2, v2

    .line 189
    iget v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, p2, v4

    .line 190
    iget-object v3, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/lit8 v3, v0, 0x2

    aput-byte v2, p2, v3

    .line 192
    sget-object v3, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {v3, v2, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget-object v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 196
    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 197
    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setData([B)V

    .line 198
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 200
    return-object p1
.end method

.method public final getFilename()Ljava/lang/String;
    .registers 2

    .line 251
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()I
    .registers 2

    .line 241
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    return v0
.end method

.method public final newDatagram()Ljava/net/DatagramPacket;
    .registers 8

    .line 220
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 221
    .local v0, "fileLength":I
    sget-object v1, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v2, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v1, v1, v2

    array-length v1, v1

    .line 223
    .local v1, "modeLength":I
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 224
    .local v2, "data":[B
    const/4 v3, 0x0

    aput-byte v3, v2, v3

    .line 225
    iget v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_type:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 226
    iget-object v4, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_filename:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    add-int/lit8 v4, v0, 0x2

    aput-byte v3, v2, v4

    .line 228
    sget-object v4, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_modeBytes:[[B

    iget v5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_mode:I

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x3

    invoke-static {v4, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_address:Ljava/net/InetAddress;

    iget v6, p0, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->_port:I

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v3
.end method
