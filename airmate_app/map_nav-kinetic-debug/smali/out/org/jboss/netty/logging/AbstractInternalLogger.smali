.class public abstract Lorg/jboss/netty/logging/AbstractInternalLogger;
.super Ljava/lang/Object;
.source "AbstractInternalLogger.java"

# interfaces
.implements Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z
    .registers 4
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;

    .line 33
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 43
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 41
    :pswitch_11
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isErrorEnabled()Z

    move-result v0

    return v0

    .line 39
    :pswitch_16
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isWarnEnabled()Z

    move-result v0

    return v0

    .line 37
    :pswitch_1b
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isInfoEnabled()Z

    move-result v0

    return v0

    .line 35
    :pswitch_20
    invoke-virtual {p0}, Lorg/jboss/netty/logging/AbstractInternalLogger;->isDebugEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 81
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 78
    :pswitch_11
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->error(Ljava/lang/String;)V

    .line 79
    goto :goto_21

    .line 75
    :pswitch_15
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->warn(Ljava/lang/String;)V

    .line 76
    goto :goto_21

    .line 72
    :pswitch_19
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->info(Ljava/lang/String;)V

    .line 73
    goto :goto_21

    .line 69
    :pswitch_1d
    invoke-virtual {p0, p2}, Lorg/jboss/netty/logging/AbstractInternalLogger;->debug(Ljava/lang/String;)V

    .line 70
    nop

    .line 83
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method public log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 48
    sget-object v0, Lorg/jboss/netty/logging/AbstractInternalLogger$1;->$SwitchMap$org$jboss$netty$logging$InternalLogLevel:[I

    invoke-virtual {p1}, Lorg/jboss/netty/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 62
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 59
    :pswitch_11
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    goto :goto_21

    .line 56
    :pswitch_15
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    goto :goto_21

    .line 53
    :pswitch_19
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    goto :goto_21

    .line 50
    :pswitch_1d
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/logging/AbstractInternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    nop

    .line 64
    :goto_21
    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method
