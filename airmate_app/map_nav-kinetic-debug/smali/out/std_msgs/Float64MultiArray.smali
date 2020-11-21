.class public interface abstract Lstd_msgs/Float64MultiArray;
.super Ljava/lang/Object;
.source "Float64MultiArray.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Please look at the MultiArrayLayout message definition for\n# documentation on all multiarrays.\n\nMultiArrayLayout  layout        # specification of data layout\nfloat64[]         data          # array of data\n\n"

.field public static final _TYPE:Ljava/lang/String; = "std_msgs/Float64MultiArray"


# virtual methods
.method public abstract getData()[D
.end method

.method public abstract getLayout()Lstd_msgs/MultiArrayLayout;
.end method

.method public abstract setData([D)V
.end method

.method public abstract setLayout(Lstd_msgs/MultiArrayLayout;)V
.end method
