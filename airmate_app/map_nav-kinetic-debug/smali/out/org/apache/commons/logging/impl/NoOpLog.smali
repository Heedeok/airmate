.class public Lorg/apache/commons/logging/impl/NoOpLog;
.super Ljava/lang/Object;
.source "NoOpLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 47
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 59
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 63
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 51
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final isTraceEnabled()Z
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 43
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 55
    return-void
.end method
