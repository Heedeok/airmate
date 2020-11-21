.class Lcom/google/common/collect/ArrayTable$Row;
.super Ljava/util/AbstractMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field entrySet:Lcom/google/common/collect/ArrayTable$RowEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.RowEntrySet;"
        }
    .end annotation
.end field

.field final rowIndex:I

.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 3
    .param p2, "rowIndex"    # I

    .line 685
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 686
    iput p2, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    .line 687
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "columnKey"    # Ljava/lang/Object;

    .line 702
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->entrySet:Lcom/google/common/collect/ArrayTable$RowEntrySet;

    .line 693
    .local v0, "set":Lcom/google/common/collect/ArrayTable$RowEntrySet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowEntrySet;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/google/common/collect/ArrayTable$RowEntrySet;

    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v3, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/ArrayTable$RowEntrySet;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable$Row;->entrySet:Lcom/google/common/collect/ArrayTable$RowEntrySet;

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 698
    .local v0, "columnIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/ArrayTable;->access$600(Lcom/google/common/collect/ArrayTable;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .line 706
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Row;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Row;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 708
    .local v0, "columnIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    const-string v4, "Column %s not in %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
