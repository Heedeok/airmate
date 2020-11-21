.class final Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardCapturer"
.end annotation


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/reflect/TypeResolver$1;

    .line 275
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    return-void
.end method

.method private capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 323
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 324
    .local v0, "result":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 325
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 327
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 316
    if-nez p1, :cond_4

    .line 317
    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 8
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 280
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 282
    return-object p1

    .line 284
    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_d

    .line 285
    return-object p1

    .line 287
    :cond_d
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_21

    .line 288
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 289
    .local v0, "arrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1

    .line 291
    .end local v0    # "arrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_21
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_43

    .line 292
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 293
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    return-object v1

    .line 298
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_43
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_8a

    .line 299
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 300
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 301
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-nez v2, :cond_89

    .line 302
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 303
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-of ? extends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "name":Ljava/lang/String;
    const-class v4, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/google/common/reflect/Types;->newTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    return-object v4

    .line 309
    .end local v2    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v3    # "name":Ljava/lang/String;
    :cond_89
    return-object p1

    .line 312
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    :cond_8a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must have been one of the known types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
