.class public final Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;
.super Ljava/lang/Object;
.source "ClassResolvers.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static cacheDisabled(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .registers 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 30
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method static defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 86
    if-eqz p0, :cond_3

    .line 87
    return-object p0

    .line 90
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 91
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_e

    .line 92
    return-object v0

    .line 95
    :cond_e
    const-class v1, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public static softCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .registers 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 80
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lorg/jboss/netty/handler/codec/serialization/SoftReferenceMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static softCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .registers 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 54
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lorg/jboss/netty/handler/codec/serialization/SoftReferenceMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/serialization/SoftReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static weakCachingConcurrentResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .registers 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 67
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lorg/jboss/netty/handler/codec/serialization/WeakReferenceMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method

.method public static weakCachingResolver(Ljava/lang/ClassLoader;)Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .registers 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 41
    new-instance v0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;

    new-instance v1, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolvers;->defaultClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/serialization/ClassLoaderClassResolver;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v2, Lorg/jboss/netty/handler/codec/serialization/WeakReferenceMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/serialization/WeakReferenceMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;-><init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V

    return-object v0
.end method
