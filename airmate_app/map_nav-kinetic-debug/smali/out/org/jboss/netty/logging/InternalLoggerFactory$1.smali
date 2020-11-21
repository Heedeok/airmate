.class final Lorg/jboss/netty/logging/InternalLoggerFactory$1;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"

# interfaces
.implements Lorg/jboss/netty/logging/InternalLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method constructor <init>(Lorg/jboss/netty/logging/InternalLogger;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 84
    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 93
    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 102
    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z
    .registers 3
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;

    .line 132
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V
    .registers 4
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 140
    invoke-static {p3}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 141
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 127
    invoke-static {p2}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 128
    iget-object v0, p0, Lorg/jboss/netty/logging/InternalLoggerFactory$1;->val$logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method
