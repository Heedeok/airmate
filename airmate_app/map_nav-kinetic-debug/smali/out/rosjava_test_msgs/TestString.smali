.class public interface abstract Lrosjava_test_msgs/TestString;
.super Ljava/lang/Object;
.source "TestString.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Integration test message\n# caller_id of most recent node to send this message\nstring caller_id\n# caller_id of the original node to send this message\nstring orig_caller_id\nstring data\n"

.field public static final _TYPE:Ljava/lang/String; = "rosjava_test_msgs/TestString"


# virtual methods
.method public abstract getCallerId()Ljava/lang/String;
.end method

.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getOrigCallerId()Ljava/lang/String;
.end method

.method public abstract setCallerId(Ljava/lang/String;)V
.end method

.method public abstract setData(Ljava/lang/String;)V
.end method

.method public abstract setOrigCallerId(Ljava/lang/String;)V
.end method
