.class public interface abstract Lstd_msgs/Int64MultiArray;
.super Ljava/lang/Object;
.source "Int64MultiArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Please look at the MultiArrayLayout message definition for\n# documentation on all multiarrays.\n\nMultiArrayLayout  layout        # specification of data layout\nint64[]           data          # array of data\n\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/Int64MultiArray"


# virtual methods
.method public abstract getData()[J
.end method

.method public abstract getLayout()Lstd_msgs/MultiArrayLayout;
.end method

.method public abstract setData([J)V
.end method

.method public abstract setLayout(Lstd_msgs/MultiArrayLayout;)V
.end method
