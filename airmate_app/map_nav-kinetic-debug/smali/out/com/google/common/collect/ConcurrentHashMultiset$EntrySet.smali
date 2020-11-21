.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Lcom/google/common/collect/AbstractMultiset$EntrySet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .registers 2

    .line 534
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/ConcurrentHashMultiset;
    .param p2, "x1"    # Lcom/google/common/collect/ConcurrentHashMultiset$1;

    .line 534
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private snapshot()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 553
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 555
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 556
    return-object v0
.end method


# virtual methods
.method multiset()Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method bridge synthetic multiset()Lcom/google/common/collect/Multiset;
    .registers 2

    .line 534
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->multiset()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 560
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 561
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 562
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 563
    .local v2, "element":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    .line 564
    .local v3, "entryCount":I
    if-eqz v3, :cond_1b

    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->multiset()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v4

    .line 568
    .local v4, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    invoke-interface {v4, v2, v3, v1}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v1

    return v1

    .line 571
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "entryCount":I
    .end local v4    # "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    :cond_1b
    return v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 545
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
