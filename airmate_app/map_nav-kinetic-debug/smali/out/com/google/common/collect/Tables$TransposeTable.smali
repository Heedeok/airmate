.class Lcom/google/common/collect/Tables$TransposeTable;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposeTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final TRANSPOSE_CELL:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/google/common/collect/Table$Cell<",
            "***>;",
            "Lcom/google/common/collect/Table$Cell<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Tables$TransposeTable<",
            "TC;TR;TV;>.CellSet;"
        }
    .end annotation
.end field

.field final original:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 264
    new-instance v0, Lcom/google/common/collect/Tables$TransposeTable$1;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$TransposeTable$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Table;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "original":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table;

    iput-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    .line 151
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Function;
    .registers 1

    .line 146
    sget-object v0, Lcom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lcom/google/common/base/Function;

    return-object v0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Table$Cell<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    .line 278
    .local v0, "result":Lcom/google/common/collect/Tables$TransposeTable$CellSet;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;-><init>(Lcom/google/common/collect/Tables$TransposeTable;)V

    iput-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable;->cellSet:Lcom/google/common/collect/Tables$TransposeTable$CellSet;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 155
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->clear()V

    .line 156
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 176
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 181
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 245
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    if-ne p1, p0, :cond_4

    .line 246
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/Table;

    if-eqz v0, :cond_18

    .line 249
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table;

    .line 250
    .local v0, "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 252
    .end local v0    # "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 256
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 201
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TC;"
    .local p2, "columnKey":Ljava/lang/Object;, "TR;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "+TC;+TR;+TV;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TC;+TR;+TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-static {p1}, Lcom/google/common/collect/Tables;->transpose(Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Table;->putAll(Lcom/google/common/collect/Table;)V

    .line 212
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 236
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 260
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/google/common/collect/Tables$TransposeTable;, "Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
