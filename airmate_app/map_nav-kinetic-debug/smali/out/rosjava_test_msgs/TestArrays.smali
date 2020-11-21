.class public interface abstract Lrosjava_test_msgs/TestArrays;
.super Ljava/lang/Object;
.source "TestArrays.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# caller_id of most recent node to send this message\nstring caller_id\n# caller_id of the original node to send this message\nstring orig_caller_id\n\nint32[] int32_array\nfloat32[] float32_array\ntime[] time_array\nTestString[] test_string_array\n# TODO: array of arrays\n"

.field public static final _TYPE:Ljava/lang/String; = "rosjava_test_msgs/TestArrays"


# virtual methods
.method public abstract getCallerId()Ljava/lang/String;
.end method

.method public abstract getFloat32Array()[F
.end method

.method public abstract getInt32Array()[I
.end method

.method public abstract getOrigCallerId()Ljava/lang/String;
.end method

.method public abstract getTestStringArray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrosjava_test_msgs/TestString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeArray()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCallerId(Ljava/lang/String;)V
.end method

.method public abstract setFloat32Array([F)V
.end method

.method public abstract setInt32Array([I)V
.end method

.method public abstract setOrigCallerId(Ljava/lang/String;)V
.end method

.method public abstract setTestStringArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrosjava_test_msgs/TestString;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTimeArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ros/message/Time;",
            ">;)V"
        }
    .end annotation
.end method
