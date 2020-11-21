.class public Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "BlockingReadTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f0cc8170817715L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 40
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 54
    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    return-void
.end method
