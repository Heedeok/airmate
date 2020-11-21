.class final Lcom/google/common/collect/BstInOrderPath;
.super Lcom/google/common/collect/BstPath;
.source "BstInOrderPath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode<",
        "*TN;>;>",
        "Lcom/google/common/collect/BstPath<",
        "TN;",
        "Lcom/google/common/collect/BstInOrderPath<",
        "TN;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private transient nextInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field private transient prevInOrder:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field private final sideExtension:Lcom/google/common/collect/BstSide;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V
    .registers 4
    .param p2, "sideExtension"    # Lcom/google/common/collect/BstSide;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/BstInOrderPath;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    .local p1, "tip":Lcom/google/common/collect/BstNode;, "TN;"
    .local p3, "tail":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/BstPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstPath;)V

    .line 64
    iput-object p2, p0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    .line 65
    nop

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/common/collect/BstNode;
    .param p2, "x1"    # Lcom/google/common/collect/BstSide;
    .param p3, "x2"    # Lcom/google/common/collect/BstInOrderPath;
    .param p4, "x3"    # Lcom/google/common/collect/BstInOrderPath$1;

    .line 32
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/BstInOrderPath;
    .param p1, "x1"    # Lcom/google/common/collect/BstSide;

    .line 32
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method private computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .registers 5
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 70
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    .line 71
    .local v0, "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    .line 72
    .local v1, "otherSide":Lcom/google/common/collect/BstSide;
    :goto_12
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/collect/BstNode;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 73
    invoke-static {v0, v1}, Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    goto :goto_12

    .line 75
    :cond_21
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 77
    .end local v0    # "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    .end local v1    # "otherSide":Lcom/google/common/collect/BstSide;
    :cond_26
    move-object v0, p0

    .line 78
    .local v0, "current":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    :goto_27
    iget-object v1, v0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    if-ne v1, p1, :cond_33

    .line 79
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->getPrefix()Lcom/google/common/collect/BstPath;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    goto :goto_27

    .line 81
    :cond_33
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->prefixOrNull()Lcom/google/common/collect/BstPath;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 82
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .registers 5
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode<",
            "*TN;>;>(",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;"
        }
    .end annotation

    .line 52
    .local p0, "path":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->getTip()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 54
    .local v0, "tip":Lcom/google/common/collect/BstNode;, "TN;"
    new-instance v1, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-object v1
.end method

.method public static inOrderFactory()Lcom/google/common/collect/BstPathFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode<",
            "*TN;>;>()",
            "Lcom/google/common/collect/BstPathFactory<",
            "TN;",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/common/collect/BstInOrderPath$1;

    invoke-direct {v0}, Lcom/google/common/collect/BstInOrderPath$1;-><init>()V

    return-object v0
.end method

.method private nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .registers 4
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    sget-object v0, Lcom/google/common/collect/BstInOrderPath$2;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    .line 94
    .local v0, "result":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    if-nez v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->nextInOrder:Lcom/google/common/base/Optional;

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    :goto_1d
    return-object v1

    .line 90
    .end local v0    # "result":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    :pswitch_1e
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    .line 91
    .restart local v0    # "result":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/google/common/collect/BstInOrderPath<TN;>;>;"
    if-nez v0, :cond_29

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->computeNextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/BstInOrderPath;->prevInOrder:Lcom/google/common/base/Optional;

    goto :goto_2a

    :cond_29
    move-object v1, v0

    :goto_2a
    return-object v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public getSideOfExtension()Lcom/google/common/collect/BstSide;
    .registers 2

    .line 124
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->sideExtension:Lcom/google/common/collect/BstSide;

    return-object v0
.end method

.method public hasNext(Lcom/google/common/collect/BstSide;)Z
    .registers 3
    .param p1, "side"    # Lcom/google/common/collect/BstSide;

    .line 104
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public next(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .registers 3
    .param p1, "side"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath<",
            "TN;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->hasNext(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 116
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->nextInOrder(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    return-object v0

    .line 114
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
