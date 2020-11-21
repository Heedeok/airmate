.class public interface abstract Lworld_canvas_msgs/GetAnnotationsDataResponse;
.super Ljava/lang/Object;
.source "GetAnnotationsDataResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# What went wrong, if anything\nbool result\nstring message\n\nAnnotationData[] data "

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/GetAnnotationsDataResponse"


# virtual methods
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

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getResult()Z
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

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setResult(Z)V
.end method
