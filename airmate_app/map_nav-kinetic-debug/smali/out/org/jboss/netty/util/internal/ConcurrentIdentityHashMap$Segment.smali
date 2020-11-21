.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
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
.field private static final serialVersionUID:J = 0x4845ed18d1b49dffL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field modCount:I

.field volatile transient table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
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

    .line 263
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 264
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->loadFactor:F

    .line 265
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->setTable([Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;)V

    .line 266
    return-void
.end method

.method private static keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;

    .line 274
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;
    .registers 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 270
    new-array v0, p0, [Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 5

    .line 560
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    if-eqz v0, :cond_27

    .line 561
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 563
    :try_start_7
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 564
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 565
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 567
    .end local v2    # "i":I
    :cond_14
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    .line 568
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    .line 569
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    nop

    .line 573
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 571
    goto :goto_27

    .line 570
    :catchall_21
    move-exception v0

    .line 573
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 570
    throw v0

    .line 573
    .end local v1    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    :cond_27
    :goto_27
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 335
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    if-eqz v0, :cond_1d

    .line 336
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    .line 337
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_1d

    .line 338
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_1a

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 339
    const/4 v1, 0x1

    return v1

    .line 341
    :cond_1a
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    goto :goto_8

    .line 344
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;

    .line 348
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 349
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 350
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v2, v0

    .line 351
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_29

    .line 352
    aget-object v4, v0, v3

    .local v4, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_d
    if-eqz v4, :cond_26

    .line 353
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v5

    .line 356
    .local v5, "opaque":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_1a

    .line 357
    invoke-virtual {p0, v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1b

    .line 359
    :cond_1a
    move-object v6, v5

    .line 362
    .local v6, "v":Ljava/lang/Object;, "TV;"
    :goto_1b
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 363
    const/4 v1, 0x1

    return v1

    .line 352
    .end local v5    # "opaque":Ljava/lang/Object;, "TV;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_23
    iget-object v4, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    goto :goto_d

    .line 351
    .end local v4    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 368
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_29
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

    .line 317
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    if-eqz v0, :cond_27

    .line 318
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    .line 319
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-eqz v0, :cond_27

    .line 320
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_24

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 321
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "opaque":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1f

    .line 323
    return-object v1

    .line 326
    :cond_1f
    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 328
    .end local v1    # "opaque":Ljava/lang/Object;, "TV;"
    :cond_24
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    goto :goto_8

    .line 331
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .registers 4
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 291
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;
    .registers 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;TV;)",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;Ljava/lang/Object;)V

    return-object v0
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

    .line 410
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 412
    :try_start_3
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    .line 413
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "c":I
    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->threshold:I

    if-le v0, v2, :cond_18

    .line 414
    .end local v0    # "c":I
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->rehash()I

    move-result v0

    .line 415
    .local v0, "reduced":I
    if-lez v0, :cond_18

    .line 416
    sub-int v2, v1, v0

    move v1, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    .line 420
    .end local v0    # "reduced":I
    :cond_18
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 421
    .local v0, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 422
    .local v2, "index":I
    aget-object v3, v0, v2

    .line 423
    .local v3, "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    move-object v4, v3

    .line 424
    .local v4, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_21
    if-eqz v4, :cond_35

    iget v5, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v5, p2, :cond_31

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 425
    :cond_31
    iget-object v5, v4, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object v4, v5

    goto :goto_21

    .line 429
    :cond_35
    if-eqz v4, :cond_41

    .line 430
    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v5

    .line 431
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_50

    .line 432
    invoke-virtual {v4, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->setValue(Ljava/lang/Object;)V

    goto :goto_50

    .line 435
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_41
    const/4 v5, 0x0

    .line 436
    .restart local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    iget v6, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    .line 437
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v6

    aput-object v6, v0, v2

    .line 438
    iput v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_56

    .line 440
    :cond_50
    :goto_50
    nop

    .line 442
    move-object v6, p0

    .local v6, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 440
    return-object v5

    .line 442
    .end local v0    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "c":I
    .end local v2    # "index":I
    .end local v3    # "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v4    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    :catchall_56
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    throw v0
.end method

.method readValueUnderLock(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 308
    :try_start_3
    invoke-virtual {p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 310
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 308
    return-object v0

    .line 310
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()I
    .registers 19

    .line 447
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 448
    .local v1, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v2, v1

    .line 449
    .local v2, "oldCapacity":I
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-lt v2, v4, :cond_b

    .line 450
    return v3

    .line 466
    :cond_b
    shl-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->newArray(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v4

    .line 467
    .local v4, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v5, v4

    int-to-float v5, v5

    iget v6, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->loadFactor:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->threshold:I

    .line 468
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 469
    .local v5, "sizeMask":I
    const/4 v6, 0x0

    .line 470
    .local v6, "reduce":I
    nop

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_85

    .line 473
    aget-object v7, v1, v3

    .line 475
    .local v7, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    if-eqz v7, :cond_79

    .line 476
    iget-object v8, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 477
    .local v8, "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    iget v9, v7, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    and-int/2addr v9, v5

    .line 480
    .local v9, "idx":I
    if-nez v8, :cond_33

    .line 481
    aput-object v7, v4, v9

    .line 470
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_7e

    .line 484
    :cond_33
    move-object v10, v7

    .line 485
    .local v10, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    move v11, v9

    .line 486
    .local v11, "lastIdx":I
    move-object v12, v10

    move-object v10, v8

    .local v10, "last":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .local v12, "lastRun":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_37
    if-eqz v10, :cond_43

    .line 487
    iget v13, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    and-int/2addr v13, v5

    .line 488
    .local v13, "k":I
    if-eq v13, v11, :cond_40

    .line 489
    move v11, v13

    .line 490
    move-object v12, v10

    .line 486
    .end local v13    # "k":I
    :cond_40
    iget-object v10, v10, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    goto :goto_37

    .line 493
    .end local v10    # "last":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :cond_43
    aput-object v12, v4, v11

    .line 495
    move v10, v6

    move-object v6, v7

    .local v6, "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .local v10, "reduce":I
    :goto_47
    if-eq v6, v12, :cond_73

    .line 497
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v13

    .line 498
    .local v13, "key":Ljava/lang/Object;, "TK;"
    if-nez v13, :cond_57

    .line 499
    add-int/lit8 v10, v10, 0x1

    .line 500
    nop

    .line 495
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_6c

    .line 502
    :cond_57
    iget v14, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    and-int/2addr v14, v5

    .line 503
    .local v14, "k":I
    aget-object v15, v4, v14

    .line 504
    .local v15, "n":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v16, v1

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .local v16, "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    iget v1, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    move/from16 v17, v2

    .end local v2    # "oldCapacity":I
    .local v17, "oldCapacity":I
    invoke-virtual {v6}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v13, v1, v15, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v1

    aput-object v1, v4, v14

    .line 495
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "k":I
    .end local v15    # "n":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_6c
    iget-object v6, v6, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_47

    .line 470
    .end local v6    # "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v7    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v8    # "next":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "idx":I
    .end local v11    # "lastIdx":I
    .end local v12    # "lastRun":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_73
    move-object/from16 v16, v1

    move/from16 v17, v2

    move v6, v10

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .end local v10    # "reduce":I
    .local v6, "reduce":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    :goto_78
    goto :goto_7e

    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_79
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_78

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1f

    .line 509
    .end local v3    # "i":I
    .end local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v17    # "oldCapacity":I
    .restart local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v2    # "oldCapacity":I
    :cond_85
    move-object/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "oldCapacity":I
    .restart local v16    # "oldTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .restart local v17    # "oldCapacity":I
    iput-object v4, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 510
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

    .line 517
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 519
    :try_start_b
    iget v0, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 520
    .local v0, "c":I
    iget-object v5, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 521
    .local v5, "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v3

    .line 522
    .local v6, "index":I
    aget-object v7, v5, v6

    .line 523
    .local v7, "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    move-object v8, v7

    .line 525
    .local v8, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_18
    if-eqz v8, :cond_32

    iget-object v9, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key:Ljava/lang/Object;

    if-eq v2, v9, :cond_32

    if-nez p4, :cond_2e

    iget v10, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v3, v10, :cond_2e

    invoke-virtual {v8}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    .line 527
    :cond_2e
    iget-object v10, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object v8, v10

    goto :goto_18

    .line 530
    :cond_32
    const/4 v10, 0x0

    .line 531
    .local v10, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v8, :cond_6d

    .line 532
    invoke-virtual {v8}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v11

    .line 533
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_41

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6d

    .line 534
    :cond_41
    move-object v10, v11

    .line 537
    iget v12, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->modCount:I

    .line 538
    iget-object v12, v8, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 539
    .local v12, "newFirst":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    move v13, v0

    move-object v0, v7

    .local v0, "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .local v13, "c":I
    :goto_4c
    if-eq v0, v8, :cond_68

    .line 540
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v14

    .line 541
    .local v14, "pKey":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_57

    .line 542
    add-int/lit8 v13, v13, -0x1

    .line 543
    goto :goto_62

    .line 546
    :cond_57
    iget v15, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v12, v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->newHashEntry(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v2

    .line 539
    move-object v12, v2

    .end local v14    # "pKey":Ljava/lang/Object;, "TK;"
    :goto_62
    iget-object v2, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object v0, v2

    move-object/from16 v2, p1

    goto :goto_4c

    .line 549
    .end local v0    # "p":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :cond_68
    aput-object v12, v5, v6

    .line 550
    iput v13, v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->count:I
    :try_end_6c
    .catchall {:try_start_b .. :try_end_6c} :catchall_7c

    goto :goto_6e

    .line 553
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    .end local v12    # "newFirst":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v13    # "c":I
    .local v0, "c":I
    :cond_6d
    move v13, v0

    .line 555
    .end local v0    # "c":I
    .restart local v13    # "c":I
    :goto_6e
    move-object/from16 v0, p0

    .local v0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    move-object/from16 v2, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    move/from16 v3, p2

    .end local p2    # "hash":I
    .local v3, "hash":I
    move-object/from16 v4, p3

    .end local p3    # "value":Ljava/lang/Object;
    .local v4, "value":Ljava/lang/Object;
    move/from16 v9, p4

    .end local p4    # "refRemove":Z
    .local v9, "refRemove":Z
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 553
    return-object v10

    .line 555
    .end local v0    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "hash":I
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "tab":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v6    # "index":I
    .end local v7    # "first":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v8    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "refRemove":Z
    .end local v10    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v13    # "c":I
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "hash":I
    .restart local p3    # "value":Ljava/lang/Object;
    .restart local p4    # "refRemove":Z
    :catchall_7c
    move-exception v0

    move-object/from16 v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    move-object/from16 v5, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v5, "key":Ljava/lang/Object;
    move/from16 v3, p2

    .end local p2    # "hash":I
    .restart local v3    # "hash":I
    move-object/from16 v4, p3

    .end local p3    # "value":Ljava/lang/Object;
    .restart local v4    # "value":Ljava/lang/Object;
    move/from16 v6, p4

    .end local p4    # "refRemove":Z
    .local v6, "refRemove":Z
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 391
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 393
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    .line 394
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_1b

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_17

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 395
    :cond_17
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object v0, v1

    goto :goto_7

    .line 398
    :cond_1b
    const/4 v1, 0x0

    .line 399
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_26

    .line 400
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 401
    invoke-virtual {v0, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2c

    .line 403
    :cond_26
    nop

    .line 405
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 403
    return-object v1

    .line 405
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    :catchall_2c
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

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

    .line 372
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->lock()V

    .line 374
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->getFirst(I)Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-result-object v0

    .line 375
    .local v0, "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_1b

    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_17

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 376
    :cond_17
    iget-object v1, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->next:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    move-object v0, v1

    goto :goto_7

    .line 379
    :cond_1b
    const/4 v1, 0x0

    .line 380
    .local v1, "replaced":Z
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 381
    const/4 v1, 0x1

    .line 382
    invoke-virtual {v0, p4}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;->setValue(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_32

    .line 384
    :cond_2c
    nop

    .line 386
    move-object v2, p0

    .local v2, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    .line 384
    return v1

    .line 386
    .end local v0    # "e":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "replaced":Z
    .end local v2    # "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    :catchall_32
    move-exception v0

    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->unlock()V

    throw v0
.end method

.method setTable([Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;, "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment<TK;TV;>;"
    .local p1, "newTable":[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;, "[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->threshold:I

    .line 283
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$Segment;->table:[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$HashEntry;

    .line 284
    return-void
.end method
