.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "RegularImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DenseImmutableTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient columnMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "cellSet":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, "rowSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TR;>;"
    .local p3, "columnSpace":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TC;>;"
    move-object v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-direct {p0, v2, v1}, Lcom/google/common/collect/RegularImmutableTable;-><init>(Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/RegularImmutableTable$1;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 298
    .local v1, "array":[[Ljava/lang/Object;, "[[TV;"
    iput-object v1, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 299
    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    .line 300
    invoke-static/range {p3 .. p3}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Table$Cell;

    .line 302
    .local v4, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v4}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    .line 303
    .local v5, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-interface {v4}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v6

    .line 304
    .local v6, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v7, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 305
    .local v7, "rowIndex":I
    iget-object v8, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 306
    .local v8, "columnIndex":I
    iget-object v9, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v9, v9, v7

    aget-object v9, v9, v8

    .line 307
    .local v9, "existingValue":Ljava/lang/Object;, "TV;"
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_65

    const/4 v12, 0x1

    goto :goto_66

    :cond_65
    const/4 v12, 0x0

    :goto_66
    const-string v13, "duplicate key: (%s, %s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v5, v14, v10

    aput-object v6, v14, v11

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v10, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v7

    invoke-interface {v4}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v8

    .line 310
    .end local v4    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v5    # "rowKey":Ljava/lang/Object;, "TR;"
    .end local v6    # "columnKey":Ljava/lang/Object;, "TC;"
    .end local v7    # "rowIndex":I
    .end local v8    # "columnIndex":I
    .end local v9    # "existingValue":Ljava/lang/Object;, "TV;"
    goto :goto_2d

    .line 311
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7d
    return-void
.end method

.method private makeColumnMap()Lcom/google/common/collect/ImmutableMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 341
    .local v0, "columnMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TC;Ljava/util/Map<TR;TV;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "c":I
    :goto_6
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 342
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    .line 343
    .local v3, "rowMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TR;TV;>;"
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_13
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_37

    .line 344
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    .line 345
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_34

    .line 346
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 343
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 349
    .end local v4    # "r":I
    :cond_37
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 341
    .end local v3    # "rowMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TR;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 352
    .end local v2    # "c":I
    :cond_4f
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private static makeIndex(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableBiMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 283
    .local p0, "set":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 285
    .local v0, "indexBuilder":Lcom/google/common/collect/ImmutableBiMap$Builder;, "Lcom/google/common/collect/ImmutableBiMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 286
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 287
    .local v3, "key":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 290
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;, "TE;"
    :cond_1d
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v2

    return-object v2
.end method

.method private makeRowMap()Lcom/google/common/collect/ImmutableMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 410
    .local v0, "rowMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TR;Ljava/util/Map<TC;TV;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "r":I
    :goto_6
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_47

    .line 411
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 412
    .local v3, "row":[Ljava/lang/Object;, "[TV;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    .line 413
    .local v4, "columnMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TC;TV;>;"
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_14
    array-length v6, v3

    if-ge v5, v6, :cond_2f

    .line 414
    aget-object v6, v3, v5

    .line 415
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_2c

    .line 416
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 413
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 419
    .end local v5    # "c":I
    :cond_2f
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 410
    .end local v3    # "row":[Ljava/lang/Object;, "[TV;"
    .end local v4    # "columnMapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TC;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 422
    .end local v2    # "r":I
    :cond_47
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 316
    .local v0, "columnIndexInteger":Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 317
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 320
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 321
    .local v1, "columnIndex":I
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 322
    .local v2, "columnBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TR;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_3c

    .line 323
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v1

    .line 324
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_39

    .line 325
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 322
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 328
    .end local v3    # "i":I
    :cond_3c
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->column(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 357
    .local v0, "result":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TC;Ljava/util/Map<TR;TV;>;>;"
    if-nez v0, :cond_b

    .line 358
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeColumnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap:Lcom/google/common/collect/ImmutableMap;

    .line 360
    :cond_b
    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

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

    .line 365
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 369
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 373
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
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

    .line 378
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 379
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 380
    .local v1, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_24

    if-nez v1, :cond_15

    goto :goto_24

    :cond_15
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x0

    :goto_25
    return-object v2
.end method

.method public row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 387
    .local v0, "rowIndex":Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 388
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 390
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 391
    .local v1, "rowBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TC;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    .line 392
    .local v2, "row":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_1f
    array-length v4, v2

    if-ge v3, v4, :cond_3a

    .line 393
    aget-object v4, v2, v3

    .line 394
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_37

    .line 395
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 392
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 398
    .end local v3    # "r":I
    :cond_3a
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->row(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 427
    .local v0, "result":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<TR;Ljava/util/Map<TC;TV;>;>;"
    if-nez v0, :cond_b

    .line 428
    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeRowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    .line 430
    :cond_b
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .line 273
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;, "Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
