.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 4
    .param p1, "array"    # [Ljava/lang/Object;

    .line 45
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 46
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 38
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 39
    iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 40
    iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 101
    return v0

    .line 103
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 104
    return v2

    .line 107
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 108
    .local v1, "that":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 109
    return v2

    .line 112
    :cond_18
    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 113
    .local v3, "index":I
    instance-of v4, p1, Lcom/google/common/collect/RegularImmutableList;

    if-eqz v4, :cond_40

    .line 114
    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/RegularImmutableList;

    .line 115
    .local v4, "other":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<*>;"
    iget v5, v4, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v5, "i":I
    :goto_23
    iget v6, v4, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v7, v4, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3f

    .line 116
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    .local v7, "index":I
    aget-object v3, v6, v3

    .end local v3    # "index":I
    iget-object v6, v4, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 117
    return v2

    .line 115
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_23

    .line 120
    .end local v4    # "other":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<*>;"
    .end local v5    # "i":I
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_3f
    goto :goto_5d

    .line 121
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, "element":Ljava/lang/Object;
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "index":I
    aget-object v3, v6, v3

    .end local v3    # "index":I
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 123
    return v2

    .line 121
    .end local v5    # "element":Ljava/lang/Object;
    :cond_5b
    move v3, v7

    goto :goto_44

    .line 127
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_5d
    :goto_5d
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 54
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 3

    .line 58
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "x0"    # I

    .line 31
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 50
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method

.method subListUnchecked(II)Lcom/google/common/collect/ImmutableList;
    .registers 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .line 62
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    .local v0, "newArray":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_c

    .line 69
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_16

    .line 70
    :cond_c
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_16

    .line 71
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 73
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 131
    .local p0, "this":Lcom/google/common/collect/RegularImmutableList;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v1, "i":I
    :goto_19
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2f

    .line 134
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    goto :goto_19

    .line 136
    .end local v1    # "i":I
    :cond_2f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
