.class public final Lcom/google/common/collect/TreeMultiset;
.super Lcom/google/common/collect/AbstractSortedMultiset;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;,
        Lcom/google/common/collect/TreeMultiset$SetCountModifier;,
        Lcom/google/common/collect/TreeMultiset$RemoveModifier;,
        Lcom/google/common/collect/TreeMultiset$AddModifier;,
        Lcom/google/common/collect/TreeMultiset$MultisetModifier;,
        Lcom/google/common/collect/TreeMultiset$Node;,
        Lcom/google/common/collect/TreeMultiset$LiveEntry;,
        Lcom/google/common/collect/TreeMultiset$ToRemove;,
        Lcom/google/common/collect/TreeMultiset$Reference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstNodeFactory<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstAggregate<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private final transient range:Lcom/google/common/collect/GeneralRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/GeneralRange<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient rootReference:Lcom/google/common/collect/TreeMultiset$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$Reference<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 435
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$3;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    .line 453
    new-instance v0, Lcom/google/common/collect/TreeMultiset$4;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$4;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    .line 471
    new-instance v0, Lcom/google/common/collect/TreeMultiset$5;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$5;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/GeneralRange<",
            "TE;>;",
            "Lcom/google/common/collect/TreeMultiset$Reference<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "range":Lcom/google/common/collect/GeneralRange;, "Lcom/google/common/collect/GeneralRange<TE;>;"
    .local p2, "root":Lcom/google/common/collect/TreeMultiset$Reference;, "Lcom/google/common/collect/TreeMultiset$Reference<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 139
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 140
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 141
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 133
    invoke-static {p1}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    .line 134
    new-instance v0, Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 135
    return-void
.end method

.method static synthetic access$1300(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$Node;

    .line 61
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$Reference;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset;

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/TreeMultiset$Node;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$Node;

    .line 61
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$Node;

    .line 61
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method private static countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .param p0    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "*>;)I"
        }
    .end annotation

    .line 427
    .local p0, "entry":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 117
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 118
    .local v0, "multiset":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 119
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .registers 3
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez p0, :cond_c

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_11
    return-object v0
.end method

.method private distinctAggregate()Lcom/google/common/collect/BstAggregate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstAggregate<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->DISTINCT_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    return-object v0
.end method

.method private static distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    .registers 2
    .param p0    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "*>;)I"
        }
    .end annotation

    .line 423
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$1100(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    :goto_8
    return v0
.end method

.method private iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;
    .registers 5
    .param p1    # Lcom/google/common/collect/BstInOrderPath;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "direction"    # Lcom/google/common/collect/BstSide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "start":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)V

    .line 291
    .local v0, "pathIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;>;"
    new-instance v1, Lcom/google/common/collect/TreeMultiset$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method private mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/TreeMultiset<",
            "TE;>.MultisetModifier;)I"
        }
    .end annotation

    .line 202
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "modifier":Lcom/google/common/collect/TreeMultiset$MultisetModifier;, "Lcom/google/common/collect/TreeMultiset<TE;>.MultisetModifier;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->singleRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/common/collect/BstMutationRule;->createRule(Lcom/google/common/collect/BstModifier;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;)Lcom/google/common/collect/BstMutationRule;

    move-result-object v0

    .line 207
    .local v0, "mutationRule":Lcom/google/common/collect/BstMutationRule;, "Lcom/google/common/collect/BstMutationRule<TE;Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/BstNode;

    invoke-static {v1, v0, v2, p1}, Lcom/google/common/collect/BstOperations;->mutate(Ljava/util/Comparator;Lcom/google/common/collect/BstMutationRule;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstMutationResult;

    move-result-object v1

    .line 209
    .local v1, "mutationResult":Lcom/google/common/collect/BstMutationResult;, "Lcom/google/common/collect/BstMutationResult<TE;Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->getOriginalRoot()Lcom/google/common/collect/BstNode;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->getChangedRoot()Lcom/google/common/collect/BstNode;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/TreeMultiset$Reference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 213
    invoke-virtual {v1}, Lcom/google/common/collect/BstMutationResult;->getOriginalTarget()Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    .line 214
    .local v2, "original":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v3

    return v3

    .line 211
    .end local v2    # "original":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    :cond_3b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method private nodeFactory()Lcom/google/common/collect/BstNodeFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstNodeFactory<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->NODE_FACTORY:Lcom/google/common/collect/BstNodeFactory;

    return-object v0
.end method

.method private pathFactory()Lcom/google/common/collect/BstPathFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstPathFactory<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;",
            "Lcom/google/common/collect/BstInOrderPath<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {}, Lcom/google/common/collect/BstInOrderPath;->inOrderFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 581
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 583
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 584
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const-class v1, Lcom/google/common/collect/AbstractSortedMultiset;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/GeneralRange;->all(Ljava/util/Comparator;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "rootReference"

    invoke-static {v1, v2}, Lcom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/Serialization$FieldSetter;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v2}, Lcom/google/common/collect/TreeMultiset$Reference;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 590
    return-void
.end method

.method private sizeAggregate()Lcom/google/common/collect/BstAggregate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BstAggregate<",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "TE;>;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    sget-object v0, Lcom/google/common/collect/TreeMultiset;->SIZE_AGGREGATE:Lcom/google/common/collect/BstAggregate;

    return-object v0
.end method

.method private static sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J
    .registers 3
    .param p0    # Lcom/google/common/collect/TreeMultiset$Node;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$Node<",
            "*>;)J"
        }
    .end annotation

    .line 419
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<*>;"
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$Node;->access$1000(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    :goto_9
    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 575
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 576
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    if-nez p2, :cond_a

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AddModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/TreeMultiset$AddModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    move-object v0, p1

    .line 147
    .local v0, "cast":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->comparator:Ljava/util/Comparator;

    invoke-interface {v1, v0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 148
    return-object v0
.end method

.method public clear()V
    .registers 5

    .line 360
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 361
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/BstCountBasedBalancePolicies;->fullRebalancePolicy(Lcom/google/common/collect/BstAggregate;)Lcom/google/common/collect/BstBalancePolicy;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->nodeFactory()Lcom/google/common/collect/BstNodeFactory;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->minusRange(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstBalancePolicy;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$Node;

    .line 364
    .local v1, "cleared":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/TreeMultiset$Reference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 367
    return-void

    .line 365
    :cond_25
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 190
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v3}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/BstNode;

    invoke-static {v2, v3, v1}, Lcom/google/common/collect/BstOperations;->seek(Ljava/util/Comparator;Lcom/google/common/collect/BstNode;Ljava/lang/Object;)Lcom/google/common/collect/BstNode;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/TreeMultiset$Node;

    .line 191
    .local v2, "node":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v3
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_23} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_23} :catch_25

    return v3

    .line 193
    .end local v2    # "node":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    :cond_24
    return v0

    .line 196
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :catch_25
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 194
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_27
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 272
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/BstInOrderPath;

    .line 274
    .local v1, "startingPath":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method distinctElements()I
    .registers 4

    .line 175
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 176
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->distinctAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->totalInRange(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v1

    return v1
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 264
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->pathFactory()Lcom/google/common/collect/BstPathFactory;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/collect/BstRangeOps;->furthestPath(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstPathFactory;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/BstInOrderPath;

    .line 266
    .local v1, "startingPath":Lcom/google/common/collect/BstInOrderPath;, "Lcom/google/common/collect/BstInOrderPath<Lcom/google/common/collect/TreeMultiset$Node<TE;>;>;"
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->iteratorInDirection(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 6
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->comparator:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->upTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 7
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 229
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    if-nez p2, :cond_7

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 233
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-instance v2, Lcom/google/common/collect/TreeMultiset$RemoveModifier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/google/common/collect/TreeMultiset$RemoveModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1e} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1e} :catch_21

    move v0, v2

    nop

    :cond_20
    return v0

    .line 237
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :catch_21
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 235
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_23
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 254
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SetCountModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/common/collect/TreeMultiset$SetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;ILcom/google/common/collect/TreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 6
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 246
    new-instance v0, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/common/collect/TreeMultiset$ConditionalSetCountModifier;-><init>(Lcom/google/common/collect/TreeMultiset;IILcom/google/common/collect/TreeMultiset$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->mutate(Ljava/lang/Object;Lcom/google/common/collect/TreeMultiset$MultisetModifier;)I

    move-result v0

    if-ne v0, p2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public size()I
    .registers 4

    .line 181
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    .line 182
    .local v0, "root":Lcom/google/common/collect/TreeMultiset$Node;, "Lcom/google/common/collect/TreeMultiset$Node<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->sizeAggregate()Lcom/google/common/collect/BstAggregate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/BstRangeOps;->totalInRange(Lcom/google/common/collect/BstAggregate;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstNode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    return v1
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/common/collect/BoundType;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lcom/google/common/collect/BoundType;

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .registers 6
    .param p2, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->comparator:Ljava/util/Comparator;

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/GeneralRange;->downTo(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/GeneralRange;->intersect(Lcom/google/common/collect/GeneralRange;)Lcom/google/common/collect/GeneralRange;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->rootReference:Lcom/google/common/collect/TreeMultiset$Reference;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/TreeMultiset$Reference;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 60
    .local p0, "this":Lcom/google/common/collect/TreeMultiset;, "Lcom/google/common/collect/TreeMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
