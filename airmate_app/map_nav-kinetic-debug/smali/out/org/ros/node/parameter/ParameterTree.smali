.class public interface abstract Lorg/ros/node/parameter/ParameterTree;
.super Ljava/lang/Object;
.source "ParameterTree.java"


# virtual methods
.method public abstract addParameterListener(Ljava/lang/String;Lorg/ros/node/parameter/ParameterListener;)V
.end method

.method public abstract addParameterListener(Lorg/ros/namespace/GraphName;Lorg/ros/node/parameter/ParameterListener;)V
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract delete(Lorg/ros/namespace/GraphName;)V
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getBoolean(Lorg/ros/namespace/GraphName;)Z
.end method

.method public abstract getBoolean(Lorg/ros/namespace/GraphName;Z)Z
.end method

.method public abstract getDouble(Ljava/lang/String;)D
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getDouble(Lorg/ros/namespace/GraphName;)D
.end method

.method public abstract getDouble(Lorg/ros/namespace/GraphName;D)D
.end method

.method public abstract getInteger(Ljava/lang/String;)I
.end method

.method public abstract getInteger(Ljava/lang/String;I)I
.end method

.method public abstract getInteger(Lorg/ros/namespace/GraphName;)I
.end method

.method public abstract getInteger(Lorg/ros/namespace/GraphName;I)I
.end method

.method public abstract getList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getList(Lorg/ros/namespace/GraphName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getList(Lorg/ros/namespace/GraphName;Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getMap(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
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
.end method

.method public abstract getMap(Lorg/ros/namespace/GraphName;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract getMap(Lorg/ros/namespace/GraphName;Ljava/util/Map;)Ljava/util/Map;
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
.end method

.method public abstract getNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ros/namespace/GraphName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Lorg/ros/namespace/GraphName;)Ljava/lang/String;
.end method

.method public abstract getString(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract has(Ljava/lang/String;)Z
.end method

.method public abstract has(Lorg/ros/namespace/GraphName;)Z
.end method

.method public abstract search(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
.end method

.method public abstract search(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
.end method

.method public abstract set(Ljava/lang/String;D)V
.end method

.method public abstract set(Ljava/lang/String;I)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Z)V
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;D)V
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;I)V
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;Ljava/lang/String;)V
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract set(Lorg/ros/namespace/GraphName;Z)V
.end method
