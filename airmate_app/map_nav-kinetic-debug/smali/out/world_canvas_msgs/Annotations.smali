.class public interface abstract Lworld_canvas_msgs/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Semantic map:\n#  - geometric map id\n#  - a list of annotations\n\nstring map_id\nAnnotation[] annotations\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/Annotations"


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

.method public abstract getMapId()Ljava/lang/String;
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

.method public abstract setMapId(Ljava/lang/String;)V
.end method
