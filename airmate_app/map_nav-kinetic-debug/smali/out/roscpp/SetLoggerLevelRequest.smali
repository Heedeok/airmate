.class public interface abstract Lroscpp/SetLoggerLevelRequest;
.super Ljava/lang/Object;
.source "SetLoggerLevelRequest.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string logger\nstring level\n"

.field public static final _TYPE:Ljava/lang/String; = "roscpp/SetLoggerLevelRequest"


# virtual methods
.method public abstract getLevel()Ljava/lang/String;
.end method

.method public abstract getLogger()Ljava/lang/String;
.end method

.method public abstract setLevel(Ljava/lang/String;)V
.end method

.method public abstract setLogger(Ljava/lang/String;)V
.end method
