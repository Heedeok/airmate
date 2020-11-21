.class public interface abstract Lrocon_app_manager_msgs/StartRappResponse;
.super Ljava/lang/Object;
.source "StartRappResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "bool started\n\n# classifying start success/failure, see ErrorCodes.msg\nint32 error_code\n\n# human friendly string for debugging (usually upon error)\nstring message\n\n# Namespace where the rapp interface can be found\nstring application_namespace"

.field public static final _TYPE:Ljava/lang/String; = "rocon_app_manager_msgs/StartRappResponse"


# virtual methods
.method public abstract getApplicationNamespace()Ljava/lang/String;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getStarted()Z
.end method

.method public abstract setApplicationNamespace(Ljava/lang/String;)V
.end method

.method public abstract setErrorCode(I)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setStarted(Z)V
.end method
