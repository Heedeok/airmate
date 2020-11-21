.class public Lorg/jboss/netty/handler/timeout/ReadTimeoutException;
.super Lorg/jboss/netty/handler/timeout/TimeoutException;
.source "ReadTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x3fc87b86a72e97f9L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 51
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
