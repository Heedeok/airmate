.class public interface abstract Lorg/ros/node/ConnectedNode;
.super Ljava/lang/Object;
.source "ConnectedNode.java"

# interfaces
.implements Lorg/ros/node/Node;


# virtual methods
.method public abstract getCurrentTime()Lorg/ros/message/Time;
.end method

.method public abstract getParameterTree()Lorg/ros/node/parameter/ParameterTree;
.end method

.method public abstract getServiceServer(Ljava/lang/String;)Lorg/ros/node/service/ServiceServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract getServiceServer(Lorg/ros/namespace/GraphName;)Lorg/ros/node/service/ServiceServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            ")",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract lookupServiceUri(Ljava/lang/String;)Ljava/net/URI;
.end method

.method public abstract lookupServiceUri(Lorg/ros/namespace/GraphName;)Ljava/net/URI;
.end method

.method public abstract newPublisher(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newPublisher(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Publisher<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newServiceClient(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceClient<",
            "TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceNotFoundException;
        }
    .end annotation
.end method

.method public abstract newServiceClient(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/service/ServiceClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/service/ServiceClient<",
            "TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ros/exception/ServiceNotFoundException;
        }
    .end annotation
.end method

.method public abstract newServiceServer(Ljava/lang/String;Ljava/lang/String;Lorg/ros/node/service/ServiceResponseBuilder;)Lorg/ros/node/service/ServiceServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;)",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract newServiceServer(Lorg/ros/namespace/GraphName;Ljava/lang/String;Lorg/ros/node/service/ServiceResponseBuilder;)Lorg/ros/node/service/ServiceServer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            "Lorg/ros/node/service/ServiceResponseBuilder<",
            "TT;TS;>;)",
            "Lorg/ros/node/service/ServiceServer<",
            "TT;TS;>;"
        }
    .end annotation
.end method

.method public abstract newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newSubscriber(Lorg/ros/namespace/GraphName;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ros/namespace/GraphName;",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/node/topic/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end method
