.class public interface abstract Lrocon_interaction_msgs/RequestInteractionResponse;
.super Ljava/lang/Object;
.source "RequestInteractionResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "\nbool result\n\n# classifying start success/failure, see ErrorCodes.msg\nint8 error_code\n\n# human friendly string for debugging (usually upon error)\nstring message"

.field public static final _TYPE:Ljava/lang/String; = "rocon_interaction_msgs/RequestInteractionResponse"


# virtual methods
.method public abstract getErrorCode()B
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getResult()Z
.end method

.method public abstract setErrorCode(B)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setResult(Z)V
.end method
