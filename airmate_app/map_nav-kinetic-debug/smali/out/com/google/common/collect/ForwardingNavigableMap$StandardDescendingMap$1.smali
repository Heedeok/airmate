.class Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;
.super Ljava/lang/Object;
.source "ForwardingNavigableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field private nextOrNull:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

.field private toRemove:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;)V
    .registers 2

    .line 287
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;, "Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap.1;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 289
    iget-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {p1}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 293
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;, "Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 287
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;, "Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;, "Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 302
    :try_start_6
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1f

    .line 304
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 305
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    return-object v0

    .line 304
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 305
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->nextOrNull:Ljava/util/Map$Entry;

    throw v0

    .line 299
    :cond_37
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 311
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;, "Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap.1;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->checkRemove(Z)V

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->this$1:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$1;->toRemove:Ljava/util/Map$Entry;

    .line 314
    return-void
.end method
