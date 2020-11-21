.class final Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;
.super Ljava/lang/Object;
.source "ReadTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field volatile destroyed:Z

.field volatile lastReadTime:J

.field volatile timeout:Lorg/jboss/netty/util/Timeout;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/timeout/ReadTimeoutHandler$State;->lastReadTime:J

    .line 278
    return-void
.end method
