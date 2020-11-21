.class public interface abstract Lworld_canvas_msgs/SaveAnnotationsDataRequest;
.super Ljava/lang/Object;
.source "SaveAnnotationsDataRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Utility service kept to make debug and testing easier:\n#   saves together annotations and its data assuming a 1-1 relationship.\n\nAnnotation[] annotations\nAnnotationData[] data \n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/SaveAnnotationsDataRequest"


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

.method public abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/AnnotationData;",
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

.method public abstract setData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lworld_canvas_msgs/AnnotationData;",
            ">;)V"
        }
    .end annotation
.end method
