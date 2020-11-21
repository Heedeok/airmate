.class final Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentWeakKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73935f43c8f169f6L


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field modCount:I

.field volatile transient refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile transient table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "lf"    # F

    .line 308
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 309
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->loadFactor:F

    .line 310
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->setTable([Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;)V

    .line 311
    return-void
.end method

.method private static keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;

    .line 319
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;
    .registers 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 315
    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 5

    .line 622
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    if-eqz v0, :cond_2e

    .line 623
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 625
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 626
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 627
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 629
    .end local v2    # "i":I
    :cond_14
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    .line 632
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 633
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_28

    .line 634
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    nop

    .line 638
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 636
    goto :goto_2e

    .line 635
    :catchall_28
    move-exception v0

    .line 638
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 635
    throw v0

    .line 638
    .end local v1    # "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    :cond_2e
    :goto_2e
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 383
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    if-eqz v0, :cond_1d

    .line 384
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 385
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_1d

    .line 386
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_1a

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 387
    const/4 v1, 0x1

    return v1

    .line 389
    :cond_1a
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    goto :goto_8

    .line 392
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;

    .line 396
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 397
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 398
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v2, v0

    .line 399
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_2a

    .line 400
    aget-object v4, v0, v3

    .local v4, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_d
    if-eqz v4, :cond_27

    .line 401
    iget-object v5, v4, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->valueRef:Ljava/lang/Object;

    .line 404
    .local v5, "opaque":Ljava/lang/Object;
    if-nez v5, :cond_18

    .line 405
    invoke-virtual {p0, v4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1c

    .line 407
    :cond_18
    invoke-virtual {v4, v5}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->dereferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 410
    .local v6, "v":Ljava/lang/Object;, "TV;"
    :goto_1c
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 411
    const/4 v1, 0x1

    return v1

    .line 400
    .end local v5    # "opaque":Ljava/lang/Object;
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_24
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    goto :goto_d

    .line 399
    .end local v4    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 416
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_2a
    return v1
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    if-eqz v0, :cond_29

    .line 366
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 367
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_29

    .line 368
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_26

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 369
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->valueRef:Ljava/lang/Object;

    .line 370
    .local v1, "opaque":Ljava/lang/Object;
    if-eqz v1, :cond_21

    .line 371
    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->dereferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 374
    :cond_21
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 376
    .end local v1    # "opaque":Ljava/lang/Object;
    :cond_26
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    goto :goto_8

    .line 379
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .registers 4
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 337
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;
    .registers 12
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    new-instance v6, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v6
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 12
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 462
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->removeStale()V

    .line 463
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    .line 464
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "c":I
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->threshold:I

    if-le v0, v2, :cond_1b

    .line 465
    .end local v0    # "c":I
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->rehash()I

    move-result v0

    .line 466
    .local v0, "reduced":I
    if-lez v0, :cond_1b

    .line 467
    sub-int v2, v1, v0

    move v1, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    .line 471
    .end local v0    # "reduced":I
    :cond_1b
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 472
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 473
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 474
    .local v3, "first":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object v4, v3

    .line 475
    .local v4, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_24
    if-eqz v4, :cond_38

    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v5, p2, :cond_34

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 476
    :cond_34
    iget-object v5, v4, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object v4, v5

    goto :goto_24

    .line 480
    :cond_38
    if-eqz v4, :cond_44

    .line 481
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v5

    .line 482
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_53

    .line 483
    invoke-virtual {v4, p3}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V

    goto :goto_53

    .line 486
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_44
    const/4 v5, 0x0

    .line 487
    .restart local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    iget v6, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    .line 488
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v6

    aput-object v6, v0, v2

    .line 489
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_59

    .line 491
    :cond_53
    :goto_53
    nop

    .line 493
    move-object v6, p0

    .local v6, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 491
    return-object v5

    .line 493
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "c":I
    .end local v2    # "index":I
    .end local v3    # "first":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v4    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    :catchall_59
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 355
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->removeStale()V

    .line 356
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 358
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 356
    return-object v0

    .line 358
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()I
    .registers 19

    .line 498
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 499
    .local v1, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v2, v1

    .line 500
    .local v2, "oldCapacity":I
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-lt v2, v4, :cond_b

    .line 501
    return v3

    .line 517
    :cond_b
    shl-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v4

    .line 518
    .local v4, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v5, v4

    int-to-float v5, v5

    iget v6, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->loadFactor:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->threshold:I

    .line 519
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 520
    .local v5, "sizeMask":I
    const/4 v6, 0x0

    .line 521
    .local v6, "reduce":I
    nop

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_85

    .line 524
    aget-object v7, v1, v3

    .line 526
    .local v7, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    if-eqz v7, :cond_79

    .line 527
    iget-object v8, v7, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 528
    .local v8, "next":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    iget v9, v7, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    and-int/2addr v9, v5

    .line 531
    .local v9, "idx":I
    if-nez v8, :cond_33

    .line 532
    aput-object v7, v4, v9

    .line 521
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_7e

    .line 535
    :cond_33
    move-object v10, v7

    .line 536
    .local v10, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    move v11, v9

    .line 537
    .local v11, "lastIdx":I
    move-object v12, v10

    move-object v10, v8

    .local v10, "last":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local v12, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_37
    if-eqz v10, :cond_43

    .line 538
    iget v13, v10, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    and-int/2addr v13, v5

    .line 539
    .local v13, "k":I
    if-eq v13, v11, :cond_40

    .line 540
    move v11, v13

    .line 541
    move-object v12, v10

    .line 537
    .end local v13    # "k":I
    :cond_40
    iget-object v10, v10, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    goto :goto_37

    .line 544
    .end local v10    # "last":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_43
    aput-object v12, v4, v11

    .line 546
    move v10, v6

    move-object v6, v7

    .local v6, "p":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local v10, "reduce":I
    :goto_47
    if-eq v6, v12, :cond_73

    .line 548
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v13

    .line 549
    .local v13, "key":Ljava/lang/Object;, "TK;"
    if-nez v13, :cond_57

    .line 550
    add-int/lit8 v10, v10, 0x1

    .line 551
    nop

    .line 546
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_6c

    .line 553
    :cond_57
    iget v14, v6, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    and-int/2addr v14, v5

    .line 554
    .local v14, "k":I
    aget-object v15, v4, v14

    .line 555
    .local v15, "n":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v16, v1

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local v16, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    iget v1, v6, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    move/from16 v17, v2

    .end local v2    # "oldCapacity":I
    .local v17, "oldCapacity":I
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v13, v1, v15, v2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v1

    aput-object v1, v4, v14

    .line 546
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "k":I
    .end local v15    # "n":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_6c
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_47

    .line 521
    .end local v6    # "p":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v7    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v8    # "next":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "idx":I
    .end local v11    # "lastIdx":I
    .end local v12    # "lastRun":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_73
    move-object/from16 v16, v1

    move/from16 v17, v2

    move v6, v10

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .end local v10    # "reduce":I
    .local v6, "reduce":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    :goto_78
    goto :goto_7e

    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_79
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_78

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1f

    .line 560
    .end local v3    # "i":I
    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_85
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    iput-object v4, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 561
    return v6
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 21
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "refRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 570
    if-nez p4, :cond_14

    .line 571
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->removeStale()V

    goto :goto_14

    .line 609
    :catchall_11
    move-exception v0

    goto/16 :goto_85

    .line 573
    :cond_14
    :goto_14
    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 574
    .local v0, "c":I
    iget-object v6, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 575
    .local v6, "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v3

    .line 576
    .local v7, "index":I
    aget-object v8, v6, v7

    .line 577
    .local v8, "first":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    move-object v9, v8

    .line 579
    .local v9, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_21
    if-eqz v9, :cond_3b

    iget-object v10, v9, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->keyRef:Ljava/lang/Object;

    if-eq v2, v10, :cond_3b

    if-nez p4, :cond_37

    iget v10, v9, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v3, v10, :cond_37

    invoke-virtual {v9}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 581
    :cond_37
    iget-object v10, v9, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object v9, v10

    goto :goto_21

    .line 584
    :cond_3b
    const/4 v10, 0x0

    .line 585
    .local v10, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_76

    .line 586
    invoke-virtual {v9}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v11

    .line 587
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_4a

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_76

    .line 588
    :cond_4a
    move-object v10, v11

    .line 591
    iget v12, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->modCount:I

    .line 592
    iget-object v12, v9, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 593
    .local v12, "newFirst":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    move v13, v0

    move-object v0, v8

    .local v0, "p":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .local v13, "c":I
    :goto_55
    if-eq v0, v9, :cond_71

    .line 594
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v14

    .line 595
    .local v14, "pKey":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_60

    .line 596
    add-int/lit8 v13, v13, -0x1

    .line 597
    goto :goto_6b

    .line 600
    :cond_60
    iget v15, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v12, v2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v2

    .line 593
    move-object v12, v2

    .end local v14    # "pKey":Ljava/lang/Object;, "TK;"
    :goto_6b
    iget-object v2, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_55

    .line 603
    .end local v0    # "p":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :cond_71
    aput-object v12, v6, v7

    .line 604
    iput v13, v1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->count:I
    :try_end_75
    .catchall {:try_start_d .. :try_end_75} :catchall_11

    goto :goto_77

    .line 607
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    .end local v12    # "newFirst":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v13    # "c":I
    .local v0, "c":I
    :cond_76
    move v13, v0

    .line 609
    .end local v0    # "c":I
    .restart local v13    # "c":I
    :goto_77
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    move-object/from16 v2, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    move/from16 v3, p2

    .end local p2    # "hash":I
    .local v3, "hash":I
    move-object/from16 v4, p3

    .end local p3    # "value":Ljava/lang/Object;
    .local v4, "value":Ljava/lang/Object;
    move/from16 v5, p4

    .end local p4    # "refRemove":Z
    .local v5, "refRemove":Z
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 607
    return-object v10

    .line 609
    .end local v0    # "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "hash":I
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "refRemove":Z
    .end local v6    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "first":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v13    # "c":I
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "hash":I
    .restart local p3    # "value":Ljava/lang/Object;
    .restart local p4    # "refRemove":Z
    :goto_85
    move-object/from16 v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    move-object/from16 v6, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v6, "key":Ljava/lang/Object;
    move/from16 v3, p2

    .end local p2    # "hash":I
    .restart local v3    # "hash":I
    move-object/from16 v4, p3

    .end local p3    # "value":Ljava/lang/Object;
    .restart local v4    # "value":Ljava/lang/Object;
    move/from16 v5, p4

    .end local p4    # "refRemove":Z
    .restart local v5    # "refRemove":Z
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method removeStale()V
    .registers 6

    .line 616
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;

    move-object v1, v0

    .local v1, "ref":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;
    if-eqz v0, :cond_19

    .line 617
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;->keyRef()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$WeakKeyReference;->keyHash()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 619
    :cond_19
    return-void
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 440
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 442
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->removeStale()V

    .line 443
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 444
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_a
    if-eqz v0, :cond_1e

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_1a

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 445
    :cond_1a
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object v0, v1

    goto :goto_a

    .line 448
    :cond_1e
    const/4 v1, 0x0

    .line 449
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_29

    .line 450
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 451
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2f

    .line 453
    :cond_29
    nop

    .line 455
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 453
    return-object v1

    .line 455
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    :catchall_2f
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->lock()V

    .line 422
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->removeStale()V

    .line 423
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-result-object v0

    .line 424
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    :goto_a
    if-eqz v0, :cond_1e

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_1a

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 425
    :cond_1a
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    move-object v0, v1

    goto :goto_a

    .line 428
    :cond_1e
    const/4 v1, 0x0

    .line 429
    .local v1, "replaced":Z
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 430
    const/4 v1, 0x1

    .line 431
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_35

    .line 433
    :cond_2f
    nop

    .line 435
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    .line 433
    return v1

    .line 435
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "replaced":Z
    .end local v2    # "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    :catchall_35
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->unlock()V

    throw v0
.end method

.method setTable([Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment<TK;TV;>;"
    .local p1, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->threshold:I

    .line 328
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$HashEntry;

    .line 329
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap$Segment;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 330
    return-void
.end method
