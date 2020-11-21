.class Lcom/google/common/collect/StandardTable$Column$Values;
.super Ljava/util/AbstractCollection;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .registers 2

    .line 691
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 705
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 706
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .line 701
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 709
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 710
    return v0

    .line 712
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<TC;TV;>;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 714
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 715
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/google/common/collect/ImmutableEntry;

    iget-object v5, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v5, v5, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-direct {v4, v5, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 717
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 718
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 720
    :cond_3a
    const/4 v0, 0x1

    return v0

    .line 722
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_3c
    goto :goto_12

    .line 723
    :cond_3d
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 727
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column$Values$1;-><init>(Lcom/google/common/collect/StandardTable$Column$Values;Ljava/util/Collection;)V

    .line 734
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TR;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/StandardTable$Column;->removePredicate(Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 738
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$Values$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column$Values$2;-><init>(Lcom/google/common/collect/StandardTable$Column$Values;Ljava/util/Collection;)V

    .line 745
    .local v0, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TR;TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/StandardTable$Column;->removePredicate(Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .registers 2

    .line 697
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$Values;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Column;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
