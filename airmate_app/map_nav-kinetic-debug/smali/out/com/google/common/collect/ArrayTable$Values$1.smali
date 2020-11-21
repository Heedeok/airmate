.class Lcom/google/common/collect/ArrayTable$Values$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$Values;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/ArrayTable$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$Values;I)V
    .registers 3
    .param p2, "x0"    # I

    .line 827
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Values$1;, "Lcom/google/common/collect/ArrayTable$Values.1;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Values$1;->this$1:Lcom/google/common/collect/ArrayTable$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 829
    .local p0, "this":Lcom/google/common/collect/ArrayTable$Values$1;, "Lcom/google/common/collect/ArrayTable$Values.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Values$1;->this$1:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$Values;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    div-int v0, p1, v0

    .line 830
    .local v0, "rowIndex":I
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Values$1;->this$1:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$Values;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int v1, p1, v1

    .line 831
    .local v1, "columnIndex":I
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$Values$1;->this$1:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v2, v2, Lcom/google/common/collect/ArrayTable$Values;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v2}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    return-object v2
.end method
