.class Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$WildcardCapturer;,
        Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    }
.end annotation


# instance fields
.field private final typeTable:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "typeTable":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeResolver$1;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method static accordingTo(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 51
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method private static populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 8
    .param p1, "from"    # Ljava/lang/reflect/Type;
    .param p2, "to"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 89
    .local p0, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_b

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 91
    :cond_b
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1e

    .line 92
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_4a

    .line 94
    :cond_1e
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4a

    .line 95
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 96
    .local v0, "fromArgs":[Ljava/lang/reflect/Type;
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 97
    .local v1, "toArgs":[Ljava/lang/reflect/Type;
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 98
    nop

    .local v4, "i":I
    :goto_3c
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 99
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-static {p0, v3, v4}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 98
    add-int/lit8 v4, v2, 0x1

    goto :goto_3c

    .line 102
    .end local v0    # "fromArgs":[Ljava/lang/reflect/Type;
    .end local v1    # "toArgs":[Ljava/lang/reflect/Type;
    .end local v2    # "i":I
    :cond_4a
    :goto_4a
    return-void
.end method

.method private resolve([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 127
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 128
    .local v0, "result":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 129
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 131
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;

    .line 135
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 136
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method private resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .registers 9
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;

    .line 174
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 175
    .local v0, "owner":Ljava/lang/reflect/Type;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 176
    .local v1, "resolvedOwner":Ljava/lang/reflect/Type;
    :goto_c
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 178
    .local v2, "resolvedRawType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 179
    .local v3, "vars":[Ljava/lang/reflect/Type;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/reflect/Type;

    .line 180
    .local v4, "resolvedArgs":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    array-length v6, v3

    if-ge v5, v6, :cond_2a

    .line 181
    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v4, v5

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 183
    .end local v5    # "i":I
    :cond_2a
    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    invoke-static {v1, v5, v4}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v5

    return-object v5
.end method

.method private resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 140
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v0, p0

    .line 141
    .local v0, "unguarded":Lcom/google/common/reflect/TypeResolver;
    new-instance v1, Lcom/google/common/reflect/TypeResolver$1;

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/google/common/reflect/TypeResolver$1;-><init>(Lcom/google/common/reflect/TypeResolver;Lcom/google/common/collect/ImmutableMap;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)V

    .line 150
    .local v1, "guarded":Lcom/google/common/reflect/TypeResolver;
    invoke-virtual {p0, p1, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method final resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 6
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 109
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_c

    .line 110
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 111
    :cond_c
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 113
    :cond_18
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_24

    .line 114
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 115
    :cond_24
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_41

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 117
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    new-instance v1, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolve([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver;->resolve([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1

    .line 122
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_41
    return-object p1
.end method

.method resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;
    .registers 8
    .param p2, "guardedResolver"    # Lcom/google/common/reflect/TypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/TypeResolver;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 159
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 160
    .local v0, "type":Ljava/lang/reflect/Type;
    if-nez v0, :cond_23

    .line 161
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 162
    .local v1, "bounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-nez v2, :cond_12

    .line 163
    return-object p1

    .line 165
    :cond_12
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v1}, Lcom/google/common/reflect/TypeResolver;->resolve([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/reflect/Types;->newTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    return-object v2

    .line 170
    .end local v1    # "bounds":[Ljava/lang/reflect/Type;
    :cond_23
    invoke-virtual {p2, v0}, Lcom/google/common/reflect/TypeResolver;->resolve(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method final where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 5
    .param p1, "mapFrom"    # Ljava/lang/reflect/Type;
    .param p2, "mapTo"    # Ljava/lang/reflect/Type;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 83
    .local v0, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v1

    return-object v1
.end method

.method final where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver;"
        }
    .end annotation

    .line 64
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 65
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    .local v2, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 68
    .local v3, "variable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 69
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const-string v7, "Type variable %s bound to itself"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    invoke-static {v5, v7, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 71
    .end local v2    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    .end local v3    # "variable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v4    # "type":Ljava/lang/reflect/Type;
    goto :goto_11

    .line 72
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3d
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method
