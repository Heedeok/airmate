.class public Lorg/jboss/netty/logging/JBossLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "JBossLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lorg/jboss/logging/Logger;->getLogger(Ljava/lang/String;)Lorg/jboss/logging/Logger;

    move-result-object v0

    .line 31
    .local v0, "logger":Lorg/jboss/logging/Logger;
    new-instance v1, Lorg/jboss/netty/logging/JBossLogger;

    invoke-direct {v1, v0}, Lorg/jboss/netty/logging/JBossLogger;-><init>(Lorg/jboss/logging/Logger;)V

    return-object v1
.end method
