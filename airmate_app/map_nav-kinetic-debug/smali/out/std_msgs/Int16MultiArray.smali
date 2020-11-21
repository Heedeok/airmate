.class public interface abstract Lstd_msgs/Int16MultiArray;
.super Ljava/lang/Object;
.source "Int16MultiArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Please look at the MultiArrayLayout message definition for\n# documentation on all multiarrays.\n\nMultiArrayLayout  layout        # specification of data layout\nint16[]           data          # array of data\n\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/Int16MultiArray"


# virtual methods
.method public abstract getData()[S
.end method

.method public abstract getLayout()Lstd_msgs/MultiArrayLayout;
.end method

.method public abstract setData([S)V
.end method

.method public abstract setLayout(Lstd_msgs/MultiArrayLayout;)V
.end method
