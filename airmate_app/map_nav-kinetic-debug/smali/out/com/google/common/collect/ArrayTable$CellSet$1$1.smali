.class Lcom/google/common/collect/ArrayTable$CellSet$1$1;
.super Lcom/google/common/collect/Tables$AbstractCell;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$CellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Tables$AbstractCell<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final rowIndex:I

.field final synthetic this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$CellSet$1;I)V
    .registers 3

    .line 480
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet$1$1;, "Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 481
    iget p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {p2}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    .line 482
    iget p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    iget-object p2, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object p2, p2, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {p2}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet$1$1;, "Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet$1$1;, "Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lcom/google/common/collect/ArrayTable$CellSet$1$1;, "Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method