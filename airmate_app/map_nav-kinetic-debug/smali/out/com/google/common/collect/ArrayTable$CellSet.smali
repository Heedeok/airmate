.class Lcom/google/common/collect/ArrayTable$CellSet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .registers 2

    .line 475
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/ArrayTable;
    .param p2, "x1"    # Lcom/google/common/collect/ArrayTable$1;

    .line 475
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$CellSet;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 505
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 506
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 507
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v2}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 508
    .local v2, "rowIndex":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v3}, Lcom/google/common/collect/ArrayTable;->access$500(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 509
    .local v3, "columnIndex":Ljava/lang/Integer;
    if-eqz v2, :cond_4a

    if-eqz v3, :cond_4a

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v4}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v1, 0x1

    nop

    :cond_4a
    return v1

    .line 513
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    .end local v2    # "rowIndex":Ljava/lang/Integer;
    .end local v3    # "columnIndex":Ljava/lang/Integer;
    :cond_4b
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$CellSet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$CellSet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$CellSet$1;-><init>(Lcom/google/common/collect/ArrayTable$CellSet;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 501
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v0

    return v0
.end method
