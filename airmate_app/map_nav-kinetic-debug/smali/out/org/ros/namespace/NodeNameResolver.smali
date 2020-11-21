.class public Lorg/ros/namespace/NodeNameResolver;
.super Lorg/ros/namespace/NameResolver;
.source "NodeNameResolver.java"


# instance fields
.field private final privateNamespace:Lorg/ros/namespace/GraphName;


# direct methods
.method public constructor <init>(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/NameResolver;)V
    .registers 5
    .param p1, "nodeName"    # Lorg/ros/namespace/GraphName;
    .param p2, "defaultResolver"    # Lorg/ros/namespace/NameResolver;

    .line 40
    invoke-virtual {p2}, Lorg/ros/namespace/NameResolver;->getNamespace()Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ros/namespace/NameResolver;->getRemappings()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/ros/namespace/NameResolver;-><init>(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V

    .line 41
    iput-object p1, p0, Lorg/ros/namespace/NodeNameResolver;->privateNamespace:Lorg/ros/namespace/GraphName;

    .line 42
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/namespace/NodeNameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
    .registers 5
    .param p1, "name"    # Lorg/ros/namespace/GraphName;

    .line 51
    invoke-virtual {p0, p1}, Lorg/ros/namespace/NodeNameResolver;->lookUpRemapping(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    .line 52
    .local v0, "graphName":Lorg/ros/namespace/GraphName;
    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 53
    iget-object v1, p0, Lorg/ros/namespace/NodeNameResolver;->privateNamespace:Lorg/ros/namespace/GraphName;

    invoke-virtual {v0}, Lorg/ros/namespace/GraphName;->toRelative()Lorg/ros/namespace/GraphName;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/ros/namespace/NodeNameResolver;->resolve(Lorg/ros/namespace/GraphName;Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    return-object v1

    .line 55
    :cond_15
    invoke-super {p0, p1}, Lorg/ros/namespace/NameResolver;->resolve(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;

    move-result-object v1

    return-object v1
.end method
