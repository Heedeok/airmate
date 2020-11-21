.class public interface abstract Ldiagnostic_msgs/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "string key # what to label this value when viewing\nstring value # a value to track over time\n"

.field public static final _TYPE:Ljava/lang/String; = "diagnostic_msgs/KeyValue"


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setKey(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method
