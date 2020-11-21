.class Lcom/google/common/collect/ArrayTable$ColumnEntrySet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 3
    .param p2, "columnIndex"    # I

    .line 575
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 576
    iput p2, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->columnIndex:I

    .line 577
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnEntrySet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;-><init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 598
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnEntrySet;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
