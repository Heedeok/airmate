.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1c

    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    return-void

    nop

    :array_1c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_30
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static dump(Ljava/lang/StringBuffer;B)Ljava/lang/StringBuffer;
    .registers 6
    .param p0, "_cbuffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # B

    .line 143
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 144
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "j":I
    :cond_18
    return-object p0
.end method

.method private static dump(Ljava/lang/StringBuffer;J)Ljava/lang/StringBuffer;
    .registers 7
    .param p0, "_lbuffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # J

    .line 128
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    .line 129
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "j":I
    :cond_18
    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .registers 15
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    if-ltz p4, :cond_85

    array-length v0, p0

    if-ge p4, v0, :cond_85

    .line 69
    if-eqz p3, :cond_7d

    .line 72
    int-to-long v0, p4

    add-long/2addr v0, p1

    .line 73
    .local v0, "display_offset":J
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 75
    .local v2, "buffer":Ljava/lang/StringBuffer;
    move-wide v3, v0

    move v0, p4

    .local v0, "j":I
    .local v3, "display_offset":J
    :goto_12
    array-length v1, p0

    if-ge v0, v1, :cond_7c

    .line 76
    array-length v1, p0

    sub-int/2addr v1, v0

    .line 78
    .local v1, "chars_read":I
    const/16 v5, 0x10

    if-le v1, v5, :cond_1d

    .line 79
    const/16 v1, 0x10

    .line 81
    :cond_1d
    invoke-static {v2, v3, v4}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuffer;J)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const/4 v6, 0x0

    const/4 v8, 0x0

    .local v8, "k":I
    :goto_28
    if-ge v8, v5, :cond_3f

    .line 83
    if-ge v8, v1, :cond_34

    .line 84
    add-int v9, v8, v0

    aget-byte v9, p0, v9

    invoke-static {v2, v9}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuffer;B)Ljava/lang/StringBuffer;

    .line 85
    goto :goto_39

    .line 86
    :cond_34
    const-string v9, "  "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_39
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 90
    .end local v8    # "k":I
    :cond_3f
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_40
    if-ge v5, v1, :cond_61

    .line 91
    add-int v8, v5, v0

    aget-byte v8, p0, v8

    if-lt v8, v7, :cond_59

    add-int v8, v5, v0

    aget-byte v8, p0, v8

    const/16 v9, 0x7f

    if-ge v8, v9, :cond_59

    .line 92
    add-int v8, v5, v0

    aget-byte v8, p0, v8

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    goto :goto_5e

    .line 94
    :cond_59
    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 97
    .end local v5    # "k":I
    :cond_61
    sget-object v5, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 100
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 101
    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 75
    .end local v1    # "chars_read":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_12

    .line 103
    .end local v0    # "j":I
    :cond_7c
    return-void

    .line 70
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "display_offset":J
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write to nullstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_85
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " into array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
