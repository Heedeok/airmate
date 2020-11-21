.class final Lcom/google/common/collect/BstInOrderPath$1;
.super Ljava/lang/Object;
.source "BstInOrderPath.java"

# interfaces
.implements Lcom/google/common/collect/BstPathFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BstInOrderPath;->inOrderFactory()Lcom/google/common/collect/BstPathFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstPathFactory<",
        "TN;",
        "Lcom/google/common/collect/BstInOrderPath<",
        "TN;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .registers 4
    .param p2, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;"
        }
    .end annotation

    .line 40
    .local p1, "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-static {p1, p2}, Lcom/google/common/collect/BstInOrderPath;->access$000(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extension(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;
    .registers 4
    .param p1, "x0"    # Lcom/google/common/collect/BstPath;
    .param p2, "x1"    # Lcom/google/common/collect/BstSide;

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/BstInOrderPath$1;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method public initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstInOrderPath;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;"
        }
    .end annotation

    .line 45
    .local p1, "root":Lcom/google/common/collect/BstNode;, "TN;"
    new-instance v0, Lcom/google/common/collect/BstInOrderPath;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V

    return-object v0
.end method

.method public bridge synthetic initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/BstNode;

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath$1;->initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method
