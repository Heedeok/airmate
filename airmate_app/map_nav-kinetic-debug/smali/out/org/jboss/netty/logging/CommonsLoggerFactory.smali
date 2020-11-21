.class public Lorg/jboss/netty/logging/CommonsLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "CommonsLoggerFactory.java"


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
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 31
    .local v0, "logger":Lorg/apache/commons/logging/Log;
    new-instance v1, Lorg/jboss/netty/logging/CommonsLogger;

    invoke-direct {v1, v0, p1}, Lorg/jboss/netty/logging/CommonsLogger;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;)V

    return-object v1
.end method
