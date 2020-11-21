.class public interface abstract Lworld_canvas_msgs/GetAnnotationsResponse;
.super Ljava/lang/Object;
.source "GetAnnotationsResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "\n# What went wrong, if anything\nbool result\nstring message\n\nAnnotation[] annotations"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/GetAnnotationsResponse"


# virtual methods
.method public abstract getAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getResult()Z
.end method

.method public abstract setAnnotations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/Annotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setResult(Z)V
.end method
