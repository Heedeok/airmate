.class public interface abstract Lstd_srvs/SetBoolResponse;
.super Ljava/lang/Object;
.source "SetBoolResponse.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "bool success   # indicate successful run of triggered service\nstring message # informational, e.g. for error messages"

.field public static final _TYPE:Ljava/lang/String; = "std_srvs/SetBoolResponse"


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSuccess()Z
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setSuccess(Z)V
.end method
