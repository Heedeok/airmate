.class public Lorg/ros/exception/DuplicateServiceException;
.super Lorg/ros/exception/RosRuntimeException;
.source "DuplicateServiceException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
