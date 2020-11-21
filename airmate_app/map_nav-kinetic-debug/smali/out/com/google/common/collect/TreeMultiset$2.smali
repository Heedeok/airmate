.class Lcom/google/common/collect/TreeMultiset$2;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;

.field final toRemove:Lcom/google/common/collect/TreeMultiset$ToRemove;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$ToRemove<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic val$pathIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/Iterator;)V
    .registers 3

    .line 291
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$2;->val$pathIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance p1, Lcom/google/common/collect/TreeMultiset$ToRemove;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/common/collect/TreeMultiset$ToRemove;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->toRemove:Lcom/google/common/collect/TreeMultiset$ToRemove;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 296
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->val$pathIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->val$pathIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 302
    .local v0, "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/TreeMultiset$LiveEntry;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$2;->toRemove:Lcom/google/common/collect/TreeMultiset$ToRemove;

    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v4}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/TreeMultiset$ToRemove;->setAndGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v4}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/common/collect/TreeMultiset$LiveEntry;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 291
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 308
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$2;, "Lcom/google/common/collect/TreeMultiset.2;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->this$0:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->toRemove:Lcom/google/common/collect/TreeMultiset$ToRemove;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$ToRemove;->getAndClear()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 309
    return-void
.end method
