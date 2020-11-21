.class Lcom/google/common/eventbus/AnnotatedHandlerFinder;
.super Ljava/lang/Object;
.source "AnnotatedHandlerFinder.java"

# interfaces
.implements Lcom/google/common/eventbus/HandlerFindingStrategy;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/EventHandler;
    .registers 3
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 79
    invoke-static {p1}, Lcom/google/common/eventbus/AnnotatedHandlerFinder;->methodIsDeclaredThreadSafe(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    new-instance v0, Lcom/google/common/eventbus/EventHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/common/eventbus/EventHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_11

    .line 82
    :cond_c
    new-instance v0, Lcom/google/common/eventbus/SynchronizedEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/common/eventbus/SynchronizedEventHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 84
    .local v0, "wrapper":Lcom/google/common/eventbus/EventHandler;
    :goto_11
    return-object v0
.end method

.method private static methodIsDeclaredThreadSafe(Ljava/lang/reflect/Method;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 96
    const-class v0, Lcom/google/common/eventbus/AllowConcurrentEvents;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public findAllHandlers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;
    .registers 13
    .param p1, "listener"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/eventbus/EventHandler;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .line 42
    .local v0, "methodsInListener":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Class<*>;Lcom/google/common/eventbus/EventHandler;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "clazz":Ljava/lang/Class;
    :goto_8
    if-eqz v1, :cond_63

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_11
    if-ge v5, v3, :cond_5e

    aget-object v6, v2, v5

    .line 45
    .local v6, "method":Ljava/lang/reflect/Method;
    const-class v7, Lcom/google/common/eventbus/Subscribe;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/google/common/eventbus/Subscribe;

    .line 47
    .local v7, "annotation":Lcom/google/common/eventbus/Subscribe;
    if-eqz v7, :cond_5b

    .line 48
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 49
    .local v8, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v9, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_31

    .line 55
    aget-object v9, v8, v4

    .line 56
    .local v9, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, v6}, Lcom/google/common/eventbus/AnnotatedHandlerFinder;->makeHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lcom/google/common/eventbus/EventHandler;

    move-result-object v10

    .line 58
    .local v10, "handler":Lcom/google/common/eventbus/EventHandler;
    invoke-interface {v0, v9, v10}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5b

    .line 50
    .end local v9    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "handler":Lcom/google/common/eventbus/EventHandler;
    :cond_31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has @Subscribe annotation, but requires "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " arguments.  Event handler methods "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "must require a single argument."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "annotation":Lcom/google/common/eventbus/Subscribe;
    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 61
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "len$":I
    .end local v5    # "i$":I
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    .line 63
    :cond_63
    return-object v0
.end method
