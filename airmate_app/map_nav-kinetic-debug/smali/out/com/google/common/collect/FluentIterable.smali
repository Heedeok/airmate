.class public abstract Lcom/google/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 74
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 80
    return-void
.end method

.method public static from(Lcom/google/common/collect/FluentIterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    .local p0, "iterable":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/FluentIterable;

    return-object v0
.end method

.method public static from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lcom/google/common/collect/FluentIterable;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/FluentIterable;

    goto :goto_d

    :cond_8
    new-instance v0, Lcom/google/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    :goto_d
    return-object v0
.end method


# virtual methods
.method public final allMatch(Lcom/google/common/base/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Lcom/google/common/base/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final cycle()Lcom/google/common/collect/FluentIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    :goto_19
    return-object v1
.end method

.method public final firstMatch(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 300
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final last()Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "TE;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_24

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/List;

    .line 233
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 234
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1

    .line 236
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_24
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_35

    .line 240
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1

    .line 248
    :cond_35
    iget-object v1, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v1, v1, Ljava/util/SortedSet;

    if-eqz v1, :cond_48

    .line 249
    iget-object v1, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/SortedSet;

    .line 250
    .local v1, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 254
    .end local v1    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_57

    .line 256
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "current":Ljava/lang/Object;, "TE;"
    :cond_57
    goto :goto_48
.end method

.method public final limit(I)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 122
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/FluentIterable<",
            "TE;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newArray(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toImmutableList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toImmutableSet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toImmutableSortedSet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 115
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TE;TT;>;)",
            "Lcom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/google/common/collect/FluentIterable;, "Lcom/google/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TE;TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method
