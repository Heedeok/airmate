.class Lcom/google/common/collect/Collections2$FilteredCollection;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "unfiltered":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 115
    iput-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    .line 116
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 133
    .local v1, "element":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_4

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    .line 140
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    .line 141
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "element"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    move-object v0, p1

    .line 156
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_10} :catch_15

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1

    .line 159
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catch_15
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1

    .line 157
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_17
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/google/common/collect/Collections2$FilteredCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    const/4 v2, 0x0

    return v2

    .line 171
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "element":Ljava/lang/Object;
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method createCombined(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Collections2$FilteredCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/collect/Collections2$FilteredCollection<",
            "TE;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "newPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    new-instance v0, Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 176
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "element"    # Ljava/lang/Object;

    .line 190
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    move-object v0, p1

    .line 193
    .local v0, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_10} :catch_15

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1

    .line 196
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catch_15
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1

    .line 194
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_17
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1
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

    .line 203
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/google/common/collect/Collections2$FilteredCollection$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Collections2$FilteredCollection$1;-><init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V

    .line 210
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

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

    .line 215
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Lcom/google/common/collect/Collections2$FilteredCollection$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Collections2$FilteredCollection$2;-><init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V

    .line 223
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/google/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .registers 2

    .line 228
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 234
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 243
    .local p0, "this":Lcom/google/common/collect/Collections2$FilteredCollection;, "Lcom/google/common/collect/Collections2$FilteredCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
