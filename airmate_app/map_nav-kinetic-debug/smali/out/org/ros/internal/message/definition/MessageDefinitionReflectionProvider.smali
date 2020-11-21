.class public Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;
.super Ljava/lang/Object;
.source "MessageDefinitionReflectionProvider.java"

# interfaces
.implements Lorg/ros/message/MessageDefinitionProvider;


# static fields
.field private static final DEFINITION_FIELD:Ljava/lang/String; = "_DEFINITION"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->cache:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "messageDefinition"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "messageType"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "messageDefinition":Ljava/lang/String;
    if-nez v0, :cond_39

    .line 52
    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "className":Ljava/lang/String;
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "_DEFINITION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 56
    iget-object v3, p0, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->cache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32

    .line 59
    .end local v2    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_39

    .line 57
    :catch_32
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/ros/exception/RosMessageRuntimeException;

    invoke-direct {v3, v2}, Lorg/ros/exception/RosMessageRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 61
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return-object v0
.end method

.method public getMessageIdentifiersByPackage(Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/ros/message/MessageIdentifier;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPackages()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 4
    .param p1, "messageType"    # Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/ros/internal/message/definition/MessageDefinitionReflectionProvider;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_6

    .line 70
    nop

    .line 71
    const/4 v0, 0x1

    return v0

    .line 68
    :catch_6
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
