.class public interface abstract Lorg/ros/message/MessageSerializationFactory;
.super Ljava/lang/Object;
.source "MessageSerializationFactory.java"


# virtual methods
.method public abstract newMessageDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newMessageSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newServiceRequestDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newServiceRequestSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newServiceResponseDeserializer(Ljava/lang/String;)Lorg/ros/message/MessageDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageDeserializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newServiceResponseSerializer(Ljava/lang/String;)Lorg/ros/message/MessageSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/ros/message/MessageSerializer<",
            "TT;>;"
        }
    .end annotation
.end method
