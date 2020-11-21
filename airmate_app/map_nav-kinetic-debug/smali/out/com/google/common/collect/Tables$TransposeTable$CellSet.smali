.class Lcom/google/common/collect/Tables$TransposeTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransposeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/Table$Cell<",
        "TC;TR;TV;>;>;",
        "Ljava/util/Set<",
        "Lcom/google/common/collect/Table$Cell<",
        "TC;TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransposeTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransposeTable;)V
    .registers 3

    .line 285
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    .line 286
    iget-object p1, p1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/Tables$TransposeTable;->access$000()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 287
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 308
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_24

    .line 309
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 310
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 313
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 290
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    if-ne p1, p0, :cond_4

    .line 291
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 294
    return v1

    .line 296
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 297
    .local v0, "os":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->size()I

    move-result v3

    if-eq v2, v3, :cond_18

    .line 298
    return v1

    .line 300
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 304
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 317
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_24

    .line 318
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 319
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 322
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    :cond_24
    const/4 v0, 0x0

    return v0
.end method
