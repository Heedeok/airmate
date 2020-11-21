.class final Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;
.super Lcom/google/common/collect/TreeMultiset$MultisetModifier;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConditionalSetCountModifier"
.end annotation


# instance fields
.field private final expectedCount:I

.field private final setCount:I

.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;II)V
    .registers 6
    .param p2, "expectedCount"    # I
    .param p3, "setCount"    # I

    .line 548
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.ConditionalSetCountModifier;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->this$0:Lcom/google/common/collect/TreeMultiset;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$1;)V

    .line 549
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ltz p3, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ltz p2, :cond_11

    const/4 p1, 0x1

    nop

    :cond_11
    and-int/2addr p1, v1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 550
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->expectedCount:I

    .line 551
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->setCount:I

    .line 552
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IILcom/google/common/collect/TreeMultiset$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/TreeMultiset;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/common/collect/TreeMultiset$1;

    .line 544
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.ConditionalSetCountModifier;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;II)V

    return-void
.end method


# virtual methods
.method newCount(I)I
    .registers 3
    .param p1, "oldCount"    # I

    .line 556
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.ConditionalSetCountModifier;"
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->expectedCount:I

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;->setCount:I

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    return v0
.end method
