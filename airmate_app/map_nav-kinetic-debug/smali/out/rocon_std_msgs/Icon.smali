.class public interface abstract Lrocon_std_msgs/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Used to idenfity the original package/filename resource this icon was/is to be loaded from\n# This typically doesn\'t have to be set, but can be very useful when loading icons from yaml definitions.\nstring resource_name\n\n# Image data format.  \"jpeg\" or \"png\"\nstring format\n\n# Image data.\nuint8[] data"

.field public static final _TYPE:Ljava/lang/String; = "rocon_std_msgs/Icon"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.method public abstract getResourceName()Ljava/lang/String;
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setResourceName(Ljava/lang/String;)V
.end method
