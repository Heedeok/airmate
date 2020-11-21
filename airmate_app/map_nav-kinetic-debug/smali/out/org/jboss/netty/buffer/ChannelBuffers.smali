.class public final Lorg/jboss/netty/buffer/ChannelBuffers;
.super Ljava/lang/Object;
.source "ChannelBuffers.java"


# static fields
.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private static final HEXDUMP_TABLE:[C

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 93
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 98
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 103
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>(I)V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 105
    const/16 v0, 0x400

    new-array v0, v0, [C

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    .line 108
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 109
    .local v0, "DIGITS":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    const/16 v3, 0x100

    if-ge v2, v3, :cond_3f

    .line 110
    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    shl-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v1

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v3, v4

    .line 111
    sget-object v3, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v2, 0x0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v3, v4

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 113
    .end local v0    # "DIGITS":[C
    .end local v2    # "i":I
    :cond_3f
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    return-void
.end method

.method public static buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 121
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "capacity"    # I

    .line 130
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_f

    .line 131
    if-nez p1, :cond_9

    .line 132
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 134
    :cond_9
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>(I)V

    return-object v0

    .line 135
    :cond_f
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1e

    .line 136
    if-nez p1, :cond_18

    .line 137
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 139
    :cond_18
    new-instance v0, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>(I)V

    return-object v0

    .line 141
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .registers 19
    .param p0, "bufferA"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "bufferB"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 989
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    .line 990
    .local v2, "aLen":I
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    .line 991
    .local v3, "bLen":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 992
    .local v4, "minLength":I
    ushr-int/lit8 v5, v4, 0x2

    .line 993
    .local v5, "uintCount":I
    and-int/lit8 v6, v4, 0x3

    .line 995
    .local v6, "byteCount":I
    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    .line 996
    .local v7, "aIndex":I
    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    .line 998
    .local v8, "bIndex":I
    invoke-interface/range {p0 .. p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-ne v9, v10, :cond_46

    .line 999
    move v9, v8

    move v8, v7

    move v7, v5

    .local v7, "i":I
    .local v8, "aIndex":I
    .local v9, "bIndex":I
    :goto_2b
    if-lez v7, :cond_73

    .line 1000
    invoke-interface {v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v13

    .line 1001
    .local v13, "va":J
    invoke-interface {v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v15

    .line 1002
    .local v15, "vb":J
    cmp-long v10, v13, v15

    if-lez v10, :cond_3a

    .line 1003
    return v11

    .line 1004
    :cond_3a
    cmp-long v10, v13, v15

    if-gez v10, :cond_3f

    .line 1005
    return v12

    .line 1007
    :cond_3f
    add-int/lit8 v8, v8, 0x4

    .line 1008
    add-int/lit8 v9, v9, 0x4

    .line 999
    .end local v13    # "va":J
    .end local v15    # "vb":J
    add-int/lit8 v7, v7, -0x1

    goto :goto_2b

    .line 1011
    .end local v9    # "bIndex":I
    .local v7, "aIndex":I
    .local v8, "bIndex":I
    :cond_46
    move v9, v8

    move v8, v7

    move v7, v5

    .local v7, "i":I
    .local v8, "aIndex":I
    .restart local v9    # "bIndex":I
    :goto_49
    if-lez v7, :cond_73

    .line 1012
    invoke-interface {v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v13

    .line 1013
    .restart local v13    # "va":J
    invoke-interface {v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v10

    int-to-long v11, v10

    const-wide v15, 0xffffffffL

    and-long/2addr v11, v15

    .line 1014
    .local v11, "vb":J
    cmp-long v10, v13, v11

    if-lez v10, :cond_64

    .line 1015
    const/4 v10, 0x1

    return v10

    .line 1016
    :cond_64
    cmp-long v10, v13, v11

    if-gez v10, :cond_6a

    .line 1017
    const/4 v10, -0x1

    return v10

    .line 1019
    :cond_6a
    add-int/lit8 v8, v8, 0x4

    .line 1020
    add-int/lit8 v9, v9, 0x4

    .line 1011
    .end local v11    # "vb":J
    .end local v13    # "va":J
    add-int/lit8 v7, v7, -0x1

    const/4 v11, 0x1

    const/4 v12, -0x1

    goto :goto_49

    .line 1024
    .end local v7    # "i":I
    :cond_73
    move v7, v6

    .restart local v7    # "i":I
    :goto_74
    if-lez v7, :cond_8f

    .line 1025
    invoke-interface {v0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v10

    .line 1026
    .local v10, "va":S
    invoke-interface {v1, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v11

    .line 1027
    .local v11, "vb":S
    if-le v10, v11, :cond_82

    .line 1028
    const/4 v12, 0x1

    return v12

    .line 1029
    :cond_82
    const/4 v12, 0x1

    if-ge v10, v11, :cond_87

    .line 1030
    const/4 v13, -0x1

    return v13

    .line 1032
    :cond_87
    const/4 v13, -0x1

    add-int/lit8 v8, v8, 0x1

    .line 1033
    add-int/lit8 v9, v9, 0x1

    .line 1024
    .end local v10    # "va":S
    .end local v11    # "vb":S
    add-int/lit8 v7, v7, -0x1

    goto :goto_74

    .line 1036
    .end local v7    # "i":I
    :cond_8f
    sub-int v7, v2, v3

    return v7
.end method

.method private static compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p2, "gathering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;Z)",
            "Lorg/jboss/netty/buffer/ChannelBuffer;"
        }
    .end annotation

    .line 376
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 382
    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    return-object v0

    .line 380
    :pswitch_d
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 378
    :pswitch_15
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 723
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 712
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 846
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 575
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 576
    .local v0, "length":I
    if-nez v0, :cond_9

    .line 577
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v1

    .line 579
    :cond_9
    new-array v1, v0, [B

    .line 580
    .local v1, "copy":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 582
    .local v2, "position":I
    :try_start_f
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_20

    .line 583
    nop

    .line 586
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 585
    nop

    .line 586
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    return-object v3

    .line 584
    :catchall_20
    move-exception v3

    .line 586
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 584
    throw v3
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 9
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 754
    if-eqz p1, :cond_41

    .line 757
    if-nez p3, :cond_7

    .line 758
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 761
    :cond_7
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_36

    .line 762
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    .line 763
    .local v0, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 764
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-static {p0, v1, v2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 771
    :cond_27
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 772
    invoke-virtual {v0, p3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 773
    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 774
    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 777
    .end local v0    # "buf":Ljava/nio/CharBuffer;
    :cond_36
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 755
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "string"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 734
    if-eqz p1, :cond_17

    .line 738
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_e

    .line 739
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-static {p0, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 742
    :cond_e
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 735
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "buffer"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 834
    move-object v0, p1

    .line 835
    .local v0, "src":Ljava/nio/CharBuffer;
    invoke-static {v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->encodeString(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 836
    .local v1, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 837
    .local v2, "result":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 838
    return-object v2
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [B

    .line 525
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_16

    .line 526
    array-length v0, p1

    if-nez v0, :cond_a

    .line 527
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 529
    :cond_a
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([B)V

    return-object v0

    .line 530
    :cond_16
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_2c

    .line 531
    array-length v0, p1

    if-nez v0, :cond_20

    .line 532
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 534
    :cond_20
    new-instance v0, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>([B)V

    return-object v0

    .line 536
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 557
    if-eqz p0, :cond_12

    .line 560
    if-nez p3, :cond_7

    .line 561
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 563
    :cond_7
    new-array v0, p3, [B

    .line 564
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    .line 558
    .end local v0    # "copy":[B
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 823
    if-eqz p1, :cond_10

    .line 826
    if-nez p3, :cond_7

    .line 827
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 829
    :cond_7
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 824
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copiedBuffer(Ljava/nio/ByteOrder;[CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [C
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 811
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 10
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "arrays"    # [[B

    .line 620
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_52

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "length":I
    move-object v2, p1

    .local v2, "arr$":[[B
    array-length v3, v2

    move v4, v0

    const/4 v0, 0x0

    goto :goto_1d

    .line 624
    .end local v0    # "length":I
    .end local v2    # "arr$":[[B
    :pswitch_b
    aget-object v0, p1, v1

    array-length v0, v0

    if-nez v0, :cond_13

    .line 625
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 627
    :cond_13
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 622
    :pswitch_1a
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 633
    .local v0, "i$":I
    .restart local v2    # "arr$":[[B
    .local v3, "len$":I
    .local v4, "length":I
    :goto_1d
    if-ge v0, v3, :cond_35

    aget-object v5, v2, v0

    .line 634
    .local v5, "a":[B
    const v6, 0x7fffffff

    sub-int/2addr v6, v4

    array-length v7, v5

    if-lt v6, v7, :cond_2d

    .line 638
    array-length v6, v5

    add-int/2addr v4, v6

    .line 633
    .end local v5    # "a":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 635
    .restart local v5    # "a":[B
    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "The total length of the specified arrays is too big."

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    .end local v0    # "i$":I
    .end local v2    # "arr$":[[B
    .end local v3    # "len$":I
    .end local v5    # "a":[B
    :cond_35
    if-nez v4, :cond_3a

    .line 642
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 645
    :cond_3a
    new-array v0, v4, [B

    .line 646
    .local v0, "mergedArray":[B
    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    .local v2, "j":I
    .local v3, "i":I
    :goto_3f
    array-length v5, p1

    if-ge v3, v5, :cond_4d

    .line 647
    aget-object v5, p1, v3

    .line 648
    .restart local v5    # "a":[B
    array-length v6, v5

    invoke-static {v5, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    array-length v6, v5

    add-int/2addr v2, v6

    .line 646
    .end local v5    # "a":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 652
    .end local v2    # "j":I
    .end local v3    # "i":I
    :cond_4d
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_b
    .end packed-switch
.end method

.method public static copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 596
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 597
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 599
    :cond_b
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public static copiedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "array"    # [B

    .line 515
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 547
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 800
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "array"    # [C
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 789
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 691
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    .line 698
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 699
    .local v0, "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v2, 0x0

    goto :goto_14

    .line 695
    .end local v0    # "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    :pswitch_a
    aget-object v0, p0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 693
    :pswitch_11
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 699
    .restart local v0    # "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v2, "i":I
    :goto_14
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 700
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 702
    .end local v2    # "i":I
    :cond_22
    invoke-static {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method public static varargs copiedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "buffers"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 666
    array-length v0, p0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    .line 673
    array-length v0, p0

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 674
    .local v0, "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    const/4 v2, 0x0

    goto :goto_14

    .line 670
    .end local v0    # "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    :pswitch_a
    aget-object v0, p0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 668
    :pswitch_11
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 674
    .restart local v0    # "copiedBuffers":[Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v2, "i":I
    :goto_14
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 675
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 677
    .end local v2    # "i":I
    :cond_22
    invoke-static {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method public static varargs copiedBuffer([[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "arrays"    # [[B

    .line 610
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method static decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 7
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1177
    invoke-static {p1}, Lorg/jboss/netty/util/CharsetUtil;->getDecoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 1178
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1181
    .local v1, "dst":Ljava/nio/CharBuffer;
    const/4 v2, 0x1

    :try_start_1c
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 1182
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_29

    .line 1183
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1185
    :cond_29
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    move-object v2, v3

    .line 1186
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_37

    .line 1187
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_37
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1c .. :try_end_37} :catch_41

    .line 1191
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_37
    nop

    .line 1192
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1189
    :catch_41
    move-exception v2

    .line 1190
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static directBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 151
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "capacity"    # I

    .line 160
    if-eqz p0, :cond_18

    .line 163
    if-nez p1, :cond_7

    .line 164
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 167
    :cond_7
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 169
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 170
    return-object v0

    .line 161
    .end local v0    # "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2

    .line 179
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "estimatedLength"    # I

    .line 197
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicBuffer(ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "estimatedLength"    # I
    .param p1, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 217
    if-eqz p1, :cond_c

    .line 221
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0

    .line 218
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 3
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "estimatedLength"    # I

    .line 207
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;I)V

    return-object v0
.end method

.method public static dynamicBuffer(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "estimatedLength"    # I
    .param p2, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 232
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0
.end method

.method public static dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "factory"    # Lorg/jboss/netty/buffer/ChannelBufferFactory;

    .line 183
    if-eqz p0, :cond_e

    .line 187
    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-object v0

    .line 184
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encodeString(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "src"    # Ljava/nio/CharBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1157
    invoke-static {p1}, Lorg/jboss/netty/util/CharsetUtil;->getEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 1158
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1161
    .local v1, "dst":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    :try_start_1c
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 1162
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_29

    .line 1163
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1165
    :cond_29
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    move-object v2, v3

    .line 1166
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_37

    .line 1167
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_37
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1c .. :try_end_37} :catch_3c

    .line 1171
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_37
    nop

    .line 1172
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1173
    return-object v1

    .line 1169
    :catch_3c
    move-exception v2

    .line 1170
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static equals(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)Z
    .registers 14
    .param p0, "bufferA"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "bufferB"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 944
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 945
    .local v0, "aLen":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 946
    return v2

    .line 949
    :cond_c
    ushr-int/lit8 v1, v0, 0x3

    .line 950
    .local v1, "longCount":I
    and-int/lit8 v3, v0, 0x7

    .line 952
    .local v3, "byteCount":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 953
    .local v4, "aIndex":I
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    .line 955
    .local v5, "bIndex":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    if-ne v6, v7, :cond_3b

    .line 956
    move v6, v5

    move v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "aIndex":I
    .local v6, "bIndex":I
    :goto_25
    if-lez v4, :cond_58

    .line 957
    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v7

    invoke-interface {p1, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_34

    .line 958
    return v2

    .line 960
    :cond_34
    add-int/lit8 v5, v5, 0x8

    .line 961
    add-int/lit8 v6, v6, 0x8

    .line 956
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 964
    .end local v6    # "bIndex":I
    .local v4, "aIndex":I
    .local v5, "bIndex":I
    :cond_3b
    move v6, v5

    move v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "aIndex":I
    .restart local v6    # "bIndex":I
    :goto_3e
    if-lez v4, :cond_58

    .line 965
    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v7

    invoke-interface {p1, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapLong(J)J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_51

    .line 966
    return v2

    .line 968
    :cond_51
    add-int/lit8 v5, v5, 0x8

    .line 969
    add-int/lit8 v6, v6, 0x8

    .line 964
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    .line 973
    .end local v4    # "i":I
    :cond_58
    move v4, v3

    .restart local v4    # "i":I
    :goto_59
    if-lez v4, :cond_6d

    .line 974
    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v7

    invoke-interface {p1, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v8

    if-eq v7, v8, :cond_66

    .line 975
    return v2

    .line 977
    :cond_66
    add-int/lit8 v5, v5, 0x1

    .line 978
    add-int/lit8 v6, v6, 0x1

    .line 973
    add-int/lit8 v4, v4, -0x1

    goto :goto_59

    .line 981
    .end local v4    # "i":I
    :cond_6d
    const/4 v2, 0x1

    return v2
.end method

.method private static firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .registers 7
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1095
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1096
    const/4 v0, -0x1

    if-ge p1, p2, :cond_1d

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1d

    .line 1100
    :cond_f
    move v1, p1

    .local v1, "i":I
    :goto_10
    if-ge v1, p2, :cond_1c

    .line 1101
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-ne v2, p3, :cond_19

    .line 1102
    return v1

    .line 1100
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1106
    .end local v1    # "i":I
    :cond_1c
    return v0

    .line 1097
    :cond_1d
    :goto_1d
    return v0
.end method

.method private static firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 7
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 1126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1127
    const/4 v0, -0x1

    if-ge p1, p2, :cond_1d

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_1d

    .line 1131
    :cond_f
    move v1, p1

    .local v1, "i":I
    :goto_10
    if-ge v1, p2, :cond_1c

    .line 1132
    invoke-interface {p3, p0, v1}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1133
    return v1

    .line 1131
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1137
    .end local v1    # "i":I
    :cond_1c
    return v0

    .line 1128
    :cond_1d
    :goto_1d
    return v0
.end method

.method public static hashCode(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .registers 9
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 909
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 910
    .local v0, "aLen":I
    ushr-int/lit8 v1, v0, 0x2

    .line 911
    .local v1, "intCount":I
    and-int/lit8 v2, v0, 0x3

    .line 913
    .local v2, "byteCount":I
    const/4 v3, 0x1

    .line 914
    .local v3, "hashCode":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    .line 915
    .local v4, "arrayIndex":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_27

    .line 916
    move v5, v4

    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "hashCode":I
    .local v5, "arrayIndex":I
    :goto_18
    if-lez v3, :cond_3d

    .line 917
    mul-int/lit8 v6, v4, 0x1f

    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v7

    add-int v4, v6, v7

    .line 918
    add-int/lit8 v5, v5, 0x4

    .line 916
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 921
    .end local v5    # "arrayIndex":I
    .local v3, "hashCode":I
    .local v4, "arrayIndex":I
    :cond_27
    move v5, v4

    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "hashCode":I
    .restart local v5    # "arrayIndex":I
    :goto_2a
    if-lez v3, :cond_3d

    .line 922
    mul-int/lit8 v6, v4, 0x1f

    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v7

    add-int v4, v6, v7

    .line 923
    add-int/lit8 v5, v5, 0x4

    .line 921
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 927
    .end local v3    # "i":I
    :cond_3d
    move v3, v2

    .restart local v3    # "i":I
    :goto_3e
    if-lez v3, :cond_4e

    .line 928
    mul-int/lit8 v6, v4, 0x1f

    add-int/lit8 v7, v5, 0x1

    .local v7, "arrayIndex":I
    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    .end local v5    # "arrayIndex":I
    add-int v4, v6, v5

    .line 927
    add-int/lit8 v3, v3, -0x1

    move v5, v7

    goto :goto_3e

    .line 931
    .end local v3    # "i":I
    .end local v7    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    :cond_4e
    if-nez v4, :cond_51

    .line 932
    const/4 v4, 0x1

    .line 935
    :cond_51
    return v4
.end method

.method public static hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .registers 3
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 875
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump(Lorg/jboss/netty/buffer/ChannelBuffer;II)Ljava/lang/String;
    .registers 10
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 883
    if-ltz p2, :cond_28

    .line 886
    if-nez p2, :cond_7

    .line 887
    const-string v0, ""

    return-object v0

    .line 890
    :cond_7
    add-int v0, p1, p2

    .line 891
    .local v0, "endIndex":I
    shl-int/lit8 v1, p2, 0x1

    new-array v1, v1, [C

    .line 893
    .local v1, "buf":[C
    move v2, p1

    .line 894
    .local v2, "srcIdx":I
    const/4 v3, 0x0

    .line 895
    .local v3, "dstIdx":I
    :goto_f
    if-ge v2, v0, :cond_22

    .line 896
    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->HEXDUMP_TABLE:[C

    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_f

    .line 901
    :cond_22
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 884
    .end local v0    # "endIndex":I
    .end local v1    # "buf":[C
    .end local v2    # "srcIdx":I
    .end local v3    # "dstIdx":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .registers 5
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1044
    if-gt p1, p2, :cond_7

    .line 1045
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    return v0

    .line 1047
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 5
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 1057
    if-gt p1, p2, :cond_7

    .line 1058
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->firstIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0

    .line 1060
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I
    .registers 7
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 1110
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1111
    const/4 v0, -0x1

    if-ltz p1, :cond_21

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_21

    .line 1115
    :cond_12
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_14
    if-lt v1, p2, :cond_20

    .line 1116
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-ne v2, p3, :cond_1d

    .line 1117
    return v1

    .line 1115
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1121
    .end local v1    # "i":I
    :cond_20
    return v0

    .line 1112
    :cond_21
    :goto_21
    return v0
.end method

.method private static lastIndexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .registers 7
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "indexFinder"    # Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    .line 1142
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1143
    const/4 v0, -0x1

    if-ltz p1, :cond_21

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_21

    .line 1147
    :cond_12
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_14
    if-lt v1, p2, :cond_20

    .line 1148
    invoke-interface {p3, p0, v1}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1149
    return v1

    .line 1147
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1153
    .end local v1    # "i":I
    :cond_20
    return v0

    .line 1144
    :cond_21
    :goto_21
    return v0
.end method

.method public static swapInt(I)I
    .registers 4
    .param p0, "value"    # I

    .line 1082
    int-to-short v0, p0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapShort(S)S

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v1, p0, 0x10

    int-to-short v1, v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapShort(S)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static swapLong(J)J
    .registers 8
    .param p0, "value"    # J

    .line 1090
    long-to-int v0, p0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    ushr-long v2, p0, v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->swapInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static swapMedium(I)I
    .registers 3
    .param p0, "value"    # I

    .line 1075
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static swapShort(S)S
    .registers 3
    .param p0, "value"    # S

    .line 1068
    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static unmodifiableBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 864
    instance-of v0, p0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    if-eqz v0, :cond_b

    .line 865
    move-object v0, p0

    check-cast v0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;->unwrap()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p0

    .line 867
    :cond_b
    new-instance v0, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ReadOnlyChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_9

    .line 309
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 311
    :cond_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 312
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 315
    :cond_29
    new-instance v0, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/ByteBufferBackedChannelBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [B

    .line 250
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_10

    .line 251
    array-length v0, p1

    if-nez v0, :cond_a

    .line 252
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 254
    :cond_a
    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([B)V

    return-object v0

    .line 255
    :cond_10
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_20

    .line 256
    array-length v0, p1

    if-nez v0, :cond_1a

    .line 257
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 259
    :cond_1a
    new-instance v0, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;

    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/LittleEndianHeapChannelBuffer;-><init>([B)V

    return-object v0

    .line 261
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 280
    if-eqz p0, :cond_2a

    .line 283
    if-nez p2, :cond_1b

    .line 284
    array-length v0, p1

    if-ne p3, v0, :cond_c

    .line 285
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 287
    :cond_c
    if-nez p3, :cond_11

    .line 288
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 290
    :cond_11
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-object v0

    .line 294
    :cond_1b
    if-nez p3, :cond_20

    .line 295
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 297
    :cond_20
    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-object v0

    .line 281
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs wrappedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 9
    .param p0, "endianness"    # Ljava/nio/ByteOrder;
    .param p1, "arrays"    # [[B

    .line 349
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_38

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    move-object v2, p1

    .local v2, "arr$":[[B
    array-length v3, v2

    const/4 v4, 0x0

    goto :goto_1f

    .line 353
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .end local v2    # "arr$":[[B
    :pswitch_f
    aget-object v0, p1, v1

    array-length v0, v0

    if-eqz v0, :cond_1c

    .line 354
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_1b
    nop

    .line 371
    :cond_1c
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 360
    .restart local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .restart local v2    # "arr$":[[B
    .local v3, "len$":I
    .local v4, "i$":I
    :goto_1f
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    .line 361
    .local v5, "a":[B
    if-nez v5, :cond_26

    .line 362
    goto :goto_33

    .line 364
    :cond_26
    array-length v6, v5

    if-lez v6, :cond_30

    .line 365
    invoke-static {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v5    # "a":[B
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 368
    .end local v2    # "arr$":[[B
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_33
    :goto_33
    invoke-static {p0, v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public static wrappedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 325
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 326
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 328
    :cond_b
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public static varargs wrappedBuffer(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 10
    .param p0, "gathering"    # Z
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 476
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_58

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "order":Ljava/nio/ByteOrder;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 487
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    move-object v3, p1

    .local v3, "arr$":[Ljava/nio/ByteBuffer;
    array-length v4, v3

    goto :goto_22

    .line 480
    .end local v0    # "order":Ljava/nio/ByteOrder;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .end local v3    # "arr$":[Ljava/nio/ByteBuffer;
    :pswitch_f
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 481
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 478
    :pswitch_1e
    nop

    .line 506
    :cond_1f
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 487
    .restart local v0    # "order":Ljava/nio/ByteOrder;
    .local v1, "i$":I
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .restart local v3    # "arr$":[Ljava/nio/ByteBuffer;
    .local v4, "len$":I
    :goto_22
    if-ge v1, v4, :cond_52

    aget-object v5, v3, v1

    .line 488
    .local v5, "b":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_29

    .line 489
    goto :goto_52

    .line 491
    :cond_29
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 492
    if-eqz v0, :cond_44

    .line 493
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_48

    .line 494
    :cond_3c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "inconsistent byte order"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 498
    :cond_44
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 500
    :goto_48
    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v5    # "b":Ljava/nio/ByteBuffer;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 503
    .end local v1    # "i$":I
    .end local v3    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v4    # "len$":I
    :cond_52
    :goto_52
    invoke-static {v0, v2, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_f
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 11
    .param p0, "gathering"    # Z
    .param p1, "buffers"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 410
    array-length v0, p1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6e

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "order":Ljava/nio/ByteOrder;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    move-object v3, p1

    .local v3, "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    array-length v4, v3

    goto :goto_22

    .line 414
    .end local v0    # "order":Ljava/nio/ByteOrder;
    .end local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .end local v3    # "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    :pswitch_f
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 415
    aget-object v0, p1, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_1e
    nop

    .line 447
    :cond_1f
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 421
    .restart local v0    # "order":Ljava/nio/ByteOrder;
    .local v1, "i$":I
    .restart local v2    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .restart local v3    # "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    .local v4, "len$":I
    :goto_22
    if-ge v1, v4, :cond_69

    aget-object v5, v3, v1

    .line 422
    .local v5, "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    if-nez v5, :cond_29

    .line 423
    goto :goto_69

    .line 425
    :cond_29
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 426
    if-eqz v0, :cond_44

    .line 427
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    goto :goto_48

    .line 428
    :cond_3c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "inconsistent byte order"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 432
    :cond_44
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 434
    :goto_48
    instance-of v6, v5, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v6, :cond_5f

    .line 436
    move-object v6, v5

    check-cast v6, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v7

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_66

    .line 441
    :cond_5f
    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v5    # "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 445
    .end local v1    # "i$":I
    .end local v3    # "arr$":[Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "len$":I
    :cond_69
    :goto_69
    invoke-static {v0, v2, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->compositeBuffer(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    return-object v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_f
    .end packed-switch
.end method

.method public static wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "array"    # [B

    .line 241
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 271
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 461
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "buffers"    # [Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 396
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Z[Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([[B)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 2
    .param p0, "arrays"    # [[B

    .line 338
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
