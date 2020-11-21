.class public interface abstract Lrocon_app_manager_msgs/StopRapp;
.super Ljava/lang/Object;
.source "StopRapp.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "---\n# true if app stopped, false otherwise\nbool stopped\n# classifying start success/failure, see ErrorCodes.msg\nint32 error_code\n# human friendly string for debugging (usually upon error)\nstring message\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/StopRapp"
