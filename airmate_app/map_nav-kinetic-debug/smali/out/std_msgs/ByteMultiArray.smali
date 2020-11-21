.class public interface abstract Lstd_msgs/ByteMultiArray;
.super Ljava/lang/Object;
.source "ByteMultiArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Please look at the MultiArrayLayout message definition for\n# documentation on all multiarrays.\n\nMultiArrayLayout  layout        # specification of data layout\nbyte[]            data          # array of data\n\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/ByteMultiArray"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getLayout()Lstd_msgs/MultiArrayLayout;
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setLayout(Lstd_msgs/MultiArrayLayout;)V
.end method
