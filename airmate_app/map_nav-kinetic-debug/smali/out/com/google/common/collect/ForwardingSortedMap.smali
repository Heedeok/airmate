.class public abstract Lcom/google/common/collect/ForwardingSortedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ForwardingSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 60
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "k1"    # Ljava/lang/Object;
    .param p2, "k2"    # Ljava/lang/Object;

    .line 97
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 98
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_e

    .line 99
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 101
    :cond_e
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 54
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .registers 2

    .line 54
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 117
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    move-object v0, p0

    .line 118
    .local v0, "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "ceilingKey":Ljava/lang/Object;
    invoke-direct {p0, v2, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_e} :catch_17
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_e} :catch_13

    if-nez v3, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1

    .line 124
    .end local v0    # "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    .end local v2    # "ceilingKey":Ljava/lang/Object;
    :catch_13
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/NullPointerException;
    return v1

    .line 122
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_15
    move-exception v0

    .line 123
    .local v0, "e":Ljava/util/NoSuchElementException;
    return v1

    .line 120
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catch_17
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method protected standardRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    move-object v0, p0

    .line 142
    .local v0, "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 146
    .local v3, "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/google/common/collect/ForwardingSortedMap;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2c

    .line 147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 148
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2b} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2b} :catch_2e

    .line 149
    return-object v4

    .line 156
    .end local v0    # "self":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Object;TV;>;"
    .end local v2    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;>;"
    .end local v3    # "ceilingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;TV;>;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2c
    nop

    .line 157
    return-object v1

    .line 154
    :catch_2e
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object v1

    .line 152
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_30
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1
.end method

.method protected standardSubMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/collect/ForwardingSortedMap;, "Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
