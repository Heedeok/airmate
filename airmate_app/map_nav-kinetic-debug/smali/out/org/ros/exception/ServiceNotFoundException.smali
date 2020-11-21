.class public Lorg/ros/exception/ServiceNotFoundException;
.super Lorg/ros/exception/RosException;
.source "ServiceNotFoundException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/ros/exception/RosException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0, p1, p2}, Lorg/ros/exception/RosException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 25
    invoke-direct {p0, p1}, Lorg/ros/exception/RosException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method
