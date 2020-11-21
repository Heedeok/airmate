.class Lcom/google/common/collect/Iterators$MergingIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/collect/PeekingIterator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1331
    .local p0, "this":Lcom/google/common/collect/Iterators$MergingIterator;, "Lcom/google/common/collect/Iterators$MergingIterator<TT;>;"
    .local p1, "iterators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Iterator<+TT;>;>;"
    .local p2, "itemComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1332
    iput-object p2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->comparator:Ljava/util/Comparator;

    .line 1336
    new-instance v0, Lcom/google/common/collect/Iterators$MergingIterator$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterators$MergingIterator$1;-><init>(Lcom/google/common/collect/Iterators$MergingIterator;)V

    .line 1344
    .local v0, "heapComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/common/collect/PeekingIterator<TT;>;>;"
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    .line 1346
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 1347
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1348
    iget-object v3, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1351
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_32
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1355
    .local p0, "this":Lcom/google/common/collect/Iterators$MergingIterator;, "Lcom/google/common/collect/Iterators$MergingIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1356
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$MergingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1359
    :cond_d
    iget-object v0, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/PeekingIterator;

    .line 1360
    .local v0, "nextIter":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1362
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1363
    iget-object v2, p0, Lcom/google/common/collect/Iterators$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_24
    return-object v1
.end method
