.class public final Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentIdentityWeakKeyHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntrySet;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Values;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntryIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WriteThroughEntry;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$SimpleEntry;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeyIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashIterator;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$HashEntry;,
        Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$WeakKeyReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 735
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>(IFI)V

    .line 736
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 726
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>(IFI)V

    .line 727
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 712
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>(IFI)V

    .line 713
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 11
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 660
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 661
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_52

    if-ltz p1, :cond_52

    if-lez p3, :cond_52

    .line 665
    const/high16 v0, 0x10000

    if-le p3, v0, :cond_12

    .line 666
    const/high16 p3, 0x10000

    .line 670
    :cond_12
    const/4 v0, 0x0

    .line 671
    .local v0, "sshift":I
    const/4 v1, 0x1

    move v2, v0

    const/4 v0, 0x1

    .line 672
    .local v0, "ssize":I
    .local v2, "sshift":I
    :goto_16
    if-ge v0, p3, :cond_1d

    .line 673
    add-int/lit8 v2, v2, 0x1

    .line 674
    shl-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 676
    :cond_1d
    rsub-int/lit8 v3, v2, 0x20

    iput v3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentShift:I

    .line 677
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentMask:I

    .line 678
    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    .line 680
    const/high16 v3, 0x40000000    # 2.0f

    if-le p1, v3, :cond_31

    .line 681
    const/high16 p1, 0x40000000    # 2.0f

    .line 683
    :cond_31
    div-int v3, p1, v0

    .line 684
    .local v3, "c":I
    mul-int v4, v3, v0

    if-ge v4, p1, :cond_39

    .line 685
    add-int/lit8 v3, v3, 0x1

    .line 687
    :cond_39
    nop

    .line 688
    .local v1, "cap":I
    :goto_3a
    if-ge v1, v3, :cond_3f

    .line 689
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 692
    :cond_3f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    array-length v5, v5

    if-ge v4, v5, :cond_51

    .line 693
    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    new-instance v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    invoke-direct {v6, v1, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v4

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 695
    .end local v4    # "i":I
    :cond_51
    return-void

    .line 662
    .end local v0    # "ssize":I
    .end local v1    # "cap":I
    .end local v2    # "sshift":I
    .end local v3    # "c":I
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 747
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>(IFI)V

    .line 750
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->putAll(Ljava/util/Map;)V

    .line 751
    return-void
.end method

.method private static hash(I)I
    .registers 3
    .param p0, "h"    # I

    .line 127
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 128
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 129
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 130
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 131
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 132
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static hashOf(Ljava/lang/Object;)I
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 146
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hash(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1063
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1064
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->clear()V

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1066
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 956
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 874
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 875
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "value"    # Ljava/lang/Object;

    .line 891
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    if-eqz p1, :cond_7b

    .line 897
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    .line 898
    .local v0, "segments":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    array-length v1, v0

    new-array v1, v1, [I

    .line 901
    .local v1, "mc":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "k":I
    :goto_9
    const/4 v4, 0x2

    if-ge v3, v4, :cond_40

    .line 902
    const/4 v4, 0x0

    .line 903
    .local v4, "mcsum":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v5, "mcsum":I
    :goto_f
    array-length v6, v0

    if-ge v4, v6, :cond_26

    .line 904
    aget-object v6, v0, v4

    iget v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    aput v6, v1, v4

    add-int/2addr v5, v6

    .line 905
    aget-object v6, v0, v4

    invoke-virtual {v6, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 906
    const/4 v2, 0x1

    return v2

    .line 903
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 909
    .end local v4    # "i":I
    :cond_26
    const/4 v4, 0x1

    .line 910
    .local v4, "cleanSweep":Z
    if-eqz v5, :cond_3a

    .line 911
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    array-length v7, v0

    if-ge v6, v7, :cond_3a

    .line 912
    aget v7, v1, v6

    aget-object v8, v0, v6

    iget v8, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    if-eq v7, v8, :cond_37

    .line 913
    const/4 v4, 0x0

    .line 914
    goto :goto_3a

    .line 911
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 918
    .end local v6    # "i":I
    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3d

    .line 919
    return v2

    .line 901
    .end local v4    # "cleanSweep":Z
    .end local v5    # "mcsum":I
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 923
    .end local v3    # "k":I
    :cond_40
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    array-length v4, v0

    if-ge v3, v4, :cond_4c

    .line 924
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 926
    .end local v3    # "i":I
    :cond_4c
    move v3, v2

    .line 928
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    :try_start_4e
    array-length v5, v0

    if-ge v4, v5, :cond_5e

    .line 929
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v5
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_6d

    if-eqz v5, :cond_5b

    .line 930
    const/4 v3, 0x1

    .line 931
    goto :goto_5e

    .line 928
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 934
    .end local v4    # "i":I
    :cond_5e
    :goto_5e
    nop

    .line 939
    move-object v4, p0

    .local v2, "i":I
    .local v4, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    :goto_60
    array-length v5, v0

    if-ge v2, v5, :cond_6b

    .line 936
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 938
    .end local v2    # "i":I
    :cond_6b
    nop

    .line 939
    return v3

    .line 935
    .end local v4    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    :catchall_6d
    move-exception v4

    move-object v5, p0

    .restart local v2    # "i":I
    .local v5, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    :goto_6f
    array-length v6, v0

    if-ge v2, v6, :cond_7a

    .line 936
    aget-object v6, v0, v2

    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .end local v2    # "i":I
    :cond_7a
    throw v4

    .line 892
    .end local v0    # "segments":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    .end local v1    # "mc":[I
    .end local v3    # "found":Z
    .end local v5    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    :cond_7b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TV;>;"
        }
    .end annotation

    .line 1165
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$ValueIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1144
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->entrySet:Ljava/util/Set;

    .line 1145
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntrySet;

    invoke-direct {v1, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$EntrySet;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->entrySet:Ljava/util/Set;

    :goto_d
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 859
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 860
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 8

    .line 760
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    .line 769
    .local v0, "segments":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    array-length v1, v0

    new-array v1, v1, [I

    .line 770
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 771
    .local v2, "mcsum":I
    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v4, "mcsum":I
    :goto_9
    array-length v5, v0

    if-ge v2, v5, :cond_1d

    .line 772
    aget-object v5, v0, v2

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-eqz v5, :cond_13

    .line 773
    return v3

    .line 775
    :cond_13
    aget-object v5, v0, v2

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    aput v5, v1, v2

    add-int/2addr v4, v5

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 781
    .end local v2    # "i":I
    :cond_1d
    if-eqz v4, :cond_36

    .line 782
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_20
    array-length v5, v0

    if-ge v2, v5, :cond_36

    .line 783
    aget-object v5, v0, v2

    iget v5, v5, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    if-nez v5, :cond_35

    aget v5, v1, v2

    aget-object v6, v0, v2

    iget v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    if-eq v5, v6, :cond_32

    goto :goto_35

    .line 782
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 784
    :cond_35
    :goto_35
    return v3

    .line 788
    .end local v2    # "i":I
    :cond_36
    const/4 v2, 0x1

    return v2
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->keySet:Ljava/util/Set;

    .line 1103
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;

    invoke-direct {v1, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeySet;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->keySet:Ljava/util/Set;

    :goto_d
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TK;>;"
        }
    .end annotation

    .line 1155
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$KeyIterator;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-object v0
.end method

.method public purgeStaleEntries()V
    .registers 3

    .line 1080
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1081
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->removeStale()V

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1083
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 974
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_10

    .line 977
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 978
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 975
    .end local v0    # "hash":I
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1003
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1004
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_8

    .line 1006
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 987
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_10

    .line 990
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 991
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 988
    .end local v0    # "hash":I
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1019
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 1020
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1027
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 1028
    .local v0, "hash":I
    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 1029
    return v1

    .line 1031
    :cond_8
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_f

    .line 1054
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 1055
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1052
    .end local v0    # "hash":I
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1038
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    .line 1041
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    .line 1042
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1039
    .end local v0    # "hash":I
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method segmentFor(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 13

    .line 800
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;

    .line 801
    .local v0, "segments":[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment<TK;TV;>;"
    const-wide/16 v1, 0x0

    .line 802
    .local v1, "sum":J
    const-wide/16 v3, 0x0

    .line 803
    .local v3, "check":J
    array-length v5, v0

    new-array v5, v5, [I

    .line 806
    .local v5, "mc":[I
    const/4 v6, 0x0

    move-wide v7, v1

    const/4 v1, 0x0

    .local v1, "k":I
    .local v7, "sum":J
    :goto_c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4d

    .line 807
    const-wide/16 v2, 0x0

    .line 808
    .end local v3    # "check":J
    .local v2, "check":J
    const-wide/16 v7, 0x0

    .line 809
    const/4 v4, 0x0

    .line 810
    .local v4, "mcsum":I
    move v9, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v9, "mcsum":I
    :goto_16
    array-length v10, v0

    if-ge v4, v10, :cond_29

    .line 811
    aget-object v10, v0, v4

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    .line 812
    aget-object v10, v0, v4

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    aput v10, v5, v4

    add-int/2addr v9, v10

    .line 810
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 814
    .end local v4    # "i":I
    :cond_29
    if-eqz v9, :cond_44

    .line 815
    move-wide v3, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .restart local v3    # "check":J
    :goto_2d
    array-length v10, v0

    if-ge v2, v10, :cond_45

    .line 816
    aget-object v10, v0, v2

    iget v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    int-to-long v10, v10

    add-long/2addr v3, v10

    .line 817
    aget v10, v5, v2

    aget-object v11, v0, v2

    iget v11, v11, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->modCount:I

    if-eq v10, v11, :cond_41

    .line 818
    const-wide/16 v3, -0x1

    .line 819
    goto :goto_45

    .line 815
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 823
    .end local v3    # "check":J
    .local v2, "check":J
    :cond_44
    move-wide v3, v2

    .end local v2    # "check":J
    .restart local v3    # "check":J
    :cond_45
    :goto_45
    cmp-long v2, v3, v7

    if-nez v2, :cond_4a

    .line 824
    goto :goto_4d

    .line 806
    .end local v9    # "mcsum":I
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 827
    .end local v1    # "k":I
    :cond_4d
    :goto_4d
    cmp-long v1, v3, v7

    if-eqz v1, :cond_7a

    .line 828
    const-wide/16 v1, 0x0

    .line 829
    .end local v7    # "sum":J
    .local v1, "sum":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_54
    array-length v8, v0

    if-ge v7, v8, :cond_5f

    .line 830
    aget-object v8, v0, v7

    invoke-virtual {v8}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->lock()V

    .line 829
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 832
    .end local v7    # "i":I
    :cond_5f
    move-wide v7, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v7, "sum":J
    :goto_61
    array-length v2, v0

    if-ge v1, v2, :cond_6d

    .line 833
    aget-object v2, v0, v1

    iget v2, v2, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->count:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 835
    .end local v1    # "i":I
    :cond_6d
    nop

    .local v6, "i":I
    :goto_6e
    move v1, v6

    .end local v6    # "i":I
    .restart local v1    # "i":I
    array-length v2, v0

    if-ge v1, v2, :cond_7a

    .line 836
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Segment;->unlock()V

    .line 835
    add-int/lit8 v6, v1, 0x1

    goto :goto_6e

    .line 839
    .end local v1    # "i":I
    :cond_7a
    const-wide/32 v1, 0x7fffffff

    cmp-long v6, v7, v1

    if-lez v6, :cond_85

    .line 840
    const v1, 0x7fffffff

    return v1

    .line 842
    :cond_85
    long-to-int v1, v7

    return v1
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1123
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->values:Ljava/util/Collection;

    .line 1124
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_d

    :cond_6
    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Values;

    invoke-direct {v1, p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap$Values;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->values:Ljava/util/Collection;

    :goto_d
    return-object v1
.end method
