.class public interface abstract Lstd_msgs/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Standard metadata for higher-level stamped data types.\n# This is generally used to communicate timestamped data \n# in a particular coordinate frame.\n# \n# sequence ID: consecutively increasing ID \nuint32 seq\n#Two-integer timestamp that is expressed as:\n# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called \'secs\')\n# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called \'nsecs\')\n# time-handling sugar is provided by the client library\ntime stamp\n#Frame this data is associated with\n# 0: no frame\n# 1: global frame\nstring frame_id\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/Header"


# virtual methods
.method public abstract getFrameId()Ljava/lang/String;
.end method

.method public abstract getSeq()I
.end method

.method public abstract getStamp()Lorg/ros/message/Time;
.end method

.method public abstract setFrameId(Ljava/lang/String;)V
.end method

.method public abstract setSeq(I)V
.end method

.method public abstract setStamp(Lorg/ros/message/Time;)V
.end method
