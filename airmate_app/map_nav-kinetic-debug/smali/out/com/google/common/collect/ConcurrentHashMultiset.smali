.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,
        Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "countMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 141
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/ConcurrentHashMultiset;

    .line 56
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/GenericMapMaker;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/GenericMapMaker<",
            "-TE;-",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "mapMaker":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<-TE;-Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/GenericMapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 99
    .local v0, "multiset":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 100
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 584
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 586
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 588
    .local v0, "deserializedCountMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    return-void
.end method

.method private safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 164
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_a

    return-object v1

    .line 167
    :catch_a
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0

    .line 165
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_c
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/NullPointerException;
    return-object v0
.end method

.method private snapshot()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 206
    .local v2, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    .local v4, "i":I
    :goto_24
    if-lez v4, :cond_2c

    .line 208
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 210
    .end local v2    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    .end local v4    # "i":I
    :cond_2c
    goto :goto_10

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2d
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 580
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 581
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 9
    .param p2, "occurrences"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_7

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 229
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const-string v3, "Invalid occurrences: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_1b
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 233
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_32

    .line 234
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 235
    if-nez v0, :cond_32

    .line 236
    return v1

    .line 242
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 243
    .local v2, "oldValue":I
    if-eqz v2, :cond_65

    .line 245
    :try_start_38
    invoke-static {v2, p2}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v3

    .line 246
    .local v3, "newValue":I
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4
    :try_end_40
    .catch Ljava/lang/ArithmeticException; {:try_start_38 .. :try_end_40} :catch_45

    if-eqz v4, :cond_43

    .line 248
    return v2

    .line 253
    .end local v3    # "newValue":I
    :cond_43
    nop

    .line 265
    .end local v2    # "oldValue":I
    goto :goto_32

    .line 250
    .restart local v2    # "oldValue":I
    :catch_45
    move-exception v1

    .line 251
    .local v1, "overflow":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overflow adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " occurrences to a count of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    .end local v1    # "overflow":Ljava/lang/ArithmeticException;
    :cond_65
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 259
    .local v3, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    goto :goto_7c

    .line 268
    .end local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "oldValue":I
    .end local v3    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_7b
    goto :goto_1b

    .line 261
    .restart local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v2    # "oldValue":I
    .restart local v3    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_7c
    :goto_7c
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .line 531
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 532
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 154
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_c
    return v1
.end method

.method createElementSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 452
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method distinctElements()I
    .registers 2

    .line 482
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    .line 510
    .local v0, "readOnlyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$3;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 475
    .local v0, "result":Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    if-nez v0, :cond_d

    .line 476
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 478
    :cond_d
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 486
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 281
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    if-nez p2, :cond_7

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 284
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    const-string v3, "Invalid occurrences: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 287
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_22

    .line 288
    return v1

    .line 291
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 292
    .local v2, "oldValue":I
    if-eqz v2, :cond_3e

    .line 293
    sub-int v3, v2, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 294
    .local v3, "newValue":I
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 295
    if-nez v3, :cond_3b

    .line 298
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    :cond_3b
    return v2

    .line 302
    .end local v3    # "newValue":I
    :cond_3c
    nop

    .line 305
    .end local v2    # "oldValue":I
    goto :goto_22

    .line 303
    .restart local v2    # "oldValue":I
    :cond_3e
    return v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeExactly(Ljava/lang/Object;I)Z
    .registers 9
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .line 320
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 321
    return v0

    .line 323
    :cond_4
    const/4 v1, 0x0

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 326
    .local v2, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_1e

    .line 327
    return v1

    .line 330
    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 331
    .local v3, "oldValue":I
    if-ge v3, p2, :cond_25

    .line 332
    return v1

    .line 334
    :cond_25
    sub-int v4, v3, p2

    .line 335
    .local v4, "newValue":I
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 336
    if-nez v4, :cond_34

    .line 339
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    :cond_34
    return v0

    .line 343
    .end local v3    # "oldValue":I
    .end local v4    # "newValue":I
    :cond_35
    goto :goto_1e
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 8
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 356
    :goto_5
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 357
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 358
    if-nez p2, :cond_f

    .line 359
    return v1

    .line 361
    :cond_f
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 362
    if-nez v0, :cond_20

    .line 363
    return v1

    .line 370
    :cond_20
    :goto_20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 371
    .local v2, "oldValue":I
    if-nez v2, :cond_42

    .line 372
    if-nez p2, :cond_29

    .line 373
    return v1

    .line 375
    :cond_29
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 376
    .local v3, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_41

    .line 381
    .end local v3    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3f
    nop

    .line 393
    .end local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "oldValue":I
    goto :goto_5

    .line 378
    .restart local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v2    # "oldValue":I
    .restart local v3    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_41
    :goto_41
    return v1

    .line 383
    .end local v3    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_42
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 384
    if-nez p2, :cond_4f

    .line 387
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    :cond_4f
    return v2

    .line 392
    .end local v2    # "oldValue":I
    :cond_50
    goto :goto_20
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 10
    .param p2, "expectedOldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 409
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 412
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_28

    .line 413
    if-eqz p2, :cond_15

    .line 414
    return v1

    .line 415
    :cond_15
    if-nez p3, :cond_18

    .line 416
    return v2

    .line 419
    :cond_18
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v3, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    return v1

    .line 422
    :cond_28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 423
    .local v3, "oldValue":I
    if-ne v3, p2, :cond_5f

    .line 424
    if-nez v3, :cond_51

    .line 425
    if-nez p3, :cond_38

    .line 427
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    return v2

    .line 430
    :cond_38
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 431
    .local v4, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_4f

    :cond_4e
    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    :goto_50
    return v1

    .line 435
    .end local v4    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_51
    invoke-virtual {v0, v3, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 436
    if-nez p3, :cond_5e

    .line 439
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    :cond_5e
    return v2

    .line 445
    :cond_5f
    return v1
.end method

.method public size()I
    .registers 7

    .line 179
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "sum":J
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    .local v3, "value":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_c

    .line 183
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_1f
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    return v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 192
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 56
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
