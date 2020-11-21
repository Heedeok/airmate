.class final Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;
.super Ljava/lang/Object;
.source "RemoteUptimeClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ros/time/RemoteUptimeClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LatencyOutlierFilter"
.end annotation


# instance fields
.field private final latencies:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleSize:I

.field final synthetic this$0:Lorg/ros/time/RemoteUptimeClock;

.field private final threshold:D


# direct methods
.method public constructor <init>(Lorg/ros/time/RemoteUptimeClock;ID)V
    .registers 9
    .param p2, "sampleSize"    # I
    .param p3, "threshold"    # D

    .line 123
    iput-object p1, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->this$0:Lorg/ros/time/RemoteUptimeClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 125
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p3, v1

    if-lez v3, :cond_17

    const/4 p1, 0x1

    nop

    :cond_17
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 126
    iput-wide p3, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->threshold:D

    .line 127
    iput p2, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->sampleSize:I

    .line 128
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    .line 129
    return-void
.end method


# virtual methods
.method public add(D)Z
    .registers 9
    .param p1, "latency"    # D

    .line 137
    iget-object v0, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->sampleSize:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_28

    .line 139
    iget-object v0, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->getMedian()D

    move-result-wide v0

    .line 145
    .local v0, "medianLatency":D
    iget-wide v3, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->threshold:D

    mul-double v3, v3, v0

    cmpg-double v5, p1, v3

    if-gez v5, :cond_26

    .line 146
    return v2

    .line 148
    :cond_26
    const/4 v2, 0x1

    return v2

    .line 142
    .end local v0    # "medianLatency":D
    :cond_28
    return v2
.end method

.method public getMedian()D
    .registers 4

    .line 152
    iget-object v0, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    .local v0, "ordered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    iget-object v1, p0, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->latencies:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method
