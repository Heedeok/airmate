.class Lcom/google/common/collect/AbstractMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMultimap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final entryIterator:Ljava/util/Iterator;
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

.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$KeySet;)V
    .registers 2

    .line 902
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$KeySet$1;, "Lcom/google/common/collect/AbstractMultimap$KeySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMultimap$KeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iget-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object p1, p1, Lcom/google/common/collect/AbstractMultimap$KeySet;->subMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entryIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 909
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$KeySet$1;, "Lcom/google/common/collect/AbstractMultimap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 913
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$KeySet$1;, "Lcom/google/common/collect/AbstractMultimap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 918
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$KeySet$1;, "Lcom/google/common/collect/AbstractMultimap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->checkRemove(Z)V

    .line 919
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 920
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 921
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 922
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 923
    return-void
.end method