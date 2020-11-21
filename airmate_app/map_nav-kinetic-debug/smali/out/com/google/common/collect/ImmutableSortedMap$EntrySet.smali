.class Lcom/google/common/collect/ImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableMap$EntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 2

    .line 477
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/ImmutableSortedMap;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableSortedMap$1;

    .line 477
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 476
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$EntrySet;, "Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
