.class final Lcom/google/common/collect/TreeMultiset$Node;
.super Lcom/google/common/collect/BstNode;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/BstNode<",
        "TE;",
        "Lcom/google/common/collect/TreeMultiset$Node<",
        "TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final distinct:I

.field private final size:J


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .param p2, "elemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V

    .line 413
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 393
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V
    .registers 10
    .param p2, "elemCount"    # I
    .param p3    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p3, "left":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    .local p4, "right":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p3, p4}, Lcom/google/common/collect/BstNode;-><init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)V

    .line 400
    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 401
    int-to-long v1, p2

    invoke-static {p3}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {p4}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    .line 402
    invoke-static {p3}, Lcom/google/common/collect/TreeMultiset;->access$900(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p4}, Lcom/google/common/collect/TreeMultiset;->access$900(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/TreeMultiset$Node;->distinct:I

    .line 403
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/TreeMultiset$Node;
    .param p4, "x3"    # Lcom/google/common/collect/TreeMultiset$Node;
    .param p5, "x4"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 393
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/collect/TreeMultiset$Node;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$Node;

    .line 393
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$Node;

    .line 393
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->distinct:I

    return v0
.end method


# virtual methods
.method elemCount()I
    .registers 5

    .line 406
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$Node;->size:J

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v2}, Lcom/google/common/collect/TreeMultiset$Node;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v2}, Lcom/google/common/collect/TreeMultiset$Node;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 408
    .local v0, "result":J
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v2

    return v2
.end method
