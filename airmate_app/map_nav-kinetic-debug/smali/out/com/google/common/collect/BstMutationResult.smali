.class final Lcom/google/common/collect/BstMutationResult;
.super Ljava/lang/Object;
.source "BstMutationResult.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "N:",
        "Lcom/google/common/collect/BstNode<",
        "TK;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private changedRoot:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final modificationResult:Lcom/google/common/collect/BstModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstModificationResult<",
            "TN;>;"
        }
    .end annotation
.end field

.field private originalRoot:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final targetKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)V
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TN;TN;",
            "Lcom/google/common/collect/BstModificationResult<",
            "TN;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    .local p1, "targetKey":Ljava/lang/Object;, "TK;"
    .local p2, "originalRoot":Lcom/google/common/collect/BstNode;, "TN;"
    .local p3, "changedRoot":Lcom/google/common/collect/BstNode;, "TN;"
    .local p4, "modificationResult":Lcom/google/common/collect/BstModificationResult;, "Lcom/google/common/collect/BstModificationResult<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->targetKey:Ljava/lang/Object;

    .line 64
    iput-object p2, p0, Lcom/google/common/collect/BstMutationResult;->originalRoot:Lcom/google/common/collect/BstNode;

    .line 65
    iput-object p3, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    .line 66
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationResult;->modificationResult:Lcom/google/common/collect/BstModificationResult;

    .line 67
    return-void
.end method

.method public static mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;
    .registers 5
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(TK;TN;TN;",
            "Lcom/google/common/collect/BstModificationResult<",
            "TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 48
    .local p0, "targetKey":Ljava/lang/Object;, "TK;"
    .local p1, "originalRoot":Lcom/google/common/collect/BstNode;, "TN;"
    .local p2, "changedRoot":Lcom/google/common/collect/BstNode;, "TN;"
    .local p3, "modificationResult":Lcom/google/common/collect/BstModificationResult;, "Lcom/google/common/collect/BstModificationResult<TN;>;"
    new-instance v0, Lcom/google/common/collect/BstMutationResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/BstMutationResult;-><init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)V

    return-object v0
.end method


# virtual methods
.method public getChangedRoot()Lcom/google/common/collect/BstNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method public getChangedTarget()Lcom/google/common/collect/BstNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->modificationResult:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRoot()Lcom/google/common/collect/BstNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->originalRoot:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method public getOriginalTarget()Lcom/google/common/collect/BstNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->modificationResult:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->getOriginalTarget()Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method public getTargetKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->targetKey:Ljava/lang/Object;

    return-object v0
.end method

.method public lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .registers 9
    .param p2, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    .local p1, "liftOriginalRoot":Lcom/google/common/collect/BstNode;, "TN;"
    .local p3, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p4, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    nop

    .line 124
    sget-object v0, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    invoke-virtual {p0}, Lcom/google/common/collect/BstMutationResult;->modificationType()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :pswitch_16
    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->originalRoot:Lcom/google/common/collect/BstNode;

    .line 131
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 132
    .local v0, "resultLeft":Lcom/google/common/collect/BstNode;, "TN;"
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 133
    .local v1, "resultRight":Lcom/google/common/collect/BstNode;, "TN;"
    sget-object v2, Lcom/google/common/collect/BstMutationResult$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_60

    .line 141
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 138
    :pswitch_35
    iget-object v1, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    .line 139
    goto :goto_3b

    .line 135
    :pswitch_38
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    .line 136
    nop

    .line 143
    :goto_3b
    invoke-virtual {p0}, Lcom/google/common/collect/BstMutationResult;->modificationType()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    if-ne v2, v3, :cond_4a

    .line 144
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/common/collect/BstNodeFactory;->createNode(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    goto :goto_50

    .line 146
    :cond_4a
    invoke-interface {p4, p3, p1, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    .line 149
    :goto_50
    return-object p0

    .line 126
    .end local v0    # "resultLeft":Lcom/google/common/collect/BstNode;, "TN;"
    .end local v1    # "resultRight":Lcom/google/common/collect/BstNode;, "TN;"
    :pswitch_51
    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->changedRoot:Lcom/google/common/collect/BstNode;

    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->originalRoot:Lcom/google/common/collect/BstNode;

    .line 127
    return-object p0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_51
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_38
        :pswitch_35
    .end packed-switch
.end method

.method modificationType()Lcom/google/common/collect/BstModificationResult$ModificationType;
    .registers 2

    .line 113
    .local p0, "this":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->modificationResult:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->getType()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v0

    return-object v0
.end method
