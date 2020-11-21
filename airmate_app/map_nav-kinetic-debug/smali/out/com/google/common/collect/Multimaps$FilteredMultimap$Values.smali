.class Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;
.super Lcom/google/common/collect/Multimaps$Values;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$FilteredMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Values<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V
    .registers 2

    .line 2381
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$Values;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2387
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2383
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2393
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2394
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2396
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v2, v2, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2397
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2398
    const/4 v2, 0x1

    return v2

    .line 2400
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_31
    goto :goto_c

    .line 2401
    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2405
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 2406
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2407
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2409
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2410
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2411
    const/4 v0, 0x1

    .line 2413
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_31
    goto :goto_d

    .line 2414
    :cond_32
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2418
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 2419
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2420
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2422
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2423
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2424
    const/4 v0, 0x1

    .line 2426
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_31
    goto :goto_d

    .line 2427
    :cond_32
    return v0
.end method
