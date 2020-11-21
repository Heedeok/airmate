.class Lorg/apache/commons/lang/Entities$BinaryEntityMap;
.super Lorg/apache/commons/lang/Entities$ArrayEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 655
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;-><init>()V

    .line 656
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "growBy"    # I

    .line 666
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities$ArrayEntityMap;-><init>(I)V

    .line 667
    return-void
.end method

.method private binarySearch(I)I
    .registers 6
    .param p1, "key"    # I

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "low":I
    iget v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 681
    .local v1, "high":I
    :goto_5
    if-gt v0, v1, :cond_1a

    .line 682
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 683
    .local v2, "mid":I
    iget-object v3, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->values:[I

    aget v3, v3, v2

    .line 685
    .local v3, "midVal":I
    if-ge v3, p1, :cond_14

    .line 686
    add-int/lit8 v0, v2, 0x1

    goto :goto_5

    .line 687
    :cond_14
    if-le v3, p1, :cond_19

    .line 688
    add-int/lit8 v1, v2, -0x1

    goto :goto_5

    .line 690
    :cond_19
    return v2

    .line 693
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 700
    iget v0, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->ensureCapacity(I)V

    .line 701
    invoke-direct {p0, p2}, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 702
    .local v0, "insertAt":I
    if-lez v0, :cond_e

    .line 703
    return-void

    .line 705
    :cond_e
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 706
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->values:[I

    iget-object v2, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->values:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->values:[I

    aput p2, v1, v0

    .line 708
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 710
    iget v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->size:I

    .line 711
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # I

    .line 717
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->binarySearch(I)I

    move-result v0

    .line 718
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 719
    const/4 v1, 0x0

    return-object v1

    .line 721
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/lang/Entities$BinaryEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method
