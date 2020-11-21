.class Lcom/google/common/collect/Tables$TransformedTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransformedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV1;>;",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV2;>;>;",
        "Ljava/util/Set<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransformedTable;)V
    .registers 3

    .line 487
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable$CellSet;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    .line 488
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Tables$TransformedTable;->cellFunction()Lcom/google/common/base/Function;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 489
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 497
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable$CellSet;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 498
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 499
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/Tables$TransformedTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 501
    return v1

    .line 503
    :cond_21
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v2, v2, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_3b

    :cond_3a
    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    :goto_3c
    return v1

    .line 506
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    :cond_3d
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 491
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable$CellSet;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 494
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable$CellSet;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 509
    .local p0, "this":Lcom/google/common/collect/Tables$TransformedTable$CellSet;, "Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 510
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 511
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const/4 v1, 0x1

    return v1

    .line 514
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
