.class public interface abstract Lactionlib_msgs/GoalStatus;
.super Ljava/lang/Object;
.source "GoalStatus.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final ABORTED:B = 0x4t

.field public static final ACTIVE:B = 0x1t

.field public static final LOST:B = 0x9t

.field public static final PENDING:B = 0x0t

.field public static final PREEMPTED:B = 0x2t

.field public static final PREEMPTING:B = 0x6t

.field public static final RECALLED:B = 0x8t

.field public static final RECALLING:B = 0x7t

.field public static final REJECTED:B = 0x5t

.field public static final SUCCEEDED:B = 0x3t

.field public static final _DEFINITION:Ljava/lang/String; = "GoalID goal_id\nuint8 status\nuint8 PENDING         = 0   # The goal has yet to be processed by the action server\nuint8 ACTIVE          = 1   # The goal is currently being processed by the action server\nuint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n                            #   and has since completed its execution (Terminal State)\nuint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\nuint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n                            #    to some failure (Terminal State)\nuint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n                            #    because the goal was unattainable or invalid (Terminal State)\nuint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n                            #    and has not yet completed execution\nuint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n                            #    but the action server has not yet confirmed that the goal is canceled\nuint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n                            #    and was successfully cancelled (Terminal State)\nuint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n                            #    sent over the wire by an action server\n\n#Allow for the user to associate a string with GoalStatus for debugging\nstring text\n\n"

.field public static final _TYPE:Ljava/lang/String; = "actionlib_msgs/GoalStatus"


# virtual methods
.method public abstract getGoalId()Lactionlib_msgs/GoalID;
.end method

.method public abstract getStatus()B
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setGoalId(Lactionlib_msgs/GoalID;)V
.end method

.method public abstract setStatus(B)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method
