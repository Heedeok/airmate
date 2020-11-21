.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "Ljava/util/List<",
        "TB;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;I)V
    .registers 3
    .param p2, "x0"    # I

    .line 1051
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .line 1051
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$CartesianSet$1;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/List;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TB;>;"
        }
    .end annotation

    .line 1054
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1055
    .local v0, "tuple":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 1056
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v2, v2, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->getForIndex(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1060
    .end local v1    # "i":I
    :cond_21
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1061
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TB;>;"
    return-object v1
.end method
