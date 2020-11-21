.class public interface abstract Lrosjava_test_msgs/TestHeader;
.super Ljava/lang/Object;
.source "TestHeader.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "Header header\n\n# caller_id of most recent node to send this message\nstring caller_id\n# caller_id of the original node to send this message\nstring orig_caller_id\n\nbyte auto_header # autoset header on response\n"

.field public static final _TYPE:Ljava/lang/String; = "rosjava_test_msgs/TestHeader"


# virtual methods
.method public abstract getAutoHeader()B
.end method

.method public abstract getCallerId()Ljava/lang/String;
.end method

.method public abstract getHeader()Lstd_msgs/Header;
.end method

.method public abstract getOrigCallerId()Ljava/lang/String;
.end method

.method public abstract setAutoHeader(B)V
.end method

.method public abstract setCallerId(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Lstd_msgs/Header;)V
.end method

.method public abstract setOrigCallerId(Ljava/lang/String;)V
.end method
