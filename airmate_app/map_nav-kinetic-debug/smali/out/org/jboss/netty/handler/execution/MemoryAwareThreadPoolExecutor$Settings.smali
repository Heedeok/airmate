.class final Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;
.super Ljava/lang/Object;
.source "MemoryAwareThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Settings"
.end annotation


# instance fields
.field final maxChannelMemorySize:J

.field final objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;J)V
    .registers 4
    .param p1, "objectSizeEstimator"    # Lorg/jboss/netty/util/ObjectSizeEstimator;
    .param p2, "maxChannelMemorySize"    # J

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    .line 598
    iput-wide p2, p0, Lorg/jboss/netty/handler/execution/MemoryAwareThreadPoolExecutor$Settings;->maxChannelMemorySize:J

    .line 599
    return-void
.end method
