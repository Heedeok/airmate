.class Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeysEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$Keys;)V
    .registers 2

    .line 1863
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1881
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1882
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 1883
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v2}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 1884
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2a

    const/4 v1, 0x1

    nop

    :cond_2a
    return v1

    .line 1886
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2b
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1877
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1869
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1865
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1890
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_2c

    .line 1891
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 1892
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v1}, Lcom/google/common/collect/Multimaps$Keys;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1893
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 1894
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 1895
    const/4 v2, 0x1

    return v2

    .line 1898
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 1873
    .local p0, "this":Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;, "Lcom/google/common/collect/Multimaps$Keys<TK;TV;>.KeysEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->distinctElements()I

    move-result v0

    return v0
.end method
