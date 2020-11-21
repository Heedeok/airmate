.class public interface abstract Lrosgraph_msgs/TopicStatistics;
.super Ljava/lang/Object;
.source "TopicStatistics.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# name of the topic\nstring topic\n\n# node id of the publisher\nstring node_pub\n\n# node id of the subscriber\nstring node_sub\n\n# the statistics apply to this time window\ntime window_start\ntime window_stop\n\n# number of messages delivered during the window\nint32 delivered_msgs\n# numbers of messages dropped during the window\nint32 dropped_msgs\n\n# traffic during the window, in bytes\nint32 traffic\n\n# mean/stddev/max period between two messages\nduration period_mean\nduration period_stddev\nduration period_max\n\n# mean/stddev/max age of the message based on the\n# timestamp in the message header. In case the\n# message does not have a header, it will be 0.\nduration stamp_age_mean\nduration stamp_age_stddev\nduration stamp_age_max\n"

.field public static final _TYPE:Ljava/lang/String; = "rosgraph_msgs/TopicStatistics"


# virtual methods
.method public abstract getDeliveredMsgs()I
.end method

.method public abstract getDroppedMsgs()I
.end method

.method public abstract getNodePub()Ljava/lang/String;
.end method

.method public abstract getNodeSub()Ljava/lang/String;
.end method

.method public abstract getPeriodMax()Lorg/ros/message/Duration;
.end method

.method public abstract getPeriodMean()Lorg/ros/message/Duration;
.end method

.method public abstract getPeriodStddev()Lorg/ros/message/Duration;
.end method

.method public abstract getStampAgeMax()Lorg/ros/message/Duration;
.end method

.method public abstract getStampAgeMean()Lorg/ros/message/Duration;
.end method

.method public abstract getStampAgeStddev()Lorg/ros/message/Duration;
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public abstract getTraffic()I
.end method

.method public abstract getWindowStart()Lorg/ros/message/Time;
.end method

.method public abstract getWindowStop()Lorg/ros/message/Time;
.end method

.method public abstract setDeliveredMsgs(I)V
.end method

.method public abstract setDroppedMsgs(I)V
.end method

.method public abstract setNodePub(Ljava/lang/String;)V
.end method

.method public abstract setNodeSub(Ljava/lang/String;)V
.end method

.method public abstract setPeriodMax(Lorg/ros/message/Duration;)V
.end method

.method public abstract setPeriodMean(Lorg/ros/message/Duration;)V
.end method

.method public abstract setPeriodStddev(Lorg/ros/message/Duration;)V
.end method

.method public abstract setStampAgeMax(Lorg/ros/message/Duration;)V
.end method

.method public abstract setStampAgeMean(Lorg/ros/message/Duration;)V
.end method

.method public abstract setStampAgeStddev(Lorg/ros/message/Duration;)V
.end method

.method public abstract setTopic(Ljava/lang/String;)V
.end method

.method public abstract setTraffic(I)V
.end method

.method public abstract setWindowStart(Lorg/ros/message/Time;)V
.end method

.method public abstract setWindowStop(Lorg/ros/message/Time;)V
.end method
