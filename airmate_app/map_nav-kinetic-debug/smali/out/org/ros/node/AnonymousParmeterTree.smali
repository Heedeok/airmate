.class public Lorg/ros/node/AnonymousParmeterTree;
.super Ljava/lang/Object;
.source "AnonymousParmeterTree.java"

# interfaces
.implements Lorg/ros/node/parameter/ParameterTree;


# instance fields
.field private parameterTree:Lorg/ros/node/parameter/ParameterTree;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 5
    .param p1, "masterUri"    # Ljava/net/URI;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/ros/internal/node/server/NodeIdentifier;

    const-string v1, "invalid"

    invoke-static {v1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/node/server/NodeIdentifier;-><init>(Lorg/ros/namespace/GraphName;Ljava/net/URI;)V

    .line 40
    .local v0, "nodeIdentifier":Lorg/ros/internal/node/server/NodeIdentifier;
    nop

    .line 41
    invoke-static {}, Lorg/ros/namespace/NameResolver;->newRoot()Lorg/ros/namespace/NameResolver;

    move-result-object v1

    invoke-static {v0, p1, v1, v2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->newFromNodeIdentifier(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;Lorg/ros/namespace/NameResolver;Lorg/ros/internal/node/parameter/ParameterManager;)Lorg/ros/internal/node/parameter/DefaultParameterTree;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    .line 42
    return-void
.end method


# virtual methods
.method public addParameterListener(Ljava/lang/String;Lorg/ros/node/parameter/ParameterListener;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addParameterListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->delete(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public delete(Lorg/ros/namespace/GraphName;)V
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 236
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->delete(Lorg/ros/namespace/GraphName;)V

    .line 237
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 61
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 46
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getBoolean(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Lorg/ros/namespace/GraphName;Z)Z
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # Z

    .line 56
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getBoolean(Lorg/ros/namespace/GraphName;Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 101
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/node/parameter/ParameterTree;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Lorg/ros/namespace/GraphName;)D
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 86
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getDouble(Lorg/ros/namespace/GraphName;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Lorg/ros/namespace/GraphName;D)D
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # D

    .line 96
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/node/parameter/ParameterTree;->getDouble(Lorg/ros/namespace/GraphName;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 81
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Lorg/ros/namespace/GraphName;)I
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 66
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getInteger(Lorg/ros/namespace/GraphName;)I

    move-result v0

    return v0
.end method

.method public getInteger(Lorg/ros/namespace/GraphName;I)I
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # I

    .line 76
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getInteger(Lorg/ros/namespace/GraphName;I)I

    move-result v0

    return v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 141
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Lorg/ros/namespace/GraphName;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getList(Lorg/ros/namespace/GraphName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Lorg/ros/namespace/GraphName;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 136
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getList(Lorg/ros/namespace/GraphName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 161
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Lorg/ros/namespace/GraphName;)Ljava/util/Map;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getMap(Lorg/ros/namespace/GraphName;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 156
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getMap(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0}, Lorg/ros/node/parameter/ParameterTree;->getNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lorg/ros/namespace/GraphName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 106
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->getString(Lorg/ros/namespace/GraphName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->getString(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public has(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 226
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->search(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 246
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1}, Lorg/ros/node/parameter/ParameterTree;->search(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;D)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 191
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;D)V

    .line 192
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 181
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 211
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 221
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 171
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;D)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # D

    .line 186
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2, p3}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;D)V

    .line 187
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;I)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # I

    .line 176
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;I)V

    .line 177
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 206
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V

    .line 207
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 216
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    .line 217
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Z)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Z

    .line 166
    iget-object v0, p0, Lorg/ros/node/AnonymousParmeterTree;->parameterTree:Lorg/ros/node/parameter/ParameterTree;

    invoke-interface {v0, p1, p2}, Lorg/ros/node/parameter/ParameterTree;->set(Lorg/ros/namespace/GraphName;Z)V

    .line 167
    return-void
.end method
