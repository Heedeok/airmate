.class public interface abstract Lactionlib_msgs/GoalID;
.super Ljava/lang/Object;
.source "GoalID.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# The stamp should store the time at which this goal was requested.\n# It is used by an action server when it tries to preempt all\n# goals that were requested before a certain time\ntime stamp\n\n# The id provides a way to associate feedback and\n# result message with specific goal requests. The id\n# specified must be unique.\nstring id\n\n"

.field public static final _TYPE:Ljava/lang/String; = "actionlib_msgs/GoalID"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getStamp()Lorg/ros/message/Time;
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setStamp(Lorg/ros/message/Time;)V
.end method
