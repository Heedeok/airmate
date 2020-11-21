.class final Lcom/google/common/cache/LocalCache$AccessQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3774
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3775
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$AccessQueue$1;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 3877
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3878
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_6
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eq v0, v1, :cond_13

    .line 3879
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3880
    .local v1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3881
    move-object v0, v1

    .line 3882
    .end local v1    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_6

    .line 3884
    :cond_13
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v1, v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3885
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v1, v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3886
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 3856
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3857
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    sget-object v2, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .line 3862
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3890
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue$2;

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/LocalCache$AccessQueue$2;-><init>(Lcom/google/common/cache/LocalCache$AccessQueue;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3815
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3818
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3819
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3821
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 3774
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$AccessQueue;->offer(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3826
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3827
    .local v0, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 3774
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->peek()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3832
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3833
    .local v0, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_c

    .line 3834
    const/4 v1, 0x0

    return-object v1

    .line 3837
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$AccessQueue;->remove(Ljava/lang/Object;)Z

    .line 3838
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 3774
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$AccessQueue;->poll()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 3844
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3845
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3846
    .local v1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 3847
    .local v2, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {v1, v2}, Lcom/google/common/cache/LocalCache;->connectAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3848
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->nullifyAccessOrder(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3850
    sget-object v3, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    if-eq v2, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    return v3
.end method

.method public size()I
    .registers 4

    .line 3867
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue;, "Lcom/google/common/cache/LocalCache$AccessQueue<TK;TV;>;"
    const/4 v0, 0x0

    .line 3868
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_7
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$AccessQueue;->head:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eq v1, v2, :cond_12

    .line 3870
    add-int/lit8 v0, v0, 0x1

    .line 3869
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_7

    .line 3872
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_12
    return v0
.end method
