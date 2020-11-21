.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heap"
.end annotation


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "TE;>;"
        }
    .end annotation
.end field

.field otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>.Heap;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering<",
            "TE;>;)V"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    .line 493
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .param p1, "x1"    # I

    .line 487
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->verifyIndex(I)Z

    move-result v0

    return v0
.end method

.method private getGrandparentIndex(I)I
    .registers 3
    .param p1, "i"    # I

    .line 737
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    return v0
.end method

.method private getLeftChildIndex(I)I
    .registers 3
    .param p1, "i"    # I

    .line 725
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getParentIndex(I)I
    .registers 3
    .param p1, "i"    # I

    .line 733
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRightChildIndex(I)I
    .registers 3
    .param p1, "i"    # I

    .line 729
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private verifyIndex(I)Z
    .registers 5
    .param p1, "i"    # I

    .line 705
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_18

    .line 707
    return v2

    .line 709
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_2f

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_2f

    .line 711
    return v2

    .line 713
    :cond_2f
    if-lez p1, :cond_3c

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_3c

    .line 714
    return v2

    .line 716
    :cond_3c
    const/4 v0, 0x2

    if-le p1, v0, :cond_4a

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v0

    if-lez v0, :cond_4a

    .line 717
    return v2

    .line 719
    :cond_4a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method bubbleUp(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    .line 539
    .local v0, "crossOver":I
    if-ne v0, p1, :cond_8

    .line 540
    move-object v1, p0

    goto :goto_b

    .line 542
    :cond_8
    move p1, v0

    .line 543
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 545
    .local v1, "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_b
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    .line 546
    return-void
.end method

.method bubbleUpAlternatingLevels(ILjava/lang/Object;)I
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 553
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_20

    .line 554
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v0

    .line 555
    .local v0, "grandParentIndex":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_16

    .line 557
    goto :goto_20

    .line 559
    :cond_16
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 560
    move p1, v0

    .line 561
    .end local v0    # "grandParentIndex":I
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 562
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 563
    return p1
.end method

.method compareElements(II)I
    .registers 6
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 496
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method crossOver(ILjava/lang/Object;)I
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinChild(I)I

    move-result v0

    .line 678
    .local v0, "minChildIndex":I
    if-lez v0, :cond_2b

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2b

    .line 680
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 681
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 682
    return v0

    .line 684
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v1

    return v1
.end method

.method crossOverUp(ILjava/lang/Object;)I
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .line 610
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_c

    .line 611
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 612
    return v1

    .line 614
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 615
    .local v0, "parentIndex":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, "parentElement":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_3e

    .line 621
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v2

    .line 622
    .local v2, "grandparentIndex":I
    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v3

    .line 623
    .local v3, "uncleIndex":I
    if-eq v3, v0, :cond_3e

    invoke-direct {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    if-lt v4, v5, :cond_3e

    .line 625
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v4

    .line 626
    .local v4, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v5, v4, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3e

    .line 627
    move v0, v3

    .line 628
    move-object v1, v4

    .line 632
    .end local v2    # "grandparentIndex":I
    .end local v3    # "uncleIndex":I
    .end local v4    # "uncleElement":Ljava/lang/Object;, "TE;"
    :cond_3e
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_57

    .line 633
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    .line 634
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, v0

    .line 635
    return v0

    .line 637
    :cond_57
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, p1

    .line 638
    return p1
.end method

.method fillHoleAt(I)I
    .registers 5
    .param p1, "index"    # I

    .line 697
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinGrandChild(I)I

    move-result v0

    move v1, v0

    .local v1, "minGrandchildIndex":I
    if-lez v0, :cond_17

    .line 698
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, p1

    .line 699
    move p1, v1

    goto :goto_0

    .line 701
    :cond_17
    return p1
.end method

.method findMin(II)I
    .registers 7
    .param p1, "index"    # I
    .param p2, "len"    # I

    .line 572
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 573
    const/4 v0, -0x1

    return v0

    .line 575
    :cond_a
    if-lez p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 576
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    .line 577
    .local v0, "limit":I
    move v1, p1

    .line 578
    .local v1, "minIndex":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_2d

    .line 579
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v3

    if-gez v3, :cond_2a

    .line 580
    move v1, v2

    .line 578
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 583
    .end local v2    # "i":I
    :cond_2d
    return v1
.end method

.method findMinChild(I)I
    .registers 4
    .param p1, "index"    # I

    .line 590
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v0

    return v0
.end method

.method findMinGrandChild(I)I
    .registers 5
    .param p1, "index"    # I

    .line 597
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    .line 598
    .local v0, "leftChildIndex":I
    if-gez v0, :cond_8

    .line 599
    const/4 v1, -0x1

    return v1

    .line 601
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v1

    return v1
.end method

.method getCorrectLastElement(Ljava/lang/Object;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 651
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p1, "actualLastElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 652
    .local v0, "parentIndex":I
    if-eqz v0, :cond_47

    .line 653
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    .line 654
    .local v1, "grandparentIndex":I
    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v2

    .line 655
    .local v2, "uncleIndex":I
    if-eq v2, v0, :cond_47

    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    if-lt v3, v4, :cond_47

    .line 657
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v3

    .line 658
    .local v3, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v3, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_47

    .line 659
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    aput-object p1, v4, v2

    .line 660
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    aput-object v3, v4, v5

    .line 661
    return v2

    .line 665
    .end local v1    # "grandparentIndex":I
    .end local v2    # "uncleIndex":I
    .end local v3    # "uncleElement":Ljava/lang/Object;, "TE;"
    :cond_47
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    return v1
.end method

.method tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .registers 8
    .param p1, "removeIndex"    # I
    .param p2, "vacated"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<",
            "TE;>;"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p3, "toTrickle":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOver(ILjava/lang/Object;)I

    move-result v0

    .line 507
    .local v0, "crossOver":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    .line 508
    return-object v1

    .line 516
    :cond_8
    if-ge v0, p1, :cond_11

    .line 519
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1b

    .line 521
    :cond_11
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .line 524
    .local v2, "parent":Ljava/lang/Object;, "TE;"
    :goto_1b
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v3, v0, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v3

    if-ge v3, p1, :cond_29

    .line 526
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v1, p3, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 528
    :cond_29
    return-object v1
.end method
