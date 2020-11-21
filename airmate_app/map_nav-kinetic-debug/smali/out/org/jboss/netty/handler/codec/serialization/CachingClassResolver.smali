.class Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;
.super Ljava/lang/Object;
.source "CachingClassResolver.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# instance fields
.field private final classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegate:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V
    .registers 3
    .param p1, "delegate"    # Lorg/jboss/netty/handler/codec/serialization/ClassResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/serialization/ClassResolver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 25
    .local p2, "classCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;->delegate:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    .line 27
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;->classCache:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;->classCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 34
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_b

    .line 35
    return-object v0

    .line 39
    :cond_b
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;->delegate:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-interface {v1, p1}, Lorg/jboss/netty/handler/codec/serialization/ClassResolver;->resolve(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CachingClassResolver;->classCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object v0
.end method
