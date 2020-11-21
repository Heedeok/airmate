.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 46
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_18

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 51
    .local v0, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<*>;"
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 52
    .local v1, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v1, :cond_17

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    .line 55
    .end local v0    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<*>;"
    :cond_17
    goto :goto_25

    .end local v1    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_18
    instance-of v0, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v0, :cond_24

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/SortedIterable;

    invoke-interface {v0}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v1

    goto :goto_25

    .line 58
    :cond_24
    const/4 v1, 0x0

    .restart local v1    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :goto_25
    move-object v0, v1

    .line 60
    .end local v1    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static singletonEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 188
    .local p0, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lcom/google/common/collect/SortedIterables$2;

    invoke-direct {v0}, Lcom/google/common/collect/SortedIterables$2;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static sortedCounts(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 135
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_2b

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 137
    .local v0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 138
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 140
    :cond_12
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/SortedIterables$1;

    invoke-direct {v3}, Lcom/google/common/collect/SortedIterables$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    return-object v1

    .line 149
    .end local v0    # "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    :cond_2b
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_46

    .line 151
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    goto :goto_41

    .line 154
    :cond_39
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    nop

    .line 158
    .local v0, "sortedElements":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :goto_41
    invoke-static {v0}, Lcom/google/common/collect/SortedIterables;->singletonEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "sortedElements":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_46
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "current":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 162
    .local v1, "currentCount":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, "sortedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 164
    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-lez v1, :cond_75

    .line 165
    invoke-interface {p0, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_6b

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 168
    :cond_6b
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    move-object v0, v4

    .line 170
    const/4 v1, 0x1

    goto :goto_56

    .line 173
    :cond_75
    move-object v0, v4

    .line 174
    const/4 v1, 0x1

    goto :goto_56

    .line 177
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_78
    if-lez v1, :cond_81

    .line 178
    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_81
    return-object v2

    .line 182
    .end local v0    # "current":Ljava/lang/Object;, "TE;"
    .end local v1    # "currentCount":I
    .end local v2    # "sortedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    :cond_82
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 183
    .local v0, "multiset":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 184
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static sortedCounts(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 124
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 125
    .local v0, "multiset":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 126
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static sortedUnique(Ljava/util/Comparator;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_b

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 85
    :cond_b
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_21

    .line 86
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 89
    :cond_19
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    return-object v0

    .line 93
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_21
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 94
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 95
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 97
    :cond_30
    invoke-static {p0, v0}, Lcom/google/common/collect/SortedIterables;->uniquifySortedArray(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static sortedUnique(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    .local v0, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 72
    return-object v0
.end method

.method private static uniquifySortedArray(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;[TE;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 102
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    if-nez v0, :cond_8

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 105
    :cond_8
    const/4 v0, 0x1

    .line 106
    .local v0, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 107
    aget-object v2, p1, v1

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p1, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 108
    .local v2, "cmp":I
    if-eqz v2, :cond_20

    .line 109
    add-int/lit8 v3, v0, 0x1

    .local v3, "length":I
    aget-object v4, p1, v1

    aput-object v4, p1, v0

    .line 106
    move v0, v3

    .end local v2    # "cmp":I
    .end local v3    # "length":I
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 112
    .end local v1    # "i":I
    :cond_23
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 113
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 115
    :cond_2a
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
