.class Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;
.super Lcom/google/common/collect/ForwardingSet;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDecorator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 4
    .param p1    # Lcom/google/common/collect/LinkedHashMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set<",
            "TV;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 179
    iput-object p3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    .line 180
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    .line 181
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    .local v0, "changed":Z
    if-eqz v0, :cond_13

    .line 204
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_13
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 211
    .local v0, "changed":Z
    if-eqz v0, :cond_17

    .line 212
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_17
    return v0
.end method

.method public clear()V
    .registers 5

    .line 218
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v2, v2, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 221
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 222
    return-void
.end method

.method createEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TE;>;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TE;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 196
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 198
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1e
    return-object v0
.end method

.method createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/Map$Entry<",
            "TK;TE;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .line 174
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .line 174
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, "delegateIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 248
    .local v0, "changed":Z
    if-eqz v0, :cond_13

    .line 253
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 255
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 260
    .local v0, "changed":Z
    if-eqz v0, :cond_13

    .line 261
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->createEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 263
    :cond_13
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;, "Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.SetDecorator;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 272
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->delegate:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 277
    iget-object v3, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v3, v3, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;->key:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    .line 280
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_28
    goto :goto_7

    .line 281
    :cond_29
    return v0
.end method
