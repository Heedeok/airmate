.class final Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets$PowerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitFilteredSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final input:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .registers 3
    .param p2, "allSetBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1222
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;, "Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    .local p1, "input":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1223
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->input:Lcom/google/common/collect/ImmutableList;

    .line 1224
    iput p2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    .line 1225
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1228
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;, "Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1232
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;, "Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1233
    .local v0, "index":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1a

    .line 1237
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 1238
    .local v1, "currentElementMask":I
    iget v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    .line 1239
    iget-object v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->input:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1234
    .end local v1    # "currentElementMask":I
    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
