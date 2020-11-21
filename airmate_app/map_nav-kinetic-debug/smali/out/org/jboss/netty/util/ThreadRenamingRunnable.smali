.class public Lorg/jboss/netty/util/ThreadRenamingRunnable;
.super Ljava/lang/Object;
.source "ThreadRenamingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;


# instance fields
.field private final proposedThreadName:Ljava/lang/String;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 35
    sget-object v0, Lorg/jboss/netty/util/ThreadNameDeterminer;->PROPOSED:Lorg/jboss/netty/util/ThreadNameDeterminer;

    sput-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "proposedThreadName"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_14

    .line 75
    if-eqz p2, :cond_c

    .line 78
    iput-object p1, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    .line 79
    iput-object p2, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    .line 80
    return-void

    .line 76
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proposedThreadName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "runnable"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNewThreadName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "currentThreadName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 116
    .local v0, "newThreadName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->proposedThreadName:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lorg/jboss/netty/util/ThreadNameDeterminer;->determineThreadName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 121
    goto :goto_15

    .line 119
    :catch_d
    move-exception v1

    .line 120
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to determine the thread name"

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_15
    if-nez v0, :cond_19

    move-object v1, p1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    return-object v1
.end method

.method public static getThreadNameDeterminer()Lorg/jboss/netty/util/ThreadNameDeterminer;
    .registers 1

    .line 43
    sget-object v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    return-object v0
.end method

.method public static setThreadNameDeterminer(Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .registers 3
    .param p0, "threadNameDeterminer"    # Lorg/jboss/netty/util/ThreadNameDeterminer;

    .line 57
    if-eqz p0, :cond_5

    .line 60
    sput-object p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->threadNameDeterminer:Lorg/jboss/netty/util/ThreadNameDeterminer;

    .line 61
    return-void

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadNameDeterminer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 84
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "oldThreadName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/ThreadRenamingRunnable;->getNewThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "newThreadName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, "renamed":Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 91
    :try_start_13
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_16} :catch_18

    .line 92
    const/4 v3, 0x1

    .line 97
    goto :goto_20

    .line 93
    :catch_18
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/SecurityException;
    sget-object v5, Lorg/jboss/netty/util/ThreadRenamingRunnable;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to rename a thread due to security restriction."

    invoke-interface {v5, v6, v4}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_20
    :goto_20
    :try_start_20
    iget-object v4, p0, Lorg/jboss/netty/util/ThreadRenamingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2d

    .line 103
    nop

    .line 110
    if-eqz v3, :cond_2b

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 109
    :cond_2b
    nop

    .line 110
    return-void

    .line 104
    :catchall_2d
    move-exception v4

    .line 107
    if-eqz v3, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 104
    :cond_33
    throw v4
.end method
