.class public interface abstract Lorg/ros/node/NodeFactory;
.super Ljava/lang/Object;
.source "NodeFactory.java"


# virtual methods
.method public abstract newNode(Lorg/ros/node/NodeConfiguration;)Lorg/ros/node/Node;
.end method

.method public abstract newNode(Lorg/ros/node/NodeConfiguration;Ljava/util/Collection;)Lorg/ros/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/node/NodeConfiguration;",
            "Ljava/util/Collection<",
            "Lorg/ros/node/NodeListener;",
            ">;)",
            "Lorg/ros/node/Node;"
        }
    .end annotation
.end method
