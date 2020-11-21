.class abstract Lcom/google/common/collect/Multimaps$Keys;
.super Lcom/google/common/collect/AbstractMultiset;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1831
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 1863
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1957
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 1958
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1903
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 5
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1912
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1913
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1914
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_1c

    goto :goto_21

    :cond_1c
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_20} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_20} :catch_23

    move v0, v2

    :goto_21
    return v0

    .line 1916
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_22
    return v0

    .line 1919
    :catch_23
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 1917
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_25
    move-exception v1

    .line 1918
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1860
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/Multimaps$Keys;)V

    return-object v0
.end method

.method distinctElements()I
    .registers 2

    .line 1856
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1961
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1835
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys$1;

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multimaps$Keys$1;-><init>(Lcom/google/common/collect/Multimaps$Keys;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1907
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method abstract multimap()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 7
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 1925
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>;"
    const/4 v0, 0x0

    if-ltz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1926
    if-nez p2, :cond_10

    .line 1927
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1932
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_1e} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1e} :catch_3d

    .line 1937
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    nop

    .line 1939
    if-nez v1, :cond_22

    .line 1940
    return v0

    .line 1943
    :cond_22
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1944
    .local v2, "oldCount":I
    if-lt p2, v2, :cond_2c

    .line 1945
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_3c

    .line 1947
    :cond_2c
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1948
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    nop

    .local v0, "i":I
    :goto_31
    if-ge v0, p2, :cond_3c

    .line 1949
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1950
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1948
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1953
    .end local v0    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_3c
    :goto_3c
    return v2

    .line 1935
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v2    # "oldCount":I
    :catch_3d
    move-exception v1

    .line 1936
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 1933
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_3f
    move-exception v1

    .line 1934
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method
