.class public interface abstract Ltf2_msgs/TF2Error;
.super Ljava/lang/Object;
.source "TF2Error.java"

# interfaces
.implements Lorg/ros/internal/message/Message;


# static fields
.field public static final CONNECTIVITY_ERROR:B = 0x2t

.field public static final EXTRAPOLATION_ERROR:B = 0x3t

.field public static final INVALID_ARGUMENT_ERROR:B = 0x4t

.field public static final LOOKUP_ERROR:B = 0x1t

.field public static final NO_ERROR:B = 0x0t

.field public static final TIMEOUT_ERROR:B = 0x5t

.field public static final TRANSFORM_ERROR:B = 0x6t

.field public static final _DEFINITION:Ljava/lang/String; = "uint8 NO_ERROR = 0\nuint8 LOOKUP_ERROR = 1\nuint8 CONNECTIVITY_ERROR = 2\nuint8 EXTRAPOLATION_ERROR = 3\nuint8 INVALID_ARGUMENT_ERROR = 4\nuint8 TIMEOUT_ERROR = 5\nuint8 TRANSFORM_ERROR = 6\n\nuint8 error\nstring error_string\n"

.field public static final _TYPE:Ljava/lang/String; = "tf2_msgs/TF2Error"


# virtual methods
.method public abstract getError()B
.end method

.method public abstract getErrorString()Ljava/lang/String;
.end method

.method public abstract setError(B)V
.end method

.method public abstract setErrorString(Ljava/lang/String;)V
.end method
