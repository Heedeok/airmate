.class public Lorg/ros/internal/node/parameter/DefaultParameterTree;
.super Ljava/lang/Object;
.source "DefaultParameterTree.java"

# interfaces
.implements Lorg/ros/node/parameter/ParameterTree;


# instance fields
.field private final parameterClient:Lorg/ros/internal/node/client/ParameterClient;

.field private final parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

.field private final resolver:Lorg/ros/namespace/NameResolver;


# direct methods
.method private constructor <init>(Lorg/ros/internal/node/client/ParameterClient;Lorg/ros/internal/node/parameter/ParameterManager;Lorg/ros/namespace/NameResolver;)V
    .registers 4
    .param p1, "parameterClient"    # Lorg/ros/internal/node/client/ParameterClient;
    .param p2, "parameterManager"    # Lorg/ros/internal/node/parameter/ParameterManager;
    .param p3, "resolver"    # Lorg/ros/namespace/NameResolver;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    .line 59
    iput-object p2, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    .line 60
    iput-object p3, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    .line 61
    return-void
.end method

.method private get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 184
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 185
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/client/ParameterClient;->getParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    .line 187
    .local v1, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/lang/Object;>;"
    :try_start_c
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v2

    sget-object v3, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    if-ne v2, v3, :cond_1d

    .line 188
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_1c} :catch_35

    return-object v2

    .line 192
    :cond_1d
    nop

    .line 193
    new-instance v2, Lorg/ros/exception/ParameterNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ros/exception/ParameterNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :catch_35
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/ros/exception/ParameterClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast parameter to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/ros/exception/ParameterClassCastException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "TT;)TT;"
        }
    .end annotation

    .line 198
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 200
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/client/ParameterClient;->getParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    .line 201
    .local v1, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v2

    sget-object v3, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    if-ne v2, v3, :cond_44

    .line 203
    :try_start_17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_24

    return-object v2

    .line 204
    :catch_24
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/ros/exception/ParameterClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast parameter to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/ros/exception/ParameterClassCastException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 209
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_44
    return-object p2
.end method

.method public static newFromNodeIdentifier(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;Lorg/ros/namespace/NameResolver;Lorg/ros/internal/node/parameter/ParameterManager;)Lorg/ros/internal/node/parameter/DefaultParameterTree;
    .registers 6
    .param p0, "nodeIdentifier"    # Lorg/ros/internal/node/server/NodeIdentifier;
    .param p1, "masterUri"    # Ljava/net/URI;
    .param p2, "resolver"    # Lorg/ros/namespace/NameResolver;
    .param p3, "parameterManager"    # Lorg/ros/internal/node/parameter/ParameterManager;

    .line 52
    new-instance v0, Lorg/ros/internal/node/client/ParameterClient;

    invoke-direct {v0, p0, p1}, Lorg/ros/internal/node/client/ParameterClient;-><init>(Lorg/ros/internal/node/server/NodeIdentifier;Ljava/net/URI;)V

    .line 53
    .local v0, "client":Lorg/ros/internal/node/client/ParameterClient;
    new-instance v1, Lorg/ros/internal/node/parameter/DefaultParameterTree;

    invoke-direct {v1, v0, p3, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;-><init>(Lorg/ros/internal/node/client/ParameterClient;Lorg/ros/internal/node/parameter/ParameterManager;Lorg/ros/namespace/NameResolver;)V

    return-object v1
.end method


# virtual methods
.method public addParameterListener(Ljava/lang/String;Lorg/ros/node/parameter/ParameterListener;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 114
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->addParameterListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V

    .line 115
    return-void
.end method

.method public addParameterListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "listener"    # Lorg/ros/node/parameter/ParameterListener;

    .line 108
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterManager:Lorg/ros/internal/node/parameter/ParameterManager;

    invoke-virtual {v0, p1, p2}, Lorg/ros/internal/node/parameter/ParameterManager;->addListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V

    .line 109
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v0, p1}, Lorg/ros/internal/node/client/ParameterClient;->subscribeParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    .line 110
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->delete(Lorg/ros/namespace/GraphName;)V

    .line 83
    return-void
.end method

.method public delete(Lorg/ros/namespace/GraphName;)V
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 76
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 77
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/client/ParameterClient;->deleteParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    .line 78
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getBoolean(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 230
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getBoolean(Lorg/ros/namespace/GraphName;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Lorg/ros/namespace/GraphName;)Z
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 215
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBoolean(Lorg/ros/namespace/GraphName;Z)Z
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # Z

    .line 225
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getDouble(Lorg/ros/namespace/GraphName;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 270
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getDouble(Lorg/ros/namespace/GraphName;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Lorg/ros/namespace/GraphName;)D
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 255
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Lorg/ros/namespace/GraphName;D)D
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # D

    .line 265
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 240
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getInteger(Lorg/ros/namespace/GraphName;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 250
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getInteger(Lorg/ros/namespace/GraphName;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Lorg/ros/namespace/GraphName;)I
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 235
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInteger(Lorg/ros/namespace/GraphName;I)I
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # I

    .line 245
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

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

    .line 300
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getList(Lorg/ros/namespace/GraphName;)Ljava/util/List;

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

    .line 310
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getList(Lorg/ros/namespace/GraphName;Ljava/util/List;)Ljava/util/List;

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

    .line 295
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    .line 305
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

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

    .line 320
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getMap(Lorg/ros/namespace/GraphName;)Ljava/util/Map;

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

    .line 330
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getMap(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Ljava/util/Map;

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

    .line 315
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

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

    .line 325
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getNames()Ljava/util/Collection;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v0}, Lorg/ros/internal/node/client/ParameterClient;->getParamNames()Lorg/ros/internal/node/response/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 290
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->getString(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Lorg/ros/namespace/GraphName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 275
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 285
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->get(Lorg/ros/namespace/GraphName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->has(Lorg/ros/namespace/GraphName;)Z

    move-result v0

    return v0
.end method

.method public has(Lorg/ros/namespace/GraphName;)Z
    .registers 4
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 65
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 66
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/client/ParameterClient;->hasParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public search(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->search(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public search(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 87
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 88
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0}, Lorg/ros/internal/node/client/ParameterClient;->searchParam(Lorg/ros/namespace/GraphName;)Lorg/ros/internal/node/response/Response;

    move-result-object v1

    .line 89
    .local v1, "response":Lorg/ros/internal/node/response/Response;, "Lorg/ros/internal/node/response/Response<Lorg/ros/namespace/GraphName;>;"
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getStatusCode()Lorg/ros/internal/node/response/StatusCode;

    move-result-object v2

    sget-object v3, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    if-ne v2, v3, :cond_1b

    .line 90
    invoke-virtual {v1}, Lorg/ros/internal/node/response/Response;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ros/namespace/GraphName;

    return-object v2

    .line 92
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public set(Ljava/lang/String;D)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 147
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;D)V

    .line 148
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 136
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;I)V

    .line 137
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V

    .line 159
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

    .line 169
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V

    .line 170
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

    .line 180
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 125
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ros/internal/node/parameter/DefaultParameterTree;->set(Lorg/ros/namespace/GraphName;Z)V

    .line 126
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;D)V
    .registers 7
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # D

    .line 141
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 142
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Double;)Lorg/ros/internal/node/response/Response;

    .line 143
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;I)V
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # I

    .line 130
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 131
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Integer;)Lorg/ros/internal/node/response/Response;

    .line 132
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 153
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0, p2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/internal/node/response/Response;

    .line 154
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 163
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 164
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0, p2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/util/List;)Lorg/ros/internal/node/response/Response;

    .line 165
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 174
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 175
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-virtual {v1, v0, p2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Lorg/ros/internal/node/response/Response;

    .line 176
    return-void
.end method

.method public set(Lorg/ros/namespace/GraphName;Z)V
    .registers 6
    .param p1, "name"    # Lorg/ros/namespace/GraphName;
    .param p2, "value"    # Z

    .line 119
    iget-object v0, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->resolver:Lorg/ros/namespace/NameResolver;

    invoke-virtual {v0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 120
    .local v0, "resolvedName":Lorg/ros/namespace/GraphName;
    iget-object v1, p0, Lorg/ros/internal/node/parameter/DefaultParameterTree;->parameterClient:Lorg/ros/internal/node/client/ParameterClient;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/ros/internal/node/client/ParameterClient;->setParam(Lorg/ros/namespace/GraphName;Ljava/lang/Boolean;)Lorg/ros/internal/node/response/Response;

    .line 121
    return-void
.end method
