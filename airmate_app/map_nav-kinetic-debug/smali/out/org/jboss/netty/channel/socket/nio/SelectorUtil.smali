.class final Lorg/jboss/netty/channel/socket/nio/SelectorUtil;
.super Ljava/lang/Object;
.source "SelectorUtil.java"


# static fields
.field static final DEFAULT_IO_THREADS:I

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 26
    const-class v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    .line 37
    const-string v0, "sun.nio.ch.bugLevel"

    .line 39
    .local v0, "key":Ljava/lang/String;
    :try_start_16
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "buglevel":Ljava/lang/String;
    if-nez v1, :cond_21

    .line 41
    const-string v2, ""

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_21} :catch_22

    .line 47
    .end local v1    # "buglevel":Ljava/lang/String;
    :cond_21
    goto :goto_46

    .line 43
    :catch_22
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 45
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get/set System Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_46
    :goto_46
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static select(Ljava/nio/channels/Selector;)V
    .registers 5
    .param p0, "selector"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const-wide/16 v0, 0xa

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_5} :catch_6

    .line 60
    goto :goto_2b

    .line 53
    :catch_6
    move-exception v0

    .line 54
    .local v0, "e":Ljava/nio/channels/CancelledKeyException;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 55
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Ljava/nio/channels/CancelledKeyException;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " raised by a Selector - JDK bug?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/nio/channels/CancelledKeyException;
    :cond_2b
    :goto_2b
    return-void
.end method
