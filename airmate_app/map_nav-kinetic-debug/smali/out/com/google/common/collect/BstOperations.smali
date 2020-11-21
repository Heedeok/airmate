.class final Lcom/google/common/collect/BstOperations;
.super Ljava/lang/Object;
.source "BstOperations.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 181
    .local p0, "root":Lcom/google/common/collect/BstNode;, "TN;"
    .local p1, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p2, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 185
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/BstOperations;->extractMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 187
    .local v0, "subResult":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    return-object v1

    .line 189
    .end local v0    # "subResult":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :cond_22
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    return-object v0
.end method

.method public static extractMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(TN;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 163
    .local p0, "root":Lcom/google/common/collect/BstNode;, "TN;"
    .local p1, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p2, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 167
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/BstOperations;->extractMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    .line 169
    .local v0, "subResult":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "subResult":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :cond_22
    invoke-virtual {p0}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->rebalancingChange(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    return-object v0
.end method

.method public static insertMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .registers 6
    .param p0    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode<",
            "*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;)TN;"
        }
    .end annotation

    .line 217
    .local p0, "root":Lcom/google/common/collect/BstNode;, "TN;"
    .local p1, "entry":Lcom/google/common/collect/BstNode;, "TN;"
    .local p2, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p3, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    if-nez p0, :cond_10

    .line 221
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0

    .line 223
    :cond_10
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->insertMax(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method public static insertMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;
    .registers 6
    .param p0    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode<",
            "*TN;>;>(TN;TN;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;)TN;"
        }
    .end annotation

    .line 199
    .local p0, "root":Lcom/google/common/collect/BstNode;, "TN;"
    .local p1, "entry":Lcom/google/common/collect/BstNode;, "TN;"
    .local p2, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p3, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    if-nez p0, :cond_10

    .line 203
    invoke-virtual {p2, p1}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0

    .line 205
    :cond_10
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/collect/BstOperations;->insertMin(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method private static modify(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;
    .registers 13
    .param p0    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(TN;TK;",
            "Lcom/google/common/collect/BstMutationRule<",
            "TK;TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 113
    .local p0, "tree":Lcom/google/common/collect/BstNode;, "TN;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mutationRule":Lcom/google/common/collect/BstMutationRule;, "Lcom/google/common/collect/BstMutationRule<TK;TN;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v0

    .line 114
    .local v0, "rebalancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getNodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v1

    .line 115
    .local v1, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/BstMutationRule;->getModifier()Lcom/google/common/collect/BstModifier;

    move-result-object v2

    .line 117
    .local v2, "modifier":Lcom/google/common/collect/BstModifier;, "Lcom/google/common/collect/BstModifier<TK;TN;>;"
    move-object v3, p0

    .line 119
    .local v3, "originalRoot":Lcom/google/common/collect/BstNode;, "TN;"
    if-nez p0, :cond_11

    const/4 v4, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v1, p0}, Lcom/google/common/collect/BstNodeFactory;->createLeaf(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v4

    .line 120
    .local v4, "originalTarget":Lcom/google/common/collect/BstNode;, "TN;"
    :goto_15
    invoke-interface {v2, p1, v4}, Lcom/google/common/collect/BstModifier;->modify(Ljava/lang/Object;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v5

    .line 121
    .local v5, "modResult":Lcom/google/common/collect/BstModificationResult;, "Lcom/google/common/collect/BstModificationResult<TN;>;"
    const/4 v6, 0x0

    .line 122
    .local v6, "originalLeft":Lcom/google/common/collect/BstNode;, "TN;"
    const/4 v7, 0x0

    .line 123
    .local v7, "originalRight":Lcom/google/common/collect/BstNode;, "TN;"
    if-eqz p0, :cond_29

    .line 124
    sget-object v8, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v8}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v6

    .line 125
    sget-object v8, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v8}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v7

    .line 127
    :cond_29
    sget-object v8, Lcom/google/common/collect/BstOperations$1;->$SwitchMap$com$google$common$collect$BstModificationResult$ModificationType:[I

    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->getType()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_78

    .line 153
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 143
    :pswitch_3e
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v8

    if-eqz v8, :cond_4d

    .line 144
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v8

    invoke-interface {v0, v1, v8, v6, v7}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v8

    goto :goto_73

    .line 146
    :cond_4d
    if-eqz p0, :cond_54

    .line 147
    invoke-interface {v0, v1, v6, v7}, Lcom/google/common/collect/BstBalancePolicy;->combine(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v8

    goto :goto_73

    .line 149
    :cond_54
    const/4 v8, 0x0

    .line 151
    .local v8, "changedRoot":Lcom/google/common/collect/BstNode;, "TN;"
    goto :goto_73

    .line 132
    .end local v8    # "changedRoot":Lcom/google/common/collect/BstNode;, "TN;"
    :pswitch_56
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v8

    if-eqz v8, :cond_65

    .line 133
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->getChangedTarget()Lcom/google/common/collect/BstNode;

    move-result-object v8

    invoke-virtual {v1, v8, v6, v7}, Lcom/google/common/collect/BstNodeFactory;->createNode(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v8

    goto :goto_73

    .line 135
    :cond_65
    if-nez p0, :cond_69

    .line 136
    const/4 v8, 0x0

    goto :goto_73

    .line 138
    :cond_69
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Modification result is a REBUILDING_CHANGE, but rebalancing required"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 129
    :pswitch_71
    move-object v8, p0

    .line 130
    .restart local v8    # "changedRoot":Lcom/google/common/collect/BstNode;, "TN;"
    nop

    .line 155
    :goto_73
    invoke-static {p1, v3, v8, v5}, Lcom/google/common/collect/BstMutationResult;->mutationResult(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v9

    return-object v9

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_71
        :pswitch_56
        :pswitch_3e
    .end packed-switch
.end method

.method public static mutate(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;",
            "Lcom/google/common/collect/BstMutationRule<",
            "TK;TN;>;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 92
    .local p0, "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    .local p1, "mutationRule":Lcom/google/common/collect/BstMutationRule;, "Lcom/google/common/collect/BstMutationRule<TK;TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v0

    .line 95
    .local v0, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getNodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v1

    .line 97
    .local v1, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v2

    .line 98
    .local v2, "target":Lcom/google/common/collect/BstNode;, "TN;"
    invoke-virtual {v2}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v2, v3, p1}, Lcom/google/common/collect/BstOperations;->modify(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v4

    .line 100
    .local v4, "result":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :goto_1a
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->hasPrefix()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 101
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getPrefix()Lcom/google/common/collect/BstPath;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/BstInOrderPath;

    .line 102
    .local v5, "prefix":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {v5}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getSideOfExtension()Lcom/google/common/collect/BstSide;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v1, v0}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v4

    .line 103
    move-object p0, v5

    .line 104
    .end local v5    # "prefix":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    goto :goto_1a

    .line 105
    :cond_34
    return-object v4
.end method

.method public static mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;
    .registers 9
    .param p2    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Lcom/google/common/collect/BstMutationRule<",
            "TK;TN;>;TN;TK;)",
            "Lcom/google/common/collect/BstMutationResult<",
            "TK;TN;>;"
        }
    .end annotation

    .line 71
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "mutationRule":Lcom/google/common/collect/BstMutationRule;, "Lcom/google/common/collect/BstMutationRule<TK;TN;>;"
    .local p2, "tree":Lcom/google/common/collect/BstNode;, "TN;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p2, :cond_2e

    .line 75
    invoke-virtual {p2}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "cmp":I
    if-eqz v0, :cond_2e

    .line 77
    if-gez v0, :cond_17

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    goto :goto_19

    :cond_17
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    .line 78
    .local v1, "side":Lcom/google/common/collect/BstSide;
    :goto_19
    invoke-virtual {p2, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-static {p0, p1, v2, p3}, Lcom/google/common/collect/BstOperations;->mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v2

    .line 80
    .local v2, "mutation":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getNodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/BstMutationRule;->getBalancePolicy()Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v4

    invoke-virtual {v2, p2, v1, v3, v4}, Lcom/google/common/collect/BstMutationResult;->lift(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v3

    return-object v3

    .line 84
    .end local v0    # "cmp":I
    .end local v1    # "side":Lcom/google/common/collect/BstSide;
    .end local v2    # "mutation":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TK;TN;>;"
    :cond_2e
    invoke-static {p2, p3, p1}, Lcom/google/common/collect/BstOperations;->modify(Lcom/google/common/collect/BstNode;Ljava/lang/Object;Lcom/google/common/collect/BstMutationRule;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v0

    return-object v0
.end method

.method public static seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;
    .registers 6
    .param p1    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;>(",
            "Ljava/util/Comparator<",
            "-TK;>;TN;TK;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 42
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "tree":Lcom/google/common/collect/BstNode;, "TN;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_7

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_7
    invoke-virtual {p1}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 47
    .local v0, "cmp":I
    if-nez v0, :cond_12

    .line 48
    return-object p1

    .line 50
    :cond_12
    if-gez v0, :cond_17

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    goto :goto_19

    :cond_17
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    .line 51
    .local v1, "side":Lcom/google/common/collect/BstSide;
    :goto_19
    invoke-virtual {p1, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/google/common/collect/BstOperations;->seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    return-object v2
.end method
