.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/AbstractMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSCache$_CacheEntry;,
        Ljavax/jmdns/impl/DNSCache$_EmptyCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EmptyCache:Ljavax/jmdns/impl/DNSCache;


# instance fields
.field private transient _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljavax/jmdns/impl/DNSCache$_EmptyCache;

    invoke-direct {v0}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSCache;->EmptyCache:Ljavax/jmdns/impl/DNSCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 257
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 258
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 276
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .registers 3
    .param p1, "map"    # Ljavax/jmdns/impl/DNSCache;

    .line 264
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    goto :goto_9

    :cond_7
    const/16 v0, 0x400

    :goto_9
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 265
    if-eqz p1, :cond_11

    .line 266
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_11
    return-void
.end method

.method private _getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 374
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 8
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    monitor-enter p0

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "result":Z
    if-eqz p1, :cond_40

    .line 454
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 456
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v2, 0x0

    .line 457
    .local v2, "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_1c

    .line 458
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    goto :goto_22

    .line 460
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 462
    :goto_22
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    if-eqz v1, :cond_2b

    .line 465
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 467
    :cond_2b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3d

    .line 470
    :goto_3b
    const/4 v0, 0x1

    goto :goto_40

    .line 451
    .end local v0    # "result":Z
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    .end local v2    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 472
    .restart local v0    # "result":Z
    .restart local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_40
    :goto_40
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized allValues()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 350
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v2, :cond_1f

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    .line 353
    .end local v2    # "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_1f
    goto :goto_e

    .line 354
    :cond_20
    monitor-exit p0

    return-object v0

    .line 347
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 292
    :cond_b
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;

    monitor-enter p0

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "result":Ljavax/jmdns/impl/DNSEntry;
    :try_start_2
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 410
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_33

    .line 411
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 412
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v4, p3, :cond_30

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_35

    if-eqz v4, :cond_32

    .line 413
    :cond_30
    move-object v0, v3

    .line 414
    goto :goto_33

    .line 416
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_32
    goto :goto_c

    .line 418
    :cond_33
    :goto_33
    monitor-exit p0

    return-object v0

    .line 407
    .end local v0    # "result":Ljavax/jmdns/impl/DNSEntry;
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    .end local p3    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .registers 7
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    monitor-enter p0

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":Ljavax/jmdns/impl/DNSEntry;
    if-eqz p1, :cond_2a

    .line 386
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 387
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_2a

    .line 388
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 389
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_27

    if-eqz v4, :cond_26

    .line 390
    move-object v0, v3

    .line 391
    goto :goto_2a

    .line 393
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_26
    goto :goto_12

    .line 383
    .end local v0    # "result":Ljavax/jmdns/impl/DNSEntry;
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1

    .line 396
    .restart local v0    # "result":Ljavax/jmdns/impl/DNSEntry;
    .restart local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_1
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 365
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_e

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_13

    .line 368
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    move-object v0, v1

    .line 370
    :goto_13
    monitor-exit p0

    return-object v0

    .line 363
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "name":Ljava/lang/String;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_1
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 431
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_39

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 433
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 435
    .local v2, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v3, p3, :cond_38

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 436
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 438
    .end local v2    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_38
    goto :goto_11

    .line 440
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_40

    move-object v0, v1

    .line 442
    :cond_3e
    monitor-exit p0

    return-object v0

    .line 429
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    .end local p3    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    .line 301
    .local v1, "stringKey":Ljava/lang/String;
    :goto_d
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 302
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_2e

    .line 303
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 304
    return-object v3

    .line 307
    :cond_2e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    .line 308
    return-object v3

    .line 311
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_35
    goto :goto_15

    .line 312
    :cond_36
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 45
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 320
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    monitor-enter p0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "oldValue":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :try_start_2
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 323
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_10

    .line 324
    invoke-interface {v1, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    goto :goto_1c

    .line 326
    :cond_10
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-direct {v3, p1, p2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 329
    .end local v0    # "oldValue":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public declared-synchronized removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 5
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    monitor-enter p0

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "result":Z
    if-eqz p1, :cond_30

    .line 484
    :try_start_4
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 485
    .local v1, "existingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_30

    .line 486
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 489
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2d

    goto :goto_30

    .line 481
    .end local v0    # "result":Z
    .end local v1    # "existingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    .end local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 493
    .restart local v0    # "result":Z
    .restart local p1    # "dnsEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_30
    :goto_30
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .registers 9
    .param p1, "newDNSEntry"    # Ljavax/jmdns/impl/DNSEntry;
    .param p2, "existingDNSEntry"    # Ljavax/jmdns/impl/DNSEntry;

    monitor-enter p0

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "result":Z
    if-eqz p1, :cond_53

    if-eqz p2, :cond_53

    :try_start_6
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 507
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 509
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v2, 0x0

    .line 510
    .local v2, "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_2c

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    goto :goto_32

    .line 513
    :cond_2c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 515
    :goto_32
    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    if-eqz v1, :cond_3e

    .line 519
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 521
    :cond_3e
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_50

    .line 524
    :goto_4e
    const/4 v0, 0x1

    goto :goto_53

    .line 504
    .end local v0    # "result":Z
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    .end local v2    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local p1    # "newDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    .end local p2    # "existingDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1

    .line 526
    .restart local v0    # "result":Z
    .restart local p1    # "newDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    .restart local p2    # "existingDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_53
    :goto_53
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 534
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 535
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v1, "\t---- cache ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 537
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const-string v3, "\n\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    goto :goto_15

    .line 540
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    monitor-exit p0

    return-object v1

    .line 533
    .end local v0    # "aLog":Ljava/lang/StringBuffer;
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
