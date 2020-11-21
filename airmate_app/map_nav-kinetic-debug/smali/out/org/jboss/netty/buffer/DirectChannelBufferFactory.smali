.class public Lorg/jboss/netty/buffer/DirectChannelBufferFactory;
.super Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;
.source "DirectChannelBufferFactory.java"


# static fields
.field private static final INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

.field private static final INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;


# instance fields
.field private final bigEndianLock:Ljava/lang/Object;

.field private final littleEndianLock:Ljava/lang/Object;

.field private preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedBEBufPos:I

.field private final preallocatedBufCapacity:I

.field private preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedLEBufPos:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    .line 38
    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "preallocatedBufferCapacity"    # I

    .line 78
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .registers 3
    .param p1, "defaultOrder"    # Ljava/nio/ByteOrder;

    .line 87
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .registers 6
    .param p1, "defaultOrder"    # Ljava/nio/ByteOrder;
    .param p2, "preallocatedBufferCapacity"    # I

    .line 96
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    .line 97
    if-lez p2, :cond_16

    .line 102
    iput p2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    .line 103
    return-void

    .line 98
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preallocatedBufCapacity must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "capacity"    # I

    .line 162
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    .line 164
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 165
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 166
    .local v1, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    goto :goto_4a

    .line 167
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1d
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    sub-int/2addr v2, v4

    if-lt v2, p1, :cond_37

    .line 168
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 169
    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    goto :goto_4a

    .line 171
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_37
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 172
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 173
    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    .line 175
    :goto_4a
    monitor-exit v0

    .line 176
    return-object v1

    .line 175
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_4c
    move-exception v2

    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method private allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "capacity"    # I

    .line 181
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    .line 183
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 184
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 185
    .local v1, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    goto :goto_4a

    .line 186
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1d
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    sub-int/2addr v2, v4

    if-lt v2, p1, :cond_37

    .line 187
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v3, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 188
    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    goto :goto_4a

    .line 190
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_37
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v4, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 191
    iget-object v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v3, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    move-object v1, v2

    .line 192
    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    .line 194
    :goto_4a
    monitor-exit v0

    .line 195
    return-object v1

    .line 194
    .end local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :catchall_4c
    move-exception v2

    .restart local v1    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public static getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 1

    .line 42
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 3
    .param p0, "defaultEndianness"    # Ljava/nio/ByteOrder;

    .line 46
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_7

    .line 47
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-object v0

    .line 48
    :cond_7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_e

    .line 49
    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-object v0

    .line 50
    :cond_e
    if-nez p0, :cond_18

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "defaultEndianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 150
    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 153
    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 154
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 155
    .local v1, "pos":I
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    .line 156
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    return-object v0
.end method

.method public getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .param p2, "capacity"    # I

    .line 106
    if-eqz p1, :cond_3a

    .line 109
    if-ltz p2, :cond_23

    .line 112
    if-nez p2, :cond_9

    .line 113
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 115
    :cond_9
    iget v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    if-lt p2, v0, :cond_12

    .line 116
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0

    .line 120
    :cond_12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_1b

    .line 121
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1f

    .line 123
    :cond_1b
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 125
    .local v0, "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :goto_1f
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    .line 126
    return-object v0

    .line 110
    .end local v0    # "slice":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 8
    .param p1, "order"    # Ljava/nio/ByteOrder;
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 130
    if-eqz p2, :cond_44

    .line 133
    if-ltz p3, :cond_2d

    .line 136
    if-nez p4, :cond_9

    .line 137
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 139
    :cond_9
    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_16

    .line 143
    invoke-virtual {p0, p1, p4}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 144
    .local v0, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v0, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    .line 145
    return-object v0

    .line 140
    .end local v0    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
