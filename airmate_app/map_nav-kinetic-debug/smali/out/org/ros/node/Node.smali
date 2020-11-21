.class public interface abstract Lorg/ros/node/Node;
.super Ljava/lang/Object;
.source "Node.java"


# virtual methods
.method public abstract addListener(Lorg/ros/node/NodeListener;)V
.end method

.method public abstract executeCancellableLoop(Lorg/ros/concurrent/CancellableLoop;)V
.end method

.method public abstract getLog()Lorg/apache/commons/logging/Log;
.end method

.method public abstract getMasterUri()Ljava/net/URI;
.end method

.method public abstract getMessageSerializationFactory()Lorg/ros/message/MessageSerializationFactory;
.end method

.method public abstract getName()Lorg/ros/namespace/GraphName;
.end method

.method public abstract getResolver()Lorg/ros/namespace/NodeNameResolver;
.end method

.method public abstract getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract getServiceRequestMessageFactory()Lorg/ros/message/MessageFactory;
.end method

.method public abstract getServiceResponseMessageFactory()Lorg/ros/message/MessageFactory;
.end method

.method public abstract getTopicMessageFactory()Lorg/ros/message/MessageFactory;
.end method

.method public abstract getUri()Ljava/net/URI;
.end method

.method public abstract removeListeners()V
.end method

.method public abstract resolveName(Ljava/lang/String;)Lorg/ros/namespace/GraphName;
.end method

.method public abstract resolveName(Lorg/ros/namespace/GraphName;)Lorg/ros/namespace/GraphName;
.end method

.method public abstract shutdown()V
.end method
