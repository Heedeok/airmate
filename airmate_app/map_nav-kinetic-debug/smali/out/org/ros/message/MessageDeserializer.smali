.class public interface abstract Lorg/ros/message/MessageDeserializer;
.super Ljava/lang/Object;
.source "MessageDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")TT;"
        }
    .end annotation
.end method
