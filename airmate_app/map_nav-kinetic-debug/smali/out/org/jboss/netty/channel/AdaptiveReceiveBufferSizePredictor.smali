.class public Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;
.super Ljava/lang/Object;
.source "AdaptiveReceiveBufferSizePredictor.java"

# interfaces
.implements Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;


# static fields
.field static final DEFAULT_INITIAL:I = 0x400

.field static final DEFAULT_MAXIMUM:I = 0x10000

.field static final DEFAULT_MINIMUM:I = 0x40

.field private static final INDEX_DECREMENT:I = 0x1

.field private static final INDEX_INCREMENT:I = 0x4

.field private static final SIZE_TABLE:[I


# instance fields
.field private decreaseNow:Z

.field private index:I

.field private final maxIndex:I

.field private final minIndex:I

.field private nextReceiveBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "sizeTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x8

    if-gt v1, v2, :cond_14

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 49
    .end local v1    # "i":I
    :cond_14
    const/4 v1, 0x4

    const/4 v3, 0x4

    .local v3, "i":I
    :goto_16
    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ge v3, v4, :cond_49

    .line 50
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    .line 51
    .local v6, "v":J
    ushr-long v8, v6, v1

    .line 52
    .local v8, "inc":J
    const/4 v4, 0x3

    shl-long v10, v8, v4

    sub-long/2addr v6, v10

    .line 54
    nop

    .local v5, "j":I
    :goto_25
    move v4, v5

    .end local v5    # "j":I
    .local v4, "j":I
    if-ge v4, v2, :cond_46

    .line 55
    add-long/2addr v6, v8

    .line 56
    const-wide/32 v10, 0x7fffffff

    cmp-long v5, v6, v10

    if-lez v5, :cond_3b

    .line 57
    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 59
    :cond_3b
    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_43
    add-int/lit8 v5, v4, 0x1

    goto :goto_25

    .line 49
    .end local v4    # "j":I
    .end local v6    # "v":J
    .end local v8    # "inc":J
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 64
    .end local v3    # "i":I
    :cond_49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    .line 65
    nop

    .local v5, "i":I
    :goto_52
    move v1, v5

    .end local v5    # "i":I
    .restart local v1    # "i":I
    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_69

    .line 66
    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 65
    add-int/lit8 v5, v1, 0x1

    goto :goto_52

    .line 68
    .end local v0    # "sizeTable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 107
    const/16 v0, 0x40

    const/16 v1, 0x400

    const/high16 v2, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;-><init>(III)V

    .line 108
    return-void
.end method

.method public constructor <init>(III)V
    .registers 8
    .param p1, "minimum"    # I
    .param p2, "initial"    # I
    .param p3, "maximum"    # I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-lez p1, :cond_68

    .line 121
    if-lt p2, p1, :cond_51

    .line 124
    if-lt p3, p2, :cond_3a

    .line 128
    invoke-static {p1}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v0

    .line 129
    .local v0, "minIndex":I
    sget-object v1, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_18

    .line 130
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    goto :goto_1a

    .line 132
    :cond_18
    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    .line 135
    :goto_1a
    invoke-static {p3}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v1

    .line 136
    .local v1, "maxIndex":I
    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v2, v2, v1

    if-le v2, p3, :cond_29

    .line 137
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    goto :goto_2b

    .line 139
    :cond_29
    iput v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    .line 142
    :goto_2b
    invoke-static {p2}, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->getSizeTableIndex(I)I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    .line 143
    sget-object v2, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v3, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v2, v2, v3

    iput v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    .line 144
    return-void

    .line 125
    .end local v0    # "minIndex":I
    .end local v1    # "maxIndex":I
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSizeTableIndex(I)I
    .registers 8
    .param p0, "size"    # I

    .line 71
    const/16 v0, 0x10

    if-gt p0, v0, :cond_7

    .line 72
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 75
    :cond_7
    const/4 v0, 0x0

    .line 76
    .local v0, "bits":I
    move v1, v0

    move v0, p0

    .line 78
    .local v0, "v":I
    .local v1, "bits":I
    :cond_a
    ushr-int/lit8 v0, v0, 0x1

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    if-nez v0, :cond_a

    .line 82
    shl-int/lit8 v2, v1, 0x3

    .line 83
    .local v2, "baseIdx":I
    add-int/lit8 v3, v2, -0x12

    .line 84
    .local v3, "startIdx":I
    add-int/lit8 v4, v2, -0x19

    .line 86
    .local v4, "endIdx":I
    move v5, v3

    .local v5, "i":I
    :goto_17
    if-lt v5, v4, :cond_23

    .line 87
    sget-object v6, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    aget v6, v6, v5

    if-lt p0, v6, :cond_20

    .line 88
    return v5

    .line 86
    :cond_20
    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    .line 92
    .end local v5    # "i":I
    :cond_23
    new-instance v5, Ljava/lang/Error;

    const-string v6, "shouldn\'t reach here; please file a bug report."

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public nextReceiveBufferSize()I
    .registers 2

    .line 147
    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    return v0
.end method

.method public previousReceiveBufferSize(I)V
    .registers 6
    .param p1, "previousReceiveBufferSize"    # I

    .line 151
    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    if-gt p1, v0, :cond_2d

    .line 152
    iget-boolean v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    if-eqz v0, :cond_2a

    .line 153
    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    sub-int/2addr v0, v2

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->minIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    .line 154
    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    .line 155
    iput-boolean v3, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    goto :goto_47

    .line 157
    :cond_2a
    iput-boolean v2, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    goto :goto_47

    .line 159
    :cond_2d
    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    if-lt p1, v0, :cond_47

    .line 160
    iget v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->maxIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    .line 161
    sget-object v0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->SIZE_TABLE:[I

    iget v1, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->index:I

    aget v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->nextReceiveBufferSize:I

    .line 162
    iput-boolean v3, p0, Lorg/jboss/netty/channel/AdaptiveReceiveBufferSizePredictor;->decreaseNow:Z

    .line 164
    :cond_47
    :goto_47
    return-void
.end method
