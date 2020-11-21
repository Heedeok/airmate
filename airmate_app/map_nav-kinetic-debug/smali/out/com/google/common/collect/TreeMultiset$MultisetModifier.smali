.class abstract Lcom/google/common/collect/TreeMultiset$MultisetModifier;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Lcom/google/common/collect/BstModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MultisetModifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstModifier<",
        "TE;",
        "Lcom/google/common/collect/TreeMultiset$Node<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .registers 2

    .line 480
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$MultisetModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$MultisetModifier;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p2, "x1"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 480
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$MultisetModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic modify(Ljava/lang/Object;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BstNode;

    .line 480
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$MultisetModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    move-object v0, p2

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;->modify(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$Node;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    return-object v0
.end method

.method public modify(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$Node;)Lcom/google/common/collect/BstModificationResult;
    .registers 8
    .param p2    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;)",
            "Lcom/google/common/collect/BstModificationResult<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 486
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$MultisetModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "originalEntry":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset;->access$1300(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    .line 487
    .local v0, "oldCount":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;->newCount(I)I

    move-result v1

    .line 488
    .local v1, "newCount":I
    if-ne v0, v1, :cond_f

    .line 489
    invoke-static {p2}, Lcom/google/common/collect/BstModificationResult;->identity(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    return-object v2

    .line 490
    :cond_f
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 491
    invoke-static {p2, v2}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    return-object v2

    .line 492
    :cond_17
    if-nez v0, :cond_23

    .line 493
    new-instance v3, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V

    invoke-static {v2, v3}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    return-object v2

    .line 495
    :cond_23
    new-instance v3, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p2}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V

    invoke-static {p2, v3}, Lcom/google/common/collect/BstModificationResult;->rebuildingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    return-object v2
.end method

.method abstract newCount(I)I
.end method
