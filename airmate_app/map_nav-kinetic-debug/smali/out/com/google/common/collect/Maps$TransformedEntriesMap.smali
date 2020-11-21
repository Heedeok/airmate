.class Lcom/google/common/collect/Maps$TransformedEntriesMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation
.end field

.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lcom/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1153
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p2, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1154
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 1155
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    .line 1156
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1184
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1185
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1163
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1194
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->entrySet:Ljava/util/Set;

    .line 1195
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV2;>;>;"
    if-nez v0, :cond_c

    .line 1196
    new-instance v1, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->entrySet:Ljava/util/Set;

    .line 1222
    :cond_c
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1169
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1170
    .local v0, "value":Ljava/lang/Object;, "TV1;"
    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_19

    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_19
    return-object v1
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

    .line 1188
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1178
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1159
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1228
    .local p0, "this":Lcom/google/common/collect/Maps$TransformedEntriesMap;, "Lcom/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->values:Ljava/util/Collection;

    .line 1229
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV2;>;"
    if-nez v0, :cond_c

    .line 1230
    new-instance v1, Lcom/google/common/collect/Maps$TransformedEntriesMap$2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$2;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V

    iput-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->values:Ljava/util/Collection;

    return-object v1

    .line 1236
    :cond_c
    return-object v0
.end method
