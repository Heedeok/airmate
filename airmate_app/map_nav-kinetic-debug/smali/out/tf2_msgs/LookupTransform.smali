.class public interface abstract Ltf2_msgs/LookupTransform;
.super Ljava/lang/Object;
.source "LookupTransform.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "#Simple API\nstring target_frame\nstring source_frame\ntime source_time\nduration timeout\n\n#Advanced API\ntime target_time\nstring fixed_frame\n\n#Whether or not to use the advanced API\nbool advanced\n\n---\ngeometry_msgs/TransformStamped transform\ntf2_msgs/TF2Error error\n---\n"

.field public static final _TYPE:Ljava/lang/String; = "tf2_msgs/LookupTransform"
