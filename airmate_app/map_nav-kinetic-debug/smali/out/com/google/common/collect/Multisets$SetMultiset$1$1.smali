.class Lcom/google/common/collect/Multisets$SetMultiset$1$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$SetMultiset$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "TE;",
        "Lcom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Multisets$SetMultiset$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset$1;Ljava/util/Iterator;)V
    .registers 3

    .line 392
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$1$1;, "Lcom/google/common/collect/Multisets$SetMultiset$1.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$1$1;->this$1:Lcom/google/common/collect/Multisets$SetMultiset$1;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Lcom/google/common/collect/Multiset$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$1$1;, "Lcom/google/common/collect/Multisets$SetMultiset$1.1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 392
    .local p0, "this":Lcom/google/common/collect/Multisets$SetMultiset$1$1;, "Lcom/google/common/collect/Multisets$SetMultiset$1.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$SetMultiset$1$1;->transform(Ljava/lang/Object;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
