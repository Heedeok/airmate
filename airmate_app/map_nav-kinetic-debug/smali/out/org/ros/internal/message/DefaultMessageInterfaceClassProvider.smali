.class public Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;
.super Ljava/lang/Object;
.source "DefaultMessageInterfaceClassProvider.java"

# interfaces
.implements Lorg/ros/internal/message/MessageInterfaceClassProvider;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;->cache:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    .local p2, "messageInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    .param p1, "messageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    iget-object v0, p0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 42
    :cond_11
    :try_start_11
    const-string v0, "/"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "messageInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lorg/ros/internal/message/DefaultMessageInterfaceClassProvider;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_2a} :catch_2b

    .line 45
    return-object v1

    .line 46
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "messageInterfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_2b
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-class v1, Lorg/ros/internal/message/RawMessage;

    return-object v1
.end method
