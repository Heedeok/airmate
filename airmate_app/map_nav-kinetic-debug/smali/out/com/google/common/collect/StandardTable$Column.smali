.class Lcom/google/common/collect/StandardTable$Column;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$Column$Values;,
        Lcom/google/common/collect/StandardTable$Column$KeySet;,
        Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;,
        Lcom/google/common/collect/StandardTable$Column$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field columnValues:Lcom/google/common/collect/StandardTable$Column$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.Column.Values;"
        }
    .end annotation
.end field

.field keySet:Lcom/google/common/collect/StandardTable$Column$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.Column.KeySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 507
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    .line 508
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 519
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/StandardTable$Column$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-object v0
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

    .line 515
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->keySet:Lcom/google/common/collect/StandardTable$Column$KeySet;

    .line 643
    .local v0, "result":Lcom/google/common/collect/StandardTable$Column$KeySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.KeySet;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/StandardTable$Column$KeySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/StandardTable$Column$KeySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->keySet:Lcom/google/common/collect/StandardTable$Column$KeySet;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p1, "key":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method removePredicate(Lcom/google/common/base/Predicate;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;)Z"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TR;TV;>;>;"
    const/4 v0, 0x0

    .line 543
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 545
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 547
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 548
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 549
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_45

    new-instance v5, Lcom/google/common/collect/ImmutableEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 552
    iget-object v5, p0, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v0, 0x1

    .line 554
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 558
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_45
    goto :goto_d

    .line 559
    :cond_46
    return v0
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

    .line 533
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column;->columnValues:Lcom/google/common/collect/StandardTable$Column$Values;

    .line 534
    .local v0, "result":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/StandardTable$Column$Values;

    invoke-direct {v1, p0}, Lcom/google/common/collect/StandardTable$Column$Values;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable$Column;->columnValues:Lcom/google/common/collect/StandardTable$Column$Values;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method
