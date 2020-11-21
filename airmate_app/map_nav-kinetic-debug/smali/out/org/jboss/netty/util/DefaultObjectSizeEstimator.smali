.class public Lorg/jboss/netty/util/DefaultObjectSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultObjectSizeEstimator.java"

# interfaces
.implements Lorg/jboss/netty/util/ObjectSizeEstimator;


# instance fields
.field private final class2size:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    .line 41
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private static align(I)I
    .registers 3
    .param p0, "size"    # I

    .line 120
    rem-int/lit8 v0, p0, 0x8

    .line 121
    .local v0, "r":I
    if-eqz v0, :cond_7

    .line 122
    rsub-int/lit8 v1, v0, 0x8

    add-int/2addr p0, v1

    .line 124
    :cond_7
    return p0
.end method

.method private estimateSize(Ljava/lang/Class;Ljava/util/Set;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)I"
        }
    .end annotation

    .line 81
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    .local v0, "objectSize":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 86
    :cond_f
    const/4 v1, 0x0

    if-eqz p2, :cond_19

    .line 87
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 88
    return v1

    .line 91
    :cond_19
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object p2, v2

    .line 94
    :cond_1f
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const/16 v2, 0x8

    .line 97
    .local v2, "answer":I
    move v3, v2

    move-object v2, p1

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "answer":I
    :goto_26
    if-eqz v2, :cond_4f

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 99
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v5

    move v7, v3

    const/4 v3, 0x0

    .local v3, "i$":I
    .local v6, "len$":I
    .local v7, "answer":I
    :goto_30
    if-ge v3, v6, :cond_49

    aget-object v8, v5, v3

    .line 100
    .local v8, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_3d

    .line 102
    goto :goto_46

    .line 105
    :cond_3d
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v9

    add-int/2addr v7, v9

    .line 99
    .end local v8    # "f":Ljava/lang/reflect/Field;
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 97
    .end local v3    # "i$":I
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "len$":I
    :cond_49
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move v3, v7

    goto :goto_26

    .line 109
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "answer":I
    .local v3, "answer":I
    :cond_4f
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v3}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->align(I)I

    move-result v1

    .line 115
    .end local v3    # "answer":I
    .local v1, "answer":I
    iget-object v2, p0, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->class2size:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return v1
.end method


# virtual methods
.method public estimateSize(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    const/16 v0, 0x8

    if-nez p1, :cond_5

    .line 54
    return v0

    .line 57
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->estimateSize(Ljava/lang/Class;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v1, v0

    .line 59
    .local v1, "answer":I
    instance-of v0, p1, Lorg/jboss/netty/util/EstimatableObjectWrapper;

    if-eqz v0, :cond_20

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/util/EstimatableObjectWrapper;

    invoke-interface {v0}, Lorg/jboss/netty/util/EstimatableObjectWrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_7f

    .line 61
    :cond_20
    instance-of v0, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_31

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_7f

    .line 63
    :cond_31
    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_3e

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_7f

    .line 65
    :cond_3e
    instance-of v0, p1, [B

    if-eqz v0, :cond_48

    .line 66
    move-object v0, p1

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v1, v0

    goto :goto_7f

    .line 67
    :cond_48
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_55

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_7f

    .line 69
    :cond_55
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_64

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    goto :goto_7f

    .line 71
    :cond_64
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_7f

    .line 72
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "m":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 74
    .end local v2    # "m":Ljava/lang/Object;
    goto :goto_6f

    .line 77
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    invoke-static {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;->align(I)I

    move-result v0

    return v0
.end method
