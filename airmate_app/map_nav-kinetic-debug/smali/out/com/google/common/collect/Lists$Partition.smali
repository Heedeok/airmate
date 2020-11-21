.class Lcom/google/common/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/google/common/collect/Lists$Partition;, "Lcom/google/common/collect/Lists$Partition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    .line 537
    iput p2, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    .line 538
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .line 531
    .local p0, "this":Lcom/google/common/collect/Lists$Partition;, "Lcom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/List;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/google/common/collect/Lists$Partition;, "Lcom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$Partition;->size()I

    move-result v0

    .line 542
    .local v0, "listSize":I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 543
    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    mul-int v1, v1, p1

    .line 544
    .local v1, "start":I
    iget v2, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 545
    .local v2, "end":I
    iget-object v3, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public isEmpty()Z
    .registers 2

    .line 558
    .local p0, "this":Lcom/google/common/collect/Lists$Partition;, "Lcom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 4

    .line 550
    .local p0, "this":Lcom/google/common/collect/Lists$Partition;, "Lcom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    div-int/2addr v0, v1

    .line 551
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_17

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 554
    :cond_17
    return v0
.end method
