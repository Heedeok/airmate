.class final Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExpirationQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 3302
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3303
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$1;-><init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 3404
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3405
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_6
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eq v0, v1, :cond_13

    .line 3406
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 3407
    .local v1, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3408
    move-object v0, v1

    .line 3409
    .end local v1    # "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    goto :goto_6

    .line 3411
    :cond_13
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3412
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3413
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 3384
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3385
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

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

    .line 3390
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3417
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;-><init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3343
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3346
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3347
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3349
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 3302
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->offer(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3354
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3355
    .local v0, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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

    .line 3302
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->peek()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3360
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3361
    .local v0, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_c

    .line 3362
    const/4 v1, 0x0

    return-object v1

    .line 3365
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->remove(Ljava/lang/Object;)Z

    .line 3366
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 3302
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->poll()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 3372
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3373
    .local v0, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 3374
    .local v1, "previous":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    .line 3375
    .local v2, "next":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->connectExpirables(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3376
    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 3378
    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

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

    .line 3395
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;, "Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue<TK;TV;>;"
    const/4 v0, 0x0

    .line 3396
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .local v1, "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_3
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eq v1, v2, :cond_e

    .line 3397
    add-int/lit8 v0, v0, 0x1

    .line 3396
    goto :goto_3

    .line 3399
    .end local v1    # "e":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_e
    return v0
.end method
