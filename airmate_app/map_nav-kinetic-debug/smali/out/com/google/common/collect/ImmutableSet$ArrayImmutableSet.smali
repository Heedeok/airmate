.class abstract Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .param p1, "elements"    # [Ljava/lang/Object;

    .line 397
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 399
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 437
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 438
    return v0

    .line 440
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    if-nez v1, :cond_d

    .line 441
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 443
    :cond_d
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_19

    .line 444
    return v3

    .line 446
    :cond_19
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v4, 0x0

    .local v2, "len$":I
    .local v4, "i$":I
    :goto_20
    if-ge v4, v2, :cond_2e

    aget-object v5, v1, v4

    .line 447
    .local v5, "target":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 448
    return v3

    .line 446
    .end local v5    # "target":Ljava/lang/Object;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 451
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v4    # "i$":I
    :cond_2e
    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableAsList;-><init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 407
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .line 455
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 393
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 403
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .line 420
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 421
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;, "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 427
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_c

    .line 428
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 429
    :cond_c
    array-length v1, p1

    if-le v1, v0, :cond_12

    .line 430
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 432
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    return-object p1
.end method
