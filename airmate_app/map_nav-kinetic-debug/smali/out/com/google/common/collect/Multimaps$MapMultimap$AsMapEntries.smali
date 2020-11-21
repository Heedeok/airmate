.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$MapMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .registers 2

    .line 1195
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1220
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1221
    return v1

    .line 1223
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1224
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Set;

    if-nez v2, :cond_12

    .line 1225
    return v1

    .line 1227
    :cond_12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1228
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/collect/Multimaps$MapMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v1, 0x1

    nop

    :cond_35
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
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

    .line 1201
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1233
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1234
    return v1

    .line 1236
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1237
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Set;

    if-nez v2, :cond_12

    .line 1238
    return v1

    .line 1240
    :cond_12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1241
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v1, 0x1

    nop

    :cond_3f
    return v1
.end method

.method public size()I
    .registers 2

    .line 1197
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
