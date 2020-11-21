.class public interface abstract Lrosjava_test_msgs/TestPrimitives;
.super Ljava/lang/Object;
.source "TestPrimitives.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final _DEFINITION:Ljava/lang/String; = "# Integration test message of all primitive types\n\n# caller_id of most recent node to send this message\nstring caller_id\n# caller_id of the original node to send this message\nstring orig_caller_id\n\nstring str\nbyte b\nint16 int16\nint32 int32\nint64 int64\nchar c\nuint16 uint16\nuint32 uint32\nuint64 uint64\nfloat32 float32\nfloat64 float64\ntime t\nduration d\n\n"

.field public static final _TYPE:Ljava/lang/String; = "rosjava_test_msgs/TestPrimitives"


# virtual methods
.method public abstract getB()B
.end method

.method public abstract getC()B
.end method

.method public abstract getCallerId()Ljava/lang/String;
.end method

.method public abstract getD()Lorg/ros/message/Duration;
.end method

.method public abstract getFloat32()F
.end method

.method public abstract getFloat64()D
.end method

.method public abstract getInt16()S
.end method

.method public abstract getInt32()I
.end method

.method public abstract getInt64()J
.end method

.method public abstract getOrigCallerId()Ljava/lang/String;
.end method

.method public abstract getStr()Ljava/lang/String;
.end method

.method public abstract getT()Lorg/ros/message/Time;
.end method

.method public abstract getUint16()S
.end method

.method public abstract getUint32()I
.end method

.method public abstract getUint64()J
.end method

.method public abstract setB(B)V
.end method

.method public abstract setC(B)V
.end method

.method public abstract setCallerId(Ljava/lang/String;)V
.end method

.method public abstract setD(Lorg/ros/message/Duration;)V
.end method

.method public abstract setFloat32(F)V
.end method

.method public abstract setFloat64(D)V
.end method

.method public abstract setInt16(S)V
.end method

.method public abstract setInt32(I)V
.end method

.method public abstract setInt64(J)V
.end method

.method public abstract setOrigCallerId(Ljava/lang/String;)V
.end method

.method public abstract setStr(Ljava/lang/String;)V
.end method

.method public abstract setT(Lorg/ros/message/Time;)V
.end method

.method public abstract setUint16(S)V
.end method

.method public abstract setUint32(I)V
.end method

.method public abstract setUint64(J)V
.end method
