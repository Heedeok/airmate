.class final Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeMappingIntrospector"
.end annotation


# static fields
.field private static final wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;


# instance fields
.field private final introspectedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 189
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Lcom/google/common/reflect/TypeResolver$1;)V

    sput-object v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    .line 192
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectedTypes:Ljava/util/Set;

    return-void
.end method

.method static getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .param p0, "contextType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;-><init>()V

    .line 201
    .local v0, "introspector":Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    sget-object v1, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->wildcardCapturer:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 202
    iget-object v1, v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private introspect(Ljava/lang/reflect/Type;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 206
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectedTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 207
    return-void

    .line 209
    :cond_9
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_14

    .line 210
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectParameterizedType(Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_4c

    .line 211
    :cond_14
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1f

    .line 212
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectClass(Ljava/lang/Class;)V

    goto :goto_4c

    .line 213
    :cond_1f
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 214
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .local v1, "i$":I
    .local v2, "len$":I
    :goto_2c
    if-ge v1, v2, :cond_4c

    aget-object v3, v0, v1

    .line 215
    .local v3, "bound":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 214
    .end local v3    # "bound":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 217
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_36
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4c

    .line 218
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    array-length v2, v0

    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :goto_42
    if-ge v1, v2, :cond_4c

    aget-object v3, v0, v1

    .line 219
    .restart local v3    # "bound":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 218
    .end local v3    # "bound":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 222
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method private introspectClass(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 225
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 227
    .local v3, "interfaceType":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 226
    .end local v3    # "interfaceType":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 229
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_17
    return-void
.end method

.method private introspectParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .registers 8
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .line 233
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 234
    .local v0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 235
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 236
    .local v2, "typeArgs":[Ljava/lang/reflect/Type;
    array-length v3, v1

    array-length v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 237
    nop

    .local v5, "i":I
    :goto_1a
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_28

    .line 238
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-direct {p0, v4, v5}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->map(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)V

    .line 237
    add-int/lit8 v5, v3, 0x1

    goto :goto_1a

    .line 240
    .end local v3    # "i":I
    :cond_28
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspectClass(Ljava/lang/Class;)V

    .line 241
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->introspect(Ljava/lang/reflect/Type;)V

    .line 242
    return-void
.end method

.method private map(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)V
    .registers 6
    .param p2, "arg"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 245
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    return-void

    .line 254
    :cond_9
    move-object v0, p2

    .local v0, "t":Ljava/lang/reflect/Type;
    :goto_a
    if-eqz v0, :cond_2a

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 260
    move-object v1, p2

    .local v1, "x":Ljava/lang/reflect/Type;
    :goto_13
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Type;

    goto :goto_13

    .line 261
    .end local v1    # "x":Ljava/lang/reflect/Type;
    :cond_1f
    return-void

    .line 254
    :cond_20
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_a

    .line 264
    .end local v0    # "t":Ljava/lang/reflect/Type;
    :cond_2a
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method
