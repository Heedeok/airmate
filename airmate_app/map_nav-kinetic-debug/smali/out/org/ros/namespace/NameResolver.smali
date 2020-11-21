.class public Lorg/ros/namespace/NameResolver;
.super Ljava/lang/Object;
.source "NameResolver.java"


# instance fields
.field private final namespace:Lorg/ros/namespace/GraphName;

.field private final remappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V
    .registers 4
    .param p1, "namespace"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "remappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/namespace/NameResolver;->remappings:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/ros/namespace/NameResolver;->namespace:Lorg/ros/namespace/GraphName;

    .line 58
    return-void
.end method

.method public static newFromNamespace(Ljava/lang/String;)Lorg/ros/namespace/NameResolver;
    .registers 2
    .param p0, "namespace"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/NameResolver;->newFromNamespace(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    return-object v0
.end method

.method public static newFromNamespace(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;
    .registers 3
    .param p0, "namespace"    # Lorg/ros/namespace/GraphName;

    .line 35
    new-instance v0, Lorg/ros/namespace/NameResolver;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newFromNamespaceAndRemappings(Ljava/lang/String;Ljava/util/Map;)Lorg/ros/namespace/NameResolver;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;)",
            "Lorg/ros/namespace/NameResolver;"
        }
    .end annotation

    .line 52
    .local p1, "remappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;>;"
    new-instance v0, Lorg/ros/namespace/NameResolver;

    invoke-static {p0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    return-object v0
.end method

.method public static newRoot()Lorg/ros/namespace/NameResolver;
    .registers 1

    .line 43
    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-static {v0}, Lorg/ros/namespace/NameResolver;->newFromNamespace(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    return-object v0
.end method

.method public static newRootFromRemappings(Ljava/util/Map;)Lorg/ros/namespace/NameResolver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;)",
            "Lorg/ros/namespace/NameResolver;"
        }
    .end annotation

    .line 47
    .local p0, "remappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;>;"
    new-instance v0, Lorg/ros/namespace/NameResolver;

    invoke-static {}, Lorg/ros/namespace/GraphName;->root()Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getNamespace()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 61
    iget-object v0, p0, Lorg/ros/namespace/NameResolver;->namespace:Lorg/ros/namespace/GraphName;

    return-object v0
.end method

.method public getRemappings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/ros/namespace/GraphName;",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/ros/namespace/NameResolver;->remappings:Ljava/util/Map;

    return-object v0
.end method

.method protected lookUpRemapping(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 161
    move-object v0, p1

    .line 162
    .local v0, "remappedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/namespace/NameResolver;->remappings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 163
    iget-object v1, p0, Lorg/ros/namespace/NameResolver;->remappings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/ros/namespace/GraphName;

    .line 165
    :cond_12
    return-object v0
.end method

.method public newChild(Ljava/lang/String;)Lorg/ros/namespace/NameResolver;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;

    .line 157
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/namespace/NameResolver;->newChild(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;

    move-result-object v0

    return-object v0
.end method

.method public newChild(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/NameResolver;
    .registers 5
    .param p1, "namespace"    # Lorg/ros/namespace/GraphName;

    .line 150
    new-instance v0, Lorg/ros/namespace/NameResolver;

    invoke-virtual {p0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    iget-object v2, p0, Lorg/ros/namespace/NameResolver;->remappings:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Lorg/ros/namespace/GraphName;

    .line 112
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 121
    iget-object v0, p0, Lorg/ros/namespace/NameResolver;->namespace:Lorg/ros/namespace/GraphName;

    invoke-virtual {p0, v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 4
    .param p1, "namespace"    # Lorg/ros/namespace/GraphName;
    .param p2, "name"    # Ljava/lang/String;

    .line 105
    invoke-static {p2}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 8
    .param p1, "namespace"    # Lorg/ros/namespace/GraphName;
    .param p2, "name"    # Lorg/ros/namespace/GraphName;

    .line 76
    invoke-virtual {p0, p1}, Lorg/ros/namespace/NameResolver;->lookUpRemapping(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 77
    .local v0, "remappedNamespace":Lorg/ros/namespace/GraphName;
    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 81
    invoke-virtual {p0, p2}, Lorg/ros/namespace/NameResolver;->lookUpRemapping(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    .line 82
    .local v1, "remappedName":Lorg/ros/namespace/GraphName;
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->isGlobal()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 83
    return-object v1

    .line 85
    :cond_15
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 86
    invoke-virtual {v0, v1}, Lorg/ros/namespace/GraphName;->join(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v2

    return-object v2

    .line 88
    :cond_20
    invoke-virtual {v1}, Lorg/ros/namespace/GraphName;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 89
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    const-string v3, "Cannot resolve ~private names in arbitrary namespaces."

    invoke-direct {v2, v3}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_2e
    new-instance v2, Lorg/ros/exception/RosRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve graph name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v1    # "remappedName":Lorg/ros/namespace/GraphName;
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "Namespace %s (remapped from %s) must be global."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
