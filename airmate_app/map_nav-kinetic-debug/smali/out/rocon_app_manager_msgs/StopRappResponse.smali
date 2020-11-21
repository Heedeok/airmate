.class public interface abstract Lrocon_app_manager_msgs/StopRappResponse;
.super Ljava/lang/Object;
.source "StopRappResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# true if app stopped, false otherwise\nbool stopped\n# classifying start success/failure, see ErrorCodes.msg\nint32 error_code\n# human friendly string for debugging (usually upon error)\nstring message"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/StopRappResponse"


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getStopped()Z
.end method

.method public abstract setErrorCode(I)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setStopped(Z)V
.end method
