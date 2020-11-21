.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .registers 5
    .param p1    # Lcom/google/common/collect/AbstractMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 417
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 418
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 419
    if-nez p4, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object p1

    :goto_13
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    .line 421
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 558
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 559
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 560
    .local v1, "changed":Z
    if-eqz v1, :cond_1b

    .line 561
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 562
    if-eqz v0, :cond_1b

    .line 563
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 566
    :cond_1b
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 577
    const/4 v0, 0x0

    return v0

    .line 579
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 580
    .local v0, "oldSize":I
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 581
    .local v1, "changed":Z
    if-eqz v1, :cond_26

    .line 582
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 583
    .local v2, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 584
    if-nez v0, :cond_26

    .line 585
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 588
    .end local v2    # "newSize":I
    :cond_26
    return v1
.end method

.method addToMap()V
    .registers 4

    .line 468
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_a

    .line 469
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    goto :goto_17

    .line 471
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :goto_17
    return-void
.end method

.method public clear()V
    .registers 3

    .line 602
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 603
    .local v0, "oldSize":I
    if-nez v0, :cond_7

    .line 604
    return-void

    .line 606
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 607
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 608
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 609
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 592
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 593
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 597
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 598
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 481
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    if-ne p1, p0, :cond_4

    .line 482
    const/4 v0, 0x1

    return v0

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 489
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 504
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .registers 3

    .line 431
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1a

    .line 432
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-ne v0, v1, :cond_14

    goto :goto_34

    .line 434
    :cond_14
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 436
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 437
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 438
    .local v0, "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_34

    .line 439
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 442
    .end local v0    # "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_34
    :goto_34
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 612
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 614
    .local v0, "changed":Z
    if-eqz v0, :cond_13

    .line 615
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 616
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 618
    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 622
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 623
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 626
    .local v0, "oldSize":I
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 627
    .local v1, "changed":Z
    if-eqz v1, :cond_24

    .line 628
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 629
    .local v2, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 630
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 632
    .end local v2    # "newSize":I
    :cond_24
    return v1
.end method

.method removeIfEmpty()V
    .registers 3

    .line 449
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_a

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_1d

    .line 451
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 452
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1d
    :goto_1d
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 636
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 638
    .local v0, "oldSize":I
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 639
    .local v1, "changed":Z
    if-eqz v1, :cond_1f

    .line 640
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 641
    .local v2, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 642
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 644
    .end local v2    # "newSize":I
    :cond_1f
    return v1
.end method

.method public size()I
    .registers 2

    .line 476
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 494
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 495
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
