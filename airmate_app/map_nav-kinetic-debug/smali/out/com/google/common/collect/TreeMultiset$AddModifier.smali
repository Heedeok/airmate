.class final Lcom/google/common/collect/TreeMultiset$AddModifier;
.super Lcom/google/common/collect/TreeMultiset$MultisetModifier;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddModifier"
.end annotation


# instance fields
.field private final countToAdd:I

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;I)V
    .registers 4
    .param p2, "countToAdd"    # I

    .line 504
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AddModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.AddModifier;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AddModifier;->this$0:Lcom/google/common/collect/TreeMultiset;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$1;)V

    .line 505
    if-lez p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 506
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AddModifier;->countToAdd:I

    .line 507
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 501
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AddModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.AddModifier;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AddModifier;-><init>(Lcom/google/common/collect/TreeMultiset;I)V

    return-void
.end method


# virtual methods
.method newCount(I)I
    .registers 4
    .param p1, "oldCount"    # I

    .line 511
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AddModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.AddModifier;"
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AddModifier;->countToAdd:I

    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Cannot add this many elements"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 512
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AddModifier;->countToAdd:I

    add-int/2addr v0, p1

    return v0
.end method
