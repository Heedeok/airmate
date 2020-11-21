.class final Lcom/google/common/collect/TreeMultiset$5;
.super Lcom/google/common/collect/BstNodeFactory;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/BstNodeFactory<",
        "Lcom/google/common/collect/TreeMultiset$Node<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 472
    invoke-direct {p0}, Lcom/google/common/collect/BstNodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createNode(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .registers 7
    .param p1, "x0"    # Lcom/google/common/collect/BstNode;
    .param p2, "x1"    # Lcom/google/common/collect/BstNode;
    .param p3, "x2"    # Lcom/google/common/collect/BstNode;

    .line 472
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    move-object v1, p2

    check-cast v1, Lcom/google/common/collect/TreeMultiset$Node;

    move-object v2, p3

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$5;->createNode(Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)Lcom/google/common/collect/TreeMultiset$Node;

    move-result-object v0

    return-object v0
.end method

.method public createNode(Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)Lcom/google/common/collect/TreeMultiset$Node;
    .registers 11
    .param p2    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 476
    .local p1, "source":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<Ljava/lang/Object;>;"
    .local p2, "left":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<Ljava/lang/Object;>;"
    .local p3, "right":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<Ljava/lang/Object;>;"
    new-instance v6, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$1;)V

    return-object v6
.end method
