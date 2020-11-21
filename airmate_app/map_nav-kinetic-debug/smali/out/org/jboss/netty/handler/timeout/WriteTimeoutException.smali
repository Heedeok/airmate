.class public Lorg/jboss/netty/handler/timeout/WriteTimeoutException;
.super Lorg/jboss/netty/handler/timeout/TimeoutException;
.source "WriteTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x6b81c131fe9d52a2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/timeout/TimeoutException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
