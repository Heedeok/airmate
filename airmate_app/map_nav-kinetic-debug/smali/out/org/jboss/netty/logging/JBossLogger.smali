.class Lorg/jboss/netty/logging/JBossLogger;
.super Lorg/jboss/netty/logging/AbstractInternalLogger;
.source "JBossLogger.java"


# instance fields
.field private final logger:Lorg/jboss/logging/Logger;


# direct methods
.method constructor <init>(Lorg/jboss/logging/Logger;)V
    .registers 2
    .param p1, "logger"    # Lorg/jboss/logging/Logger;

    .line 28
    invoke-direct {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    .line 30
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 37
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 45
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 53
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0}, Lorg/jboss/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 79
    iget-object v0, p0, Lorg/jboss/netty/logging/JBossLogger;->logger:Lorg/jboss/logging/Logger;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/logging/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method
