.class Lcom/google/common/collect/TreeMultiset$1;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "TreeMultiset.java"


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
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "Lcom/google/common/collect/BstInOrderPath<",
        "Lcom/google/common/collect/TreeMultiset$Node<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;

.field final synthetic val$direction:Lcom/google/common/collect/BstSide;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)V
    .registers 4

    .line 280
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$1;, "Lcom/google/common/collect/TreeMultiset.1;"
    .local p2, "x0":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$1;->this$0:Lcom/google/common/collect/TreeMultiset;

    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset$1;->val$direction:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/collect/BstInOrderPath;)Lcom/google/common/collect/BstInOrderPath;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;)",
            "Lcom/google/common/collect/BstInOrderPath<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation

    .line 283
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$1;, "Lcom/google/common/collect/TreeMultiset.1;"
    .local p1, "previous":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->val$direction:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstInOrderPath;->hasNext(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 284
    return-object v1

    .line 286
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->val$direction:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstInOrderPath;->next(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    .line 288
    .local v0, "next":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$1;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object v1, v0

    nop

    :cond_28
    return-object v1
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 280
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$1;, "Lcom/google/common/collect/TreeMultiset.1;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset$1;->computeNext(Lcom/google/common/collect/BstInOrderPath;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method
