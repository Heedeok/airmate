.class public interface abstract Luuid_msgs/UniqueID;
.super Ljava/lang/Object;
.source "UniqueID.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# A universally unique identifier (UUID).\n#\n#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n#  http://tools.ietf.org/html/rfc4122.html\n\nuint8[16] uuid\n"

.field public static final _TYPE:Ljava/lang/String; = "uuid_msgs/UniqueID"


# virtual methods
.method public abstract getUuid()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract setUuid(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method
