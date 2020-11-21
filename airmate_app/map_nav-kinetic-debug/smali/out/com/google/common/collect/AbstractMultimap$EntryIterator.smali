.class Lcom/google/common/collect/AbstractMultimap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 2

    .line 1123
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    invoke-static {p1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    .line 1125
    iget-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1126
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->findValueIteratorAndKey()V

    goto :goto_25

    .line 1128
    :cond_1f
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    .line 1130
    :goto_25
    return-void
.end method


# virtual methods
.method findValueIteratorAndKey()V
    .registers 3

    .line 1133
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    .line 1135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    .line 1136
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    .line 1137
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .line 1141
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1117
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1147
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1149
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 1154
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$EntryIterator;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1155
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1156
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1158
    :cond_12
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 1159
    return-void
.end method
