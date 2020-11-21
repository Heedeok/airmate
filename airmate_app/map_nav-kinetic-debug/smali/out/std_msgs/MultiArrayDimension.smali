.class public interface abstract Lstd_msgs/MultiArrayDimension;
.super Ljava/lang/Object;
.source "MultiArrayDimension.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string label   # label of given dimension\nuint32 size    # size of given dimension (in type units)\nuint32 stride  # stride of given dimension"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/MultiArrayDimension"


# virtual methods
.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getSize()I
.end method

.method public abstract getStride()I
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setSize(I)V
.end method

.method public abstract setStride(I)V
.end method
