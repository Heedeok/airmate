.class public interface abstract Lworld_canvas_msgs/GetAnnotationsDataRequest;
.super Ljava/lang/Object;
.source "GetAnnotationsDataRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Request annotations\' data for a list of annotation identifiers\n\nuuid_msgs/UniqueID[] annotation_ids\n\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/GetAnnotationsDataRequest"


# virtual methods
.method public abstract getAnnotationIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAnnotationIds(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luuid_msgs/UniqueID;",
            ">;)V"
        }
    .end annotation
.end method
