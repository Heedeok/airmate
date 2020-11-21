.class final Lcom/google/common/collect/BstRangeOps;
.super Ljava/lang/Object;
.source "BstRangeOps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beyond(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;TK;",
            "Lcom/google/common/collect/BstSide;",
            ")Z"
        }
    .end annotation

    .line 163
    .local p0, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/google/common/collect/BstRangeOps$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 170
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 166
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method public static furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;
    .registers 6
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .param p3    # Lcom/google/common/collect/BstNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;P:",
            "Lcom/google/common/collect/BstPath<",
            "TN;TP;>;>(",
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstPathFactory<",
            "TN;TP;>;TN;)TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 128
    .local p0, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p2, "pathFactory":Lcom/google/common/collect/BstPathFactory;, "Lcom/google/common/collect/BstPathFactory<TN;TP;>;"
    .local p3, "root":Lcom/google/common/collect/BstNode;, "TN;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-nez p3, :cond_d

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_d
    invoke-interface {p2, p3}, Lcom/google/common/collect/BstPathFactory;->initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v0

    .line 135
    .local v0, "path":Lcom/google/common/collect/BstPath;, "TP;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    return-object v1
.end method

.method private static furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;
    .registers 8
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode<",
            "TK;TN;>;P:",
            "Lcom/google/common/collect/BstPath<",
            "TN;TP;>;>(",
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstPathFactory<",
            "TN;TP;>;TP;)TP;"
        }
    .end annotation

    .line 140
    .local p0, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p2, "pathFactory":Lcom/google/common/collect/BstPathFactory;, "Lcom/google/common/collect/BstPathFactory<TN;TP;>;"
    .local p3, "currentPath":Lcom/google/common/collect/BstPath;, "TP;"
    invoke-virtual {p3}, Lcom/google/common/collect/BstPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 141
    .local v0, "tip":Lcom/google/common/collect/BstNode;, "TN;"
    invoke-virtual {v0}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 142
    .local v1, "tipKey":Ljava/lang/Object;, "TK;"
    invoke-static {p0, v1, p1}, Lcom/google/common/collect/BstRangeOps;->beyond(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    .line 143
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 144
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-interface {p2, p3, v2}, Lcom/google/common/collect/BstPathFactory;->extension(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;

    move-result-object p3

    .line 145
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v2

    return-object v2

    .line 147
    :cond_26
    return-object v3

    .line 149
    :cond_27
    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 150
    invoke-interface {p2, p3, p1}, Lcom/google/common/collect/BstPathFactory;->extension(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;

    move-result-object v2

    .line 151
    .local v2, "alphaPath":Lcom/google/common/collect/BstPath;, "TP;"
    invoke-static {p0, p1, p2, v2}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstPath;)Lcom/google/common/collect/BstPath;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_38

    .line 153
    return-object v2

    .line 156
    .end local v2    # "alphaPath":Lcom/google/common/collect/BstPath;, "TP;"
    :cond_38
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/common/collect/BstRangeOps;->beyond(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_44

    :cond_43
    move-object v3, p3

    :goto_44
    return-object v3
.end method

.method public static minusRange(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .registers 7
    .param p3    # Lcom/google/common/collect/BstNode;
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
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;TN;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 78
    .local p0, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p1, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    .local p2, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p3, "root":Lcom/google/common/collect/BstNode;, "TN;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/common/collect/BstRangeOps;->subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, v1

    .line 84
    .local v0, "higher":Lcom/google/common/collect/BstNode;, "TN;"
    :goto_18
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/common/collect/BstRangeOps;->subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    nop

    .line 87
    .local v1, "lower":Lcom/google/common/collect/BstNode;, "TN;"
    :cond_25
    invoke-interface {p1, p2, v1, v0}, Lcom/google/common/collect/BstBalancePolicy;->combine(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    return-object v2
.end method

.method private static subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .registers 9
    .param p3, "side"    # Lcom/google/common/collect/BstSide;
    .param p4    # Lcom/google/common/collect/BstNode;
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
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;",
            "Lcom/google/common/collect/BstBalancePolicy<",
            "TN;>;",
            "Lcom/google/common/collect/BstNodeFactory<",
            "TN;>;",
            "Lcom/google/common/collect/BstSide;",
            "TN;)TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    .local p0, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p1, "balancePolicy":Lcom/google/common/collect/BstBalancePolicy;, "Lcom/google/common/collect/BstBalancePolicy<TN;>;"
    .local p2, "nodeFactory":Lcom/google/common/collect/BstNodeFactory;, "Lcom/google/common/collect/BstNodeFactory<TN;>;"
    .local p4, "root":Lcom/google/common/collect/BstNode;, "TN;"
    if-nez p4, :cond_4

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_4
    invoke-virtual {p4}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/google/common/collect/BstRangeOps;->beyond(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 102
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 103
    .local v0, "left":Lcom/google/common/collect/BstNode;, "TN;"
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 104
    .local v1, "right":Lcom/google/common/collect/BstNode;, "TN;"
    sget-object v2, Lcom/google/common/collect/BstRangeOps$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p3}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 112
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 109
    :pswitch_2b
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v0}, Lcom/google/common/collect/BstRangeOps;->subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 110
    goto :goto_39

    .line 106
    :pswitch_32
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v1}, Lcom/google/common/collect/BstRangeOps;->subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 107
    nop

    .line 114
    :goto_39
    invoke-interface {p1, p2, p4, v0, v1}, Lcom/google/common/collect/BstBalancePolicy;->balance(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    return-object v2

    .line 116
    .end local v0    # "left":Lcom/google/common/collect/BstNode;, "TN;"
    .end local v1    # "right":Lcom/google/common/collect/BstNode;, "TN;"
    :cond_3e
    invoke-virtual {p4, p3}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/common/collect/BstRangeOps;->subTreeBeyondRangeToSide(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method private static totalBeyondRangeToSide(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)J
    .registers 8
    .param p2, "side"    # Lcom/google/common/collect/BstSide;
    .param p3    # Lcom/google/common/collect/BstNode;
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
            "Lcom/google/common/collect/BstAggregate<",
            "-TN;>;",
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;",
            "Lcom/google/common/collect/BstSide;",
            "TN;)J"
        }
    .end annotation

    .line 57
    .local p0, "aggregate":Lcom/google/common/collect/BstAggregate;, "Lcom/google/common/collect/BstAggregate<-TN;>;"
    .local p1, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p3, "root":Lcom/google/common/collect/BstNode;, "TN;"
    const-wide/16 v0, 0x0

    .line 58
    .local v0, "accum":J
    :goto_2
    if-eqz p3, :cond_2b

    .line 59
    invoke-virtual {p3}, Lcom/google/common/collect/BstNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/google/common/collect/BstRangeOps;->beyond(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 60
    invoke-interface {p0, p3}, Lcom/google/common/collect/BstAggregate;->entryValue(Lcom/google/common/collect/BstNode;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 61
    invoke-virtual {p3, p2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/common/collect/BstAggregate;->treeValue(Lcom/google/common/collect/BstNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_2

    .line 64
    :cond_26
    invoke-virtual {p3, p2}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object p3

    goto :goto_2

    .line 67
    :cond_2b
    return-wide v0
.end method

.method public static totalInRange(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)J
    .registers 7
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
            "TK;TN;>;>(",
            "Lcom/google/common/collect/BstAggregate<",
            "-TN;>;",
            "Lcom/google/common/collect/GeneralRange<",
            "TK;>;TN;)J"
        }
    .end annotation

    .line 39
    .local p0, "aggregate":Lcom/google/common/collect/BstAggregate;, "Lcom/google/common/collect/BstAggregate<-TN;>;"
    .local p1, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TK;>;"
    .local p2, "root":Lcom/google/common/collect/BstNode;, "TN;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eqz p2, :cond_2e

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2e

    .line 44
    :cond_f
    invoke-interface {p0, p2}, Lcom/google/common/collect/BstAggregate;->treeValue(Lcom/google/common/collect/BstNode;)J

    move-result-wide v0

    .line 45
    .local v0, "total":J
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 46
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v2, p2}, Lcom/google/common/collect/BstRangeOps;->totalBeyondRangeToSide(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 48
    :cond_20
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 49
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v2, p2}, Lcom/google/common/collect/BstRangeOps;->totalBeyondRangeToSide(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNode;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 51
    :cond_2d
    return-wide v0

    .line 42
    .end local v0    # "total":J
    :cond_2e
    :goto_2e
    const-wide/16 v0, 0x0

    return-wide v0
.end method
