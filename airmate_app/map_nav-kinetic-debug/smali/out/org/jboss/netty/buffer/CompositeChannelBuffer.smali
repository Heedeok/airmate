.class public Lorg/jboss/netty/buffer/CompositeChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "CompositeChannelBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private components:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final gathering:Z

.field private indices:[I

.field private lastAccessedComponentId:I

.field private final order:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V
    .registers 4
    .param p1, "endianness"    # Ljava/nio/ByteOrder;
    .param p3, "gathering"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    .local p2, "buffers":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 46
    iput-boolean p3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    .line 47
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    .line 141
    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    .line 142
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    .line 143
    iget-boolean v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    iput-boolean v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    .line 144
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0}, [Lorg/jboss/netty/buffer/ChannelBuffer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 145
    iget-object v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    .line 146
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 147
    return-void
.end method

.method private componentId(I)I
    .registers 6
    .param p1, "index"    # I

    .line 654
    iget v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 655
    .local v0, "lastComponentId":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_26

    .line 656
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_11

    .line 657
    return v0

    .line 661
    :cond_11
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 662
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_23

    .line 663
    iput v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 664
    return v1

    .line 661
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 669
    .end local v1    # "i":I
    :cond_26
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_28
    if-ltz v1, :cond_36

    .line 670
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_33

    .line 671
    iput v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 672
    return v1

    .line 669
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 677
    .end local v1    # "i":I
    :cond_36
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "componentId"    # I
    .param p4, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "dstIndex":I
    move v1, v0

    move v0, p1

    move p1, p3

    .line 548
    .local v0, "index":I
    .local v1, "dstIndex":I
    .local p1, "i":I
    :goto_4
    if-lez p2, :cond_24

    .line 549
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 550
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 551
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, v0, v3

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 552
    .local v4, "localLength":I
    sub-int v5, v0, v3

    invoke-interface {v2, v5, p4, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 553
    add-int/2addr v0, v4

    .line 554
    add-int/2addr v1, v4

    .line 555
    sub-int/2addr p2, v4

    .line 556
    add-int/lit8 p1, p1, 0x1

    .line 557
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_4

    .line 559
    :cond_24
    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-interface {p4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 560
    return-void
.end method

.method private setComponents(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "newComponents":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    nop

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->lastAccessedComponentId:I

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 119
    .local v2, "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v3, v4, :cond_2b

    .line 124
    nop

    .line 125
    nop

    .line 127
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v2, v3, v1

    .line 117
    .end local v2    # "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 120
    .restart local v2    # "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "All buffers must have the same endianness."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    .end local v1    # "i":I
    .end local v2    # "c":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_33
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    .line 132
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aput v0, v1, v0

    .line 133
    nop

    .local v2, "i":I
    :goto_41
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    if-gt v1, v2, :cond_5f

    .line 134
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 133
    add-int/lit8 v2, v1, 0x1

    goto :goto_41

    .line 138
    .end local v1    # "i":I
    :cond_5f
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 139
    return-void
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .registers 2

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .registers 3

    .line 174
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 533
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 534
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    if-gt p1, v1, :cond_1b

    .line 539
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    .line 540
    .local v1, "dst":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copyTo(IIILorg/jboss/netty/buffer/ChannelBuffer;)V

    .line 541
    return-object v1

    .line 535
    .end local v1    # "dst":Lorg/jboss/netty/buffer/ChannelBuffer;
    :cond_1b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to copy - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decompose(II)Ljava/util/List;
    .registers 10
    .param p1, "index"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .line 62
    if-nez p2, :cond_7

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 66
    :cond_7
    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_69

    .line 71
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 72
    .local v0, "componentId":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v1, "slice":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    .line 76
    .local v2, "first":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, v0

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    .line 78
    move-object v3, v2

    .line 79
    .local v3, "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    move v4, v0

    move v0, p2

    .line 81
    .local v0, "bytesToSlice":I
    .local v4, "componentId":I
    :cond_2f
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    .line 82
    .local v5, "readableBytes":I
    if-gt v0, v5, :cond_41

    .line 84
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v6

    add-int/2addr v6, v0

    invoke-interface {v3, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_51

    .line 89
    :cond_41
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sub-int/2addr v0, v5

    .line 91
    add-int/lit8 v4, v4, 0x1

    .line 94
    iget-object v6, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    .line 96
    .end local v5    # "readableBytes":I
    if-gtz v0, :cond_2f

    .line 99
    :goto_51
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_68

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 103
    .end local v5    # "i":I
    :cond_68
    return-object v1

    .line 67
    .end local v0    # "bytesToSlice":I
    .end local v1    # "slice":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    .end local v2    # "first":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "buf":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "componentId":I
    :cond_69
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to decompose - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", capacity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public discardReadBytes()V
    .registers 10

    .line 686
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v0

    .line 687
    .local v0, "localReaderIndex":I
    if-nez v0, :cond_7

    .line 688
    return-void

    .line 690
    :cond_7
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v1

    .line 692
    .local v1, "localWriterIndex":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v0

    .line 693
    .local v2, "bytesToMove":I
    invoke-virtual {p0, v0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v3

    .line 699
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 700
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 705
    :cond_21
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    .line 706
    .local v4, "padding":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-interface {v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    .line 707
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    move v5, v0

    .line 712
    .local v5, "localMarkedReaderIndex":I
    :try_start_30
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetReaderIndex()V

    .line 713
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v6
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_37} :catch_39

    move v5, v6

    .line 716
    goto :goto_3a

    .line 714
    :catch_39
    move-exception v6

    .line 717
    :goto_3a
    move v6, v1

    .line 719
    .local v6, "localMarkedWriterIndex":I
    :try_start_3b
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->resetWriterIndex()V

    .line 720
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v7
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3b .. :try_end_42} :catch_44

    move v6, v7

    .line 723
    goto :goto_45

    .line 721
    :catch_44
    move-exception v7

    .line 725
    :goto_45
    invoke-direct {p0, v3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setComponents(Ljava/util/List;)V

    .line 728
    sub-int v7, v5, v0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 729
    sub-int v7, v6, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 730
    invoke-virtual {p0, v5, v6}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 731
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markReaderIndex()V

    .line 732
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->markWriterIndex()V

    .line 734
    sub-int v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 735
    invoke-virtual {p0, v8, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setIndex(II)V

    .line 736
    return-void
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 4

    .line 527
    new-instance v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Lorg/jboss/netty/buffer/CompositeChannelBuffer;)V

    .line 528
    .local v0, "duplicate":Lorg/jboss/netty/buffer/ChannelBuffer;
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    .line 529
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .registers 2

    .line 150
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 580
    if-ltz p1, :cond_11

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 587
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 581
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(I)B
    .registers 5
    .param p1, "index"    # I

    .line 182
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 183
    .local v0, "componentId":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    return v1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->useGathering()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 302
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 308
    :cond_10
    invoke-virtual {p0, p1, p3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 314
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_2d

    .line 319
    move v1, p1

    move p1, v0

    .line 320
    .local v1, "index":I
    .local p1, "i":I
    :goto_d
    if-lez p3, :cond_2c

    .line 321
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 322
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 323
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, v1, v3

    sub-int/2addr v4, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 324
    .local v4, "localLength":I
    sub-int v5, v1, v3

    invoke-interface {v2, v5, p2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    .line 325
    add-int/2addr v1, v4

    .line 326
    sub-int/2addr p3, v4

    .line 327
    add-int/lit8 p1, p1, 0x1

    .line 328
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_d

    .line 329
    :cond_2c
    return-void

    .line 315
    .end local v1    # "index":I
    .local p1, "index":I
    :cond_2d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to be read - needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 252
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 253
    .local v0, "componentId":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 254
    .local v1, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 255
    .local v2, "length":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_49

    .line 260
    move v3, p1

    move p1, v0

    .line 262
    .local v3, "index":I
    .local p1, "i":I
    :goto_15
    if-lez v2, :cond_42

    .line 263
    :try_start_17
    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v4, p1

    .line 264
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v5, v5, p1

    .line 265
    .local v5, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v6

    sub-int v7, v3, v5

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 266
    .local v6, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 267
    sub-int v7, v3, v5

    invoke-interface {v4, v7, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_3c

    .line 268
    add-int/2addr v3, v6

    .line 269
    sub-int/2addr v2, v6

    .line 270
    add-int/lit8 p1, p1, 0x1

    .line 271
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "adjustment":I
    .end local v6    # "localLength":I
    goto :goto_15

    .line 273
    :catchall_3c
    move-exception v4

    .line 275
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 273
    throw v4

    .line 272
    .end local v5    # "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    :cond_42
    nop

    .line 275
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 274
    nop

    .line 275
    return-void

    .line 256
    .end local v3    # "index":I
    .end local v4    # "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    .local p1, "index":I
    :cond_49
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many bytes to be read - Needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maximum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "dst"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 278
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 279
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_36

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_36

    .line 285
    move v1, p3

    move p3, p1

    move p1, v0

    .line 286
    .local v1, "dstIndex":I
    .local p1, "i":I
    .local p3, "index":I
    :goto_15
    if-lez p4, :cond_35

    .line 287
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 288
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 289
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p3, v3

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 290
    .local v4, "localLength":I
    sub-int v5, p3, v3

    invoke-interface {v2, v5, p2, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 291
    add-int/2addr p3, v4

    .line 292
    add-int/2addr v1, v4

    .line 293
    sub-int/2addr p4, v4

    .line 294
    add-int/lit8 p1, p1, 0x1

    .line 295
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_15

    .line 296
    :cond_35
    return-void

    .line 280
    .end local v1    # "dstIndex":I
    .local p1, "index":I
    .local p3, "dstIndex":I
    :cond_36
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to be read - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBytes(I[BII)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 231
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 232
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_33

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_33

    .line 238
    move v1, p3

    move p3, p1

    move p1, v0

    .line 239
    .local v1, "dstIndex":I
    .local p1, "i":I
    .local p3, "index":I
    :goto_12
    if-lez p4, :cond_32

    .line 240
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 241
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 242
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p3, v3

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 243
    .local v4, "localLength":I
    sub-int v5, p3, v3

    invoke-interface {v2, v5, p2, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    .line 244
    add-int/2addr p3, v4

    .line 245
    add-int/2addr v1, v4

    .line 246
    sub-int/2addr p4, v4

    .line 247
    add-int/lit8 p1, p1, 0x1

    .line 248
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_12

    .line 249
    :cond_32
    return-void

    .line 233
    .end local v1    # "dstIndex":I
    .local p1, "index":I
    .local p3, "dstIndex":I
    :cond_33
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to read - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(I)I
    .registers 6
    .param p1, "index"    # I

    .line 209
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 210
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1d

    .line 211
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v1

    return v1

    .line 212
    :cond_1d
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_38

    .line 213
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 215
    :cond_38
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method public getLong(I)J
    .registers 10
    .param p1, "index"    # I

    .line 220
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 221
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1d

    .line 222
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 223
    :cond_1d
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_3d

    .line 224
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    and-long/2addr v4, v6

    or-long/2addr v1, v4

    return-wide v1

    .line 226
    :cond_3d
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getShort(I)S
    .registers 6
    .param p1, "index"    # I

    .line 187
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 188
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1d

    .line 189
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v1

    return v1

    .line 190
    :cond_1d
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_38

    .line 191
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 193
    :cond_38
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public getUnsignedMedium(I)I
    .registers 6
    .param p1, "index"    # I

    .line 198
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 199
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1d

    .line 200
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v1

    return v1

    .line 201
    :cond_1d
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_39

    .line 202
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 204
    :cond_39
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method public hasArray()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public numComponents()I
    .registers 2

    .line 178
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .registers 2

    .line 154
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 332
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 333
    .local v0, "componentId":I
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    .line 334
    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .registers 12
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 459
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_3a

    .line 464
    move v1, v0

    .line 465
    .local v1, "i":I
    const/4 v2, 0x0

    .line 468
    .local v2, "readBytes":I
    :cond_d
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v3, v3, v1

    .line 469
    .local v3, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v4, v4, v1

    .line 470
    .local v4, "adjustment":I
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v4

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 471
    .local v5, "localLength":I
    sub-int v6, p1, v4

    invoke-interface {v3, v6, p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v6

    .line 472
    .local v6, "localReadBytes":I
    if-gez v6, :cond_2c

    .line 473
    if-nez v2, :cond_39

    .line 474
    const/4 v7, -0x1

    return v7

    .line 480
    :cond_2c
    if-ne v6, v5, :cond_34

    .line 481
    add-int/2addr p1, v5

    .line 482
    sub-int/2addr p3, v5

    .line 483
    add-int/2addr v2, v5

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 486
    :cond_34
    add-int/2addr p1, v6

    .line 487
    sub-int/2addr p3, v6

    .line 488
    add-int/2addr v2, v6

    .line 490
    .end local v3    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "adjustment":I
    .end local v5    # "localLength":I
    .end local v6    # "localReadBytes":I
    :goto_37
    if-gtz p3, :cond_d

    .line 492
    :cond_39
    return v2

    .line 460
    .end local v1    # "i":I
    .end local v2    # "readBytes":I
    :cond_3a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to write - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .registers 11
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 498
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_34

    .line 503
    move v1, v0

    .line 504
    .local v1, "i":I
    const/4 v2, 0x0

    .line 506
    .local v2, "readBytes":I
    :cond_d
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v3, v3, v1

    .line 507
    .local v3, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v4, v4, v1

    .line 508
    .local v4, "adjustment":I
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, p1, v4

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 509
    .local v5, "localLength":I
    sub-int v6, p1, v4

    invoke-interface {v3, v6, p2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v6

    .line 511
    .local v6, "localReadBytes":I
    if-ne v6, v5, :cond_2e

    .line 512
    add-int/2addr p1, v5

    .line 513
    sub-int/2addr p3, v5

    .line 514
    add-int/2addr v2, v5

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 517
    :cond_2e
    add-int/2addr p1, v6

    .line 518
    sub-int/2addr p3, v6

    .line 519
    add-int/2addr v2, v6

    .line 521
    .end local v3    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "adjustment":I
    .end local v5    # "localLength":I
    .end local v6    # "localReadBytes":I
    :goto_31
    if-gtz p3, :cond_d

    .line 523
    return v2

    .line 499
    .end local v1    # "i":I
    .end local v2    # "readBytes":I
    :cond_34
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to write - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 410
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 411
    .local v0, "componentId":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 412
    .local v1, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 413
    .local v2, "length":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_49

    .line 418
    move v3, p1

    move p1, v0

    .line 420
    .local v3, "index":I
    .local p1, "i":I
    :goto_15
    if-lez v2, :cond_42

    .line 421
    :try_start_17
    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v4, v4, p1

    .line 422
    .local v4, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v5, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v5, v5, p1

    .line 423
    .local v5, "adjustment":I
    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v6

    sub-int v7, v3, v5

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 424
    .local v6, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 425
    sub-int v7, v3, v5

    invoke-interface {v4, v7, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_3c

    .line 426
    add-int/2addr v3, v6

    .line 427
    sub-int/2addr v2, v6

    .line 428
    add-int/lit8 p1, p1, 0x1

    .line 429
    .end local v4    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v5    # "adjustment":I
    .end local v6    # "localLength":I
    goto :goto_15

    .line 431
    :catchall_3c
    move-exception v4

    .line 433
    move-object v5, p0

    .local v5, "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 431
    throw v4

    .line 430
    .end local v5    # "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    :cond_42
    nop

    .line 433
    move-object v4, p0

    .local v4, "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 432
    nop

    .line 433
    return-void

    .line 414
    .end local v3    # "index":I
    .end local v4    # "this":Lorg/jboss/netty/buffer/CompositeChannelBuffer;
    .local p1, "index":I
    :cond_49
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many bytes to be written - Needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maximum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "src"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 436
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 437
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_36

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_36

    .line 443
    move v1, p3

    move p3, p1

    move p1, v0

    .line 444
    .local v1, "srcIndex":I
    .local p1, "i":I
    .local p3, "index":I
    :goto_15
    if-lez p4, :cond_35

    .line 445
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 446
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 447
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p3, v3

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 448
    .local v4, "localLength":I
    sub-int v5, p3, v3

    invoke-interface {v2, v5, p2, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    .line 449
    add-int/2addr p3, v4

    .line 450
    add-int/2addr v1, v4

    .line 451
    sub-int/2addr p4, v4

    .line 452
    add-int/lit8 p1, p1, 0x1

    .line 453
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_15

    .line 454
    :cond_35
    return-void

    .line 438
    .end local v1    # "srcIndex":I
    .local p1, "index":I
    .local p3, "srcIndex":I
    :cond_36
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to be written - Needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBytes(I[BII)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 389
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 390
    .local v0, "componentId":I
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_33

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_33

    .line 396
    move v1, p3

    move p3, p1

    move p1, v0

    .line 397
    .local v1, "srcIndex":I
    .local p1, "i":I
    .local p3, "index":I
    :goto_12
    if-lez p4, :cond_32

    .line 398
    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v2, v2, p1

    .line 399
    .local v2, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v3, v3, p1

    .line 400
    .local v3, "adjustment":I
    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    sub-int v5, p3, v3

    sub-int/2addr v4, v5

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 401
    .local v4, "localLength":I
    sub-int v5, p3, v3

    invoke-interface {v2, v5, p2, v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    .line 402
    add-int/2addr p3, v4

    .line 403
    add-int/2addr v1, v4

    .line 404
    sub-int/2addr p4, v4

    .line 405
    add-int/lit8 p1, p1, 0x1

    .line 406
    .end local v2    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v3    # "adjustment":I
    .end local v4    # "localLength":I
    goto :goto_12

    .line 407
    :cond_32
    return-void

    .line 391
    .end local v1    # "srcIndex":I
    .local p1, "index":I
    .local p3, "srcIndex":I
    :cond_33
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to read - needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInt(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 363
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 364
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1c

    .line 365
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    goto :goto_3d

    .line 366
    :cond_1c
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_31

    .line 367
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 368
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    goto :goto_3d

    .line 370
    :cond_31
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 371
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 373
    :goto_3d
    return-void
.end method

.method public setLong(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 376
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 377
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1c

    .line 378
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    goto :goto_3f

    .line 379
    :cond_1c
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_33

    .line 380
    ushr-long v1, p2, v3

    long-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    .line 381
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    goto :goto_3f

    .line 383
    :cond_33
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    .line 384
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setInt(II)V

    .line 386
    :goto_3f
    return-void
.end method

.method public setMedium(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 350
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 351
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1c

    .line 352
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    goto :goto_3d

    .line 353
    :cond_1c
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_31

    .line 354
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 355
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_3d

    .line 357
    :cond_31
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setShort(II)V

    .line 358
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 360
    :goto_3d
    return-void
.end method

.method public setShort(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 337
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 338
    .local v0, "componentId":I
    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_1c

    .line 339
    iget-object v1, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    invoke-interface {v1, v2, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    goto :goto_3d

    .line 340
    :cond_1c
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_31

    .line 341
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 342
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    goto :goto_3d

    .line 344
    :cond_31
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 345
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->setByte(II)V

    .line 347
    :goto_3d
    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 592
    if-nez p1, :cond_7

    .line 593
    if-nez p2, :cond_15

    .line 594
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 596
    :cond_7
    if-ltz p1, :cond_37

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_37

    .line 600
    if-nez p2, :cond_15

    .line 601
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0

    .line 604
    :cond_15
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v0

    .line 605
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_64

    .line 611
    new-instance v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    invoke-direct {v1, v2, v0, v3}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    return-object v1

    .line 609
    :pswitch_2c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v1

    .line 607
    :pswitch_34
    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v1

    .line 597
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lorg/jboss/netty/buffer/ChannelBuffer;>;"
    :cond_37
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2c
    .end packed-switch
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 616
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 617
    iget-object v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 620
    :cond_10
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 621
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 622
    .local v2, "merged":Ljava/nio/ByteBuffer;
    move-object v3, v0

    .local v3, "arr$":[Ljava/nio/ByteBuffer;
    array-length v4, v3

    .local v1, "i$":I
    .local v4, "len$":I
    :goto_22
    if-ge v1, v4, :cond_2c

    aget-object v5, v3, v1

    .line 623
    .local v5, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 622
    .end local v5    # "b":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 625
    .end local v1    # "i$":I
    .end local v3    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v4    # "len$":I
    :cond_2c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 626
    return-object v2
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 631
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->componentId(I)I

    move-result v0

    .line 632
    .local v0, "componentId":I
    add-int v1, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v2

    if-gt v1, v2, :cond_46

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 639
    .local v1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    move v2, p1

    move p1, v0

    .line 640
    .local v2, "index":I
    .local p1, "i":I
    :goto_16
    if-lez p2, :cond_39

    .line 641
    iget-object v3, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    aget-object v3, v3, p1

    .line 642
    .local v3, "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v4, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->indices:[I

    aget v4, v4, p1

    .line 643
    .local v4, "adjustment":I
    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    sub-int v6, v2, v4

    sub-int/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 644
    .local v5, "localLength":I
    sub-int v6, v2, v4

    invoke-interface {v3, v6, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/2addr v2, v5

    .line 646
    sub-int/2addr p2, v5

    .line 647
    add-int/lit8 p1, p1, 0x1

    .line 648
    .end local v3    # "s":Lorg/jboss/netty/buffer/ChannelBuffer;
    .end local v4    # "adjustment":I
    .end local v5    # "localLength":I
    goto :goto_16

    .line 650
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    return-object v3

    .line 633
    .end local v1    # "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v2    # "index":I
    .local p1, "index":I
    :cond_46
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bytes to convert - Needs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maximum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 740
    invoke-super {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->components:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useGathering()Z
    .registers 3

    .line 55
    iget-boolean v0, p0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->gathering:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
