.class public interface abstract Lrocon_app_manager_msgs/InviteResponse;
.super Ljava/lang/Object;
.source "InviteResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "bool result\n# classifying start success/failure, see ErrorCodes.msg (to be implemented)\nint32 error_code\n# human friendly string for debugging (usually upon error)\nstring message"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/InviteResponse"


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getResult()Z
.end method

.method public abstract setErrorCode(I)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setResult(Z)V
.end method
