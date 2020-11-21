.class final Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CumulativeCountEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final cumulativeCount:J

.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;)V
    .registers 9
    .param p2, "count"    # I
    .param p3    # Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<",
            "TE;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;, "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    .local p3, "previous":Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;, "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->element:Ljava/lang/Object;

    .line 44
    iput p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->count:I

    .line 45
    int-to-long v0, p2

    if-nez p3, :cond_d

    const-wide/16 v2, 0x0

    goto :goto_f

    :cond_d
    iget-wide v2, p3, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->cumulativeCount:J

    :goto_f
    const/4 v4, 0x0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->cumulativeCount:J

    .line 46
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 55
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;, "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->count:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;, "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
