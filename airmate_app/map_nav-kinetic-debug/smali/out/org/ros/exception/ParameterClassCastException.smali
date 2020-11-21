.class public Lorg/ros/exception/ParameterClassCastException;
.super Lorg/ros/exception/RosRuntimeException;
.source "ParameterClassCastException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method
