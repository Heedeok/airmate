.class Lcom/google/common/collect/ArrayTable$Column;
.super Ljava/util/AbstractMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field entrySet:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.ColumnEntrySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 3
    .param p2, "columnIndex"    # I

    .line 540
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 541
    iput p2, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    .line 542
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;

    .line 557
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

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
            "TR;TV;>;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->entrySet:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    .line 548
    .local v0, "set":Lcom/google/common/collect/ArrayTable$ColumnEntrySet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnEntrySet;"
    if-nez v0, :cond_10

    new-instance v1, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v3, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    iput-object v1, p0, Lcom/google/common/collect/ArrayTable$Column;->entrySet:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "rowKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 553
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v2, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/ArrayTable;->access$600(Lcom/google/common/collect/ArrayTable;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Column;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 563
    .local v0, "rowIndex":Ljava/lang/Integer;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    const-string v4, "Row %s not in %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
