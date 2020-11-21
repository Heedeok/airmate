.class public interface abstract Lworld_canvas_msgs/PubAnnotationsData;
.super Ljava/lang/Object;
.source "PubAnnotationsData.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Request server to publish annotations\' data for a list of annotation identifiers\n# If pub_as_list is true, annotations will be packed in a list before publishing,\n# so topic_type must be an array of the requested annotations. However, if is false,\n# topic_type is just ignored and the published topic type is obtained from one of\n# the annotations in the list\n# NOTE: in both cases, all annotations must be of the same type\n\nuuid_msgs/UniqueID[] annotation_ids\nstring topic_name\nstring topic_type\nbool pub_as_list\n\n---\n# What went wrong, if anything\nbool result\nstring message\n"

.field public static final _TYPE:Ljava/lang/String; = "world_canvas_msgs/PubAnnotationsData"
