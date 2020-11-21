.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$CartesianSet$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Ljava/util/List<",
        "TB;>;>;"
    }
.end annotation


# instance fields
.field final axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Sets$CartesianSet<",
            "TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TB;>;>;)V"
        }
    .end annotation

    .line 1030
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    .local p1, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1031
    const/4 v0, 0x1

    .line 1032
    .local v0, "dividend":I
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1034
    .local v1, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;>;"
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1035
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<+TB;>;"
    new-instance v4, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-direct {v4, p0, v3, v0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;-><init>(Lcom/google/common/collect/Sets$CartesianSet;Ljava/util/Set;I)V

    .line 1036
    .local v4, "axis":Lcom/google/common/collect/Sets$CartesianSet$Axis;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1037
    invoke-virtual {v4}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->size()I

    move-result v5

    invoke-static {v0, v5}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v5
    :try_end_28
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_28} :catch_34

    move v0, v5

    .line 1038
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<+TB;>;"
    .end local v4    # "axis":Lcom/google/common/collect/Sets$CartesianSet$Axis;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    goto :goto_c

    .line 1041
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2a
    nop

    .line 1042
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    .line 1043
    iput v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    .line 1044
    return-void

    .line 1039
    :catch_34
    move-exception v2

    .line 1040
    .local v2, "overflow":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cartesian product too big"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "element"    # Ljava/lang/Object;

    .line 1067
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1068
    return v1

    .line 1070
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 1071
    .local v0, "tuple":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 1072
    .local v2, "dimensions":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_16

    .line 1073
    return v1

    .line 1075
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2f

    .line 1076
    iget-object v4, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1077
    return v1

    .line 1075
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1080
    .end local v3    # "i":I
    :cond_2f
    const/4 v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1086
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_10

    .line 1087
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    .line 1088
    .local v0, "that":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1090
    .end local v0    # "that":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<*>;"
    :cond_10
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1098
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 1099
    .local v0, "adjust":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 1100
    mul-int/lit8 v0, v0, 0x1f

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1102
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1051
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    iget v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;I)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1026
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1047
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet;, "Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    return v0
.end method
