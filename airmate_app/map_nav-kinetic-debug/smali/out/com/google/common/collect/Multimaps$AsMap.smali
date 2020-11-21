.class abstract Lcom/google/common/collect/Multimaps$AsMap;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2034
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 2050
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 2091
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 2092
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2087
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 2043
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$AsMap;)V

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 2034
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
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

    .line 2071
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 2083
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

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

    .line 2079
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

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

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 2034
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
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

    .line 2075
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method removeValuesForKey(Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2047
    .local p0, "this":Lcom/google/common/collect/Multimaps$AsMap;, "Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    .line 2048
    return-void
.end method

.method public abstract size()I
.end method
