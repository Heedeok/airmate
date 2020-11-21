.class public interface abstract Lworld_canvas_msgs/DeleteAnnotationsRequest;
.super Ljava/lang/Object;
.source "DeleteAnnotationsRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Request server to delete the given annotations\n\nAnnotation[] annotations\n\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/DeleteAnnotationsRequest"


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
