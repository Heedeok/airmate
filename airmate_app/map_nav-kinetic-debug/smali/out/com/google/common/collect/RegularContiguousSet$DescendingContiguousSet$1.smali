.class Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final last:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;Ljava/lang/Comparable;)V
    .registers 3

    .line 228
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;, "Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet.1;"
    .local p2, "x0":Ljava/lang/Comparable;, "TC;"
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->this$1:Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    .line 229
    iget-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->this$1:Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;

    invoke-virtual {p1}, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->last:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;, "Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet.1;"
    .local p1, "previous":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->last:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->this$1:Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet;->this$0:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 228
    .local p0, "this":Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;, "Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet.1;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularContiguousSet$DescendingContiguousSet$1;->computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
