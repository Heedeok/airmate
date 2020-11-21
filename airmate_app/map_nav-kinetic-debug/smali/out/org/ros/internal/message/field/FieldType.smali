.class public interface abstract Lorg/ros/internal/message/field/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# virtual methods
.method public abstract deserialize(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getJavaTypeName()Ljava/lang/String;
.end method

.method public abstract getMd5String()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newConstantValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/message/field/Field;"
        }
    .end annotation
.end method

.method public abstract newVariableList(Ljava/lang/String;I)Lorg/ros/internal/message/field/Field;
.end method

.method public abstract newVariableValue(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
.end method

.method public abstract parseFromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ")V"
        }
    .end annotation
.end method
