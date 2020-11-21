.class Lcom/google/common/collect/StandardTable;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lcom/google/common/collect/Table;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/StandardTable$ColumnMap;,
        Lcom/google/common/collect/StandardTable$RowMap;,
        Lcom/google/common/collect/StandardTable$Values;,
        Lcom/google/common/collect/StandardTable$ColumnKeyIterator;,
        Lcom/google/common/collect/StandardTable$ColumnKeySet;,
        Lcom/google/common/collect/StandardTable$RowKeySet;,
        Lcom/google/common/collect/StandardTable$Column;,
        Lcom/google/common/collect/StandardTable$Row;,
        Lcom/google/common/collect/StandardTable$CellIterator;,
        Lcom/google/common/collect/StandardTable$CellSet;,
        Lcom/google/common/collect/StandardTable$TableSet;,
        Lcom/google/common/collect/StandardTable$TableCollection;
    }
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient cellSet:Lcom/google/common/collect/StandardTable$CellSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.CellSet;"
        }
    .end annotation
.end field

.field private transient columnKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field final factory:Lcom/google/common/base/Supplier;
    .annotation runtime Lcom/google/common/collect/GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.RowKeySet;"
        }
    .end annotation
.end field

.field private transient rowMap:Lcom/google/common/collect/StandardTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field

.field private transient values:Lcom/google/common/collect/StandardTable$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardTable<",
            "TR;TC;TV;>.Values;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/base/Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, "factory":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<+Ljava/util/Map<TC;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    .line 72
    return-void
.end method

.method static synthetic access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/StandardTable;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "x0"    # Lcom/google/common/collect/StandardTable;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "x0"    # Lcom/google/common/collect/StandardTable;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 219
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p3, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_18

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_18
    return-object v0
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .registers 7
    .param p1, "column"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    .local v0, "output":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 206
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_3d

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 213
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_3d
    goto :goto_f

    .line 214
    :cond_3e
    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 224
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/StandardTable$CellSet;

    .line 275
    .local v0, "result":Lcom/google/common/collect/StandardTable$CellSet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    if-nez v0, :cond_d

    new-instance v1, Lcom/google/common/collect/StandardTable$CellSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/StandardTable$CellSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->cellSet:Lcom/google/common/collect/StandardTable$CellSet;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 158
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 159
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 500
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Column;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    .line 789
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TC;>;"
    if-nez v0, :cond_d

    new-instance v1, Lcom/google/common/collect/StandardTable$ColumnKeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/StandardTable$ColumnKeySet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->columnKeySet:Ljava/util/Set;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public columnMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 995
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    .line 996
    .local v0, "result":Lcom/google/common/collect/StandardTable$ColumnMap;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_d

    new-instance v1, Lcom/google/common/collect/StandardTable$ColumnMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/StandardTable$ColumnMap;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->columnMap:Lcom/google/common/collect/StandardTable$ColumnMap;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-nez p2, :cond_6

    goto :goto_19

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 82
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v1, :cond_18

    invoke-static {v1, p2}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    nop

    :cond_18
    return v0

    .line 79
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_19
    :goto_19
    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 87
    return v0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 90
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 91
    const/4 v0, 0x1

    return v0

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_22
    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 103
    return v0

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 106
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 107
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_22
    return v0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardTable$ColumnKeyIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    if-ne p1, p0, :cond_4

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/Table;

    if-eqz v0, :cond_18

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table;

    .line 139
    .local v0, "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 141
    .end local v0    # "other":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<***>;"
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    .line 114
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    if-nez p2, :cond_6

    goto :goto_16

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 118
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v1, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {v1, p2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    .line 115
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_16
    :goto_16
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 145
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 122
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 180
    .local v1, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 182
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    :cond_24
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
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

    .line 186
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    if-nez p2, :cond_6

    goto :goto_21

    .line 189
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 190
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v1, :cond_11

    .line 191
    return-object v0

    .line 193
    :cond_11
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 195
    iget-object v2, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_20
    return-object v0

    .line 187
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_21
    :goto_21
    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row;-><init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 753
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;

    .line 754
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TR;>;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/StandardTable$RowKeySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/StandardTable$RowKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->rowKeySet:Lcom/google/common/collect/StandardTable$RowKeySet;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public rowMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/StandardTable$RowMap;

    .line 930
    .local v0, "result":Lcom/google/common/collect/StandardTable$RowMap;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowMap;"
    if-nez v0, :cond_c

    new-instance v1, Lcom/google/common/collect/StandardTable$RowMap;

    invoke-direct {v1, p0}, Lcom/google/common/collect/StandardTable$RowMap;-><init>(Lcom/google/common/collect/StandardTable;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->rowMap:Lcom/google/common/collect/StandardTable$RowMap;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public size()I
    .registers 5

    .line 126
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 128
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_b

    .line 130
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 152
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 907
    .local p0, "this":Lcom/google/common/collect/StandardTable;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/StandardTable$Values;

    .line 908
    .local v0, "result":Lcom/google/common/collect/StandardTable$Values;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Values;"
    if-nez v0, :cond_d

    new-instance v1, Lcom/google/common/collect/StandardTable$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/StandardTable$Values;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    iput-object v1, p0, Lcom/google/common/collect/StandardTable;->values:Lcom/google/common/collect/StandardTable$Values;

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    return-object v1
.end method
