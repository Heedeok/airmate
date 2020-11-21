.class Lcom/google/common/collect/RegularImmutableSortedMultiset$1;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList<",
        "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<",
        "TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/ImmutableList;)V
    .registers 3

    .line 80
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$1;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.1;"
    .local p2, "x0":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$1;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.1;"
    .local p1, "entry":Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;, "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry<TE;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 80
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedMultiset$1;, "Lcom/google/common/collect/RegularImmutableSortedMultiset.1;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->transform(Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
