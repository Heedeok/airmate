.class public interface abstract Ltf2_msgs/TFMessage;
.super Ljava/lang/Object;
.source "TFMessage.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "geometry_msgs/TransformStamped[] transforms\n"

.field public static final _TYPE:Ljava/lang/String; = "tf2_msgs/TFMessage"


# virtual methods
.method public abstract getTransforms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgeometry_msgs/TransformStamped;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTransforms(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgeometry_msgs/TransformStamped;",
            ">;)V"
        }
    .end annotation
.end method
