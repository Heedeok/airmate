.class Lcom/google/common/collect/Multimaps$FilteredMultimap;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredMultimap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;,
        Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final NOT_EMPTY:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/util/Collection<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field keys:Lcom/google/common/collect/AbstractMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultiset<",
            "TK;>;"
        }
    .end annotation
.end field

.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
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
.method static constructor <clinit>()V
    .registers 1

    .line 2471
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$1;

    invoke-direct {v0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->NOT_EMPTY:Lcom/google/common/base/Predicate;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2241
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2242
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    .line 2243
    iput-object p2, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    .line 2244
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 2468
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap:Ljava/util/Map;

    :goto_d
    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 2327
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2328
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2269
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2255
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 2259
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 2479
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$2;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V

    .line 2485
    .local v0, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<TK;Ljava/util/Collection<TV;>;Ljava/util/Collection<TV;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v1

    .line 2489
    .local v1, "transformed":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    sget-object v2, Lcom/google/common/collect/Multimaps$FilteredMultimap;->NOT_EMPTY:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->filterValues(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v2

    .line 2493
    .local v2, "filtered":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    new-instance v3, Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;

    invoke-direct {v3, p0, v2}, Lcom/google/common/collect/Multimaps$FilteredMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/util/Map;)V

    return-object v3
.end method

.method public entries()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2434
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    goto :goto_15

    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries:Ljava/util/Collection;

    :goto_15
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2331
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_4

    .line 2332
    const/4 v0, 0x1

    return v0

    .line 2334
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_18

    .line 2335
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 2336
    .local v0, "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2338
    .end local v0    # "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/google/common/base/Predicate<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2360
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TV;>;"
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_c

    .line 2361
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2363
    :cond_c
    invoke-static {p1, p2}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2368
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 2342
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 2251
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2372
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 2645
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->keys:Lcom/google/common/collect/AbstractMultiset;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->keys:Lcom/google/common/collect/AbstractMultiset;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->keys:Lcom/google/common/collect/AbstractMultiset;

    :goto_e
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 2273
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2274
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 2289
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2290
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_8

    .line 2292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_24
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 2282
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2283
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_4

    .line 2285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_16
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2278
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2307
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2308
    .local v0, "removed":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2309
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v1, :cond_2d

    .line 2310
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2311
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2313
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v3}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2314
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2315
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2317
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2c
    goto :goto_16

    .line 2319
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_2d
    iget-object v2, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    instance-of v2, v2, Lcom/google/common/collect/SetMultimap;

    if-eqz v2, :cond_3c

    .line 2320
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 2322
    :cond_3c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method removeEntriesIf(Lcom/google/common/base/Predicate;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)Z"
        }
    .end annotation

    .line 2443
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "removalPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2444
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    const/4 v1, 0x0

    .line 2445
    .local v1, "changed":Z
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2448
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2449
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 2450
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    new-instance v5, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;

    invoke-direct {v5, p0, v3}, Lcom/google/common/collect/Multimaps$FilteredMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;Ljava/lang/Object;)V

    .line 2451
    .local v5, "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TV;>;"
    invoke-virtual {p0, v4, v5}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v6

    .line 2452
    .local v6, "filteredCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {v3, v6}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    .line 2453
    .local v7, "filteredEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {p1, v7}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4c

    .line 2454
    const/4 v1, 0x1

    .line 2455
    invoke-static {v4, v5}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 2456
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4c

    .line 2458
    :cond_49
    invoke-interface {v6}, Ljava/util/Collection;->clear()V

    .line 2461
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v5    # "valuePredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TV;>;"
    .end local v6    # "filteredCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v7    # "filteredEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_4c
    :goto_4c
    goto :goto_f

    .line 2462
    :cond_4d
    return v1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2296
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2297
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_4

    .line 2301
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_16
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 2302
    .local v0, "oldValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 2303
    return-object v0
.end method

.method satisfiesPredicate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2265
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 2247
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2346
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2378
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Values;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap;->values:Ljava/util/Collection;

    :goto_e
    return-object v0
.end method
