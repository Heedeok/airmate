.class public interface abstract Lworld_canvas_msgs/PubAnnotationsDataRequest;
.super Ljava/lang/Object;
.source "PubAnnotationsDataRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Request server to publish annotations\' data for a list of annotation identifiers\n# If pub_as_list is true, annotations will be packed in a list before publishing,\n# so topic_type must be an array of the requested annotations. However, if is false,\n# topic_type is just ignored and the published topic type is obtained from one of\n# the annotations in the list\n# NOTE: in both cases, all annotations must be of the same type\n\nuuid_msgs/UniqueID[] annotation_ids\nstring topic_name\nstring topic_type\nbool pub_as_list\n\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/PubAnnotationsDataRequest"


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

.method public abstract getPubAsList()Z
.end method

.method public abstract getTopicName()Ljava/lang/String;
.end method

.method public abstract getTopicType()Ljava/lang/String;
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

.method public abstract setPubAsList(Z)V
.end method

.method public abstract setTopicName(Ljava/lang/String;)V
.end method

.method public abstract setTopicType(Ljava/lang/String;)V
.end method
