.class public Lorg/ros/time/RemoteUptimeClock;
.super Ljava/lang/Object;
.source "RemoteUptimeClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;,
        Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;,
        Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private drift:D

.field private final driftSensitivity:D

.field private errorReductionCoefficient:D

.field private final errorReductionCoefficientSensitivity:D

.field private final latencyOutlierFilter:Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

.field private localUptime:D

.field private final localUptimeProvider:Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;

.field private measuredRemoteUptime:D

.field private predictedRemoteUptime:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lorg/ros/time/RemoteUptimeClock;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;Ljava/util/concurrent/Callable;DDID)V
    .registers 23
    .param p1, "localUptimeProvider"    # Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;
    .param p3, "driftSensitivity"    # D
    .param p5, "errorReductionCoefficientSensitivity"    # D
    .param p7, "latencyOutlierFilterSampleSize"    # I
    .param p8, "latencyOutlierFilterThreshold"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Double;",
            ">;DDID)V"
        }
    .end annotation

    .line 196
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Double;>;"
    move-object v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    cmpl-double v11, v1, v9

    if-ltz v11, :cond_18

    cmpg-double v11, v1, v7

    if-gtz v11, :cond_18

    const/4 v11, 0x1

    goto :goto_19

    :cond_18
    const/4 v11, 0x0

    :goto_19
    invoke-static {v11}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 198
    cmpl-double v11, v3, v9

    if-ltz v11, :cond_26

    cmpg-double v11, v3, v7

    if-gtz v11, :cond_26

    const/4 v6, 0x1

    nop

    :cond_26
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 200
    move-object v5, p1

    iput-object v5, v0, Lorg/ros/time/RemoteUptimeClock;->localUptimeProvider:Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;

    .line 201
    move-object v6, p2

    iput-object v6, v0, Lorg/ros/time/RemoteUptimeClock;->callable:Ljava/util/concurrent/Callable;

    .line 202
    iput-wide v1, v0, Lorg/ros/time/RemoteUptimeClock;->driftSensitivity:D

    .line 203
    iput-wide v3, v0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficientSensitivity:D

    .line 204
    new-instance v7, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

    move/from16 v8, p7

    move-wide/from16 v11, p8

    invoke-direct {v7, p0, v8, v11, v12}, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;-><init>(Lorg/ros/time/RemoteUptimeClock;ID)V

    iput-object v7, v0, Lorg/ros/time/RemoteUptimeClock;->latencyOutlierFilter:Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

    .line 206
    iput-wide v9, v0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficient:D

    .line 207
    return-void
.end method

.method private calculateDrift(DD)D
    .registers 8
    .param p1, "localUptimeDelta"    # D
    .param p3, "remoteUptimeDelta"    # D

    .line 265
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v2, p3, v0

    if-lez v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 266
    div-double v0, p1, p3

    return-wide v0
.end method

.method private calculateNewUptime(Ljava/util/concurrent/Callable;)Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;"
        }
    .end annotation

    .line 334
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Double;>;"
    move-object/from16 v9, p0

    iget-object v0, v9, Lorg/ros/time/RemoteUptimeClock;->localUptimeProvider:Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;

    invoke-interface {v0}, Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;->getSeconds()D

    move-result-wide v0

    move-wide v1, v0

    .line 337
    .local v1, "newLocalUptime":D
    :try_start_9
    invoke-interface/range {p1 .. p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_2e

    .line 341
    .local v5, "newRemoteUptime":D
    nop

    .line 340
    nop

    .line 342
    iget-object v0, v9, Lorg/ros/time/RemoteUptimeClock;->localUptimeProvider:Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;

    invoke-interface {v0}, Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;->getSeconds()D

    move-result-wide v3

    sub-double v10, v3, v1

    .line 343
    .local v10, "latency":D
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v12, v10, v3

    .line 344
    .local v12, "latencyOffset":D
    add-double v14, v1, v12

    .line 345
    .end local v1    # "newLocalUptime":D
    .local v14, "newLocalUptime":D
    new-instance v0, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v14

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;-><init>(Lorg/ros/time/RemoteUptimeClock;DDD)V

    return-object v0

    .line 338
    .end local v5    # "newRemoteUptime":D
    .end local v10    # "latency":D
    .end local v12    # "latencyOffset":D
    .end local v14    # "newLocalUptime":D
    .restart local v1    # "newLocalUptime":D
    :catch_2e
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 340
    new-instance v3, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v3, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static newDefault(Lorg/ros/time/TimeProvider;Ljava/util/concurrent/Callable;DDID)Lorg/ros/time/RemoteUptimeClock;
    .registers 21
    .param p0, "timeProvider"    # Lorg/ros/time/TimeProvider;
    .param p2, "driftSensitivity"    # D
    .param p4, "errorReductionCoefficientSensitivity"    # D
    .param p6, "latencyOutlierFilterSampleSize"    # I
    .param p7, "latencyOutlierFilterThreshold"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ros/time/TimeProvider;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Double;",
            ">;DDID)",
            "Lorg/ros/time/RemoteUptimeClock;"
        }
    .end annotation

    .line 184
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Double;>;"
    new-instance v10, Lorg/ros/time/RemoteUptimeClock;

    new-instance v1, Lorg/ros/time/RemoteUptimeClock$1;

    move-object v11, p0

    invoke-direct {v1, p0}, Lorg/ros/time/RemoteUptimeClock$1;-><init>(Lorg/ros/time/TimeProvider;)V

    move-object v0, v10

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/ros/time/RemoteUptimeClock;-><init>(Lorg/ros/time/RemoteUptimeClock$LocalUptimeProvider;Ljava/util/concurrent/Callable;DDID)V

    return-object v10
.end method


# virtual methods
.method public calibrate(ID)V
    .registers 20
    .param p1, "sampleSize"    # I
    .param p2, "samplingDelayMillis"    # D

    .line 220
    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-object v0, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Starting calibration..."

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 221
    const-wide/16 v3, 0x0

    .line 222
    .local v3, "remoteUptimeSum":D
    const-wide/16 v5, 0x0

    .line 223
    .local v5, "localUptimeSum":D
    const-wide/16 v7, 0x0

    .line 224
    .local v7, "driftSum":D
    const/4 v0, 0x0

    move-wide v9, v5

    move-wide v4, v3

    const/4 v3, 0x0

    .end local v5    # "localUptimeSum":D
    .local v3, "i":I
    .local v4, "remoteUptimeSum":D
    .local v9, "localUptimeSum":D
    :goto_15
    if-ge v3, v2, :cond_5c

    .line 225
    iget-object v6, v1, Lorg/ros/time/RemoteUptimeClock;->callable:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v6}, Lorg/ros/time/RemoteUptimeClock;->calculateNewUptime(Ljava/util/concurrent/Callable;)Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;

    move-result-object v6

    .line 226
    .local v6, "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    iget-object v11, v1, Lorg/ros/time/RemoteUptimeClock;->latencyOutlierFilter:Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

    iget-wide v12, v6, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->latency:D

    invoke-virtual {v11, v12, v13}, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->add(D)Z

    .line 227
    if-lez v3, :cond_37

    .line 228
    iget-wide v11, v6, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newLocalUptime:D

    iget-wide v13, v1, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    sub-double/2addr v11, v13

    .line 229
    .local v11, "localUptimeDelta":D
    iget-wide v13, v6, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newRemoteUptime:D

    move v15, v3

    .end local v3    # "i":I
    .local v15, "i":I
    iget-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->measuredRemoteUptime:D

    sub-double/2addr v13, v2

    .line 230
    .local v13, "remoteUptimeDelta":D
    invoke-direct {v1, v11, v12, v13, v14}, Lorg/ros/time/RemoteUptimeClock;->calculateDrift(DD)D

    move-result-wide v2

    add-double/2addr v7, v2

    goto :goto_38

    .line 232
    .end local v11    # "localUptimeDelta":D
    .end local v13    # "remoteUptimeDelta":D
    .end local v15    # "i":I
    .restart local v3    # "i":I
    :cond_37
    move v15, v3

    .end local v3    # "i":I
    .restart local v15    # "i":I
    :goto_38
    iget-wide v2, v6, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newRemoteUptime:D

    iput-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->measuredRemoteUptime:D

    .line 233
    iget-wide v2, v6, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newLocalUptime:D

    iput-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    .line 234
    iget-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->measuredRemoteUptime:D

    add-double/2addr v4, v2

    .line 235
    iget-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    add-double/2addr v9, v2

    .line 237
    move-wide/from16 v2, p2

    double-to-long v11, v2

    :try_start_49
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_53

    .line 240
    nop

    .line 224
    .end local v6    # "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    add-int/lit8 v6, v15, 0x1

    move v3, v6

    move/from16 v2, p1

    goto :goto_15

    .line 238
    .restart local v6    # "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    :catch_53
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 239
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v11, Lorg/ros/exception/RosRuntimeException;

    invoke-direct {v11, v0}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 244
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    .end local v15    # "i":I
    :cond_5c
    move-wide/from16 v2, p2

    move/from16 v6, p1

    add-int/lit8 v11, v6, -0x1

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, v7, v11

    iput-wide v11, v1, Lorg/ros/time/RemoteUptimeClock;->drift:D

    .line 248
    iget-wide v11, v1, Lorg/ros/time/RemoteUptimeClock;->drift:D

    mul-double v11, v11, v4

    sub-double/2addr v11, v9

    int-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    .line 249
    .local v11, "offset":D
    iget-wide v13, v1, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    add-double/2addr v13, v11

    iget-wide v2, v1, Lorg/ros/time/RemoteUptimeClock;->drift:D

    div-double/2addr v13, v2

    iput-wide v13, v1, Lorg/ros/time/RemoteUptimeClock;->predictedRemoteUptime:D

    .line 250
    sget-object v2, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Calibration complete. Drift: %.4g, Offset: %.4f s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    iget-wide v14, v1, Lorg/ros/time/RemoteUptimeClock;->drift:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v13, v14

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method getDrift()D
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 363
    iget-wide v0, p0, Lorg/ros/time/RemoteUptimeClock;->drift:D

    return-wide v0
.end method

.method getErrorReductionCoefficient()D
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 368
    iget-wide v0, p0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficient:D

    return-wide v0
.end method

.method public toLocalUptime(D)D
    .registers 7
    .param p1, "remoteUptime"    # D

    .line 356
    iget-wide v0, p0, Lorg/ros/time/RemoteUptimeClock;->drift:D

    iget-wide v2, p0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficient:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ros/time/RemoteUptimeClock;->predictedRemoteUptime:D

    sub-double v2, p1, v2

    mul-double v0, v0, v2

    .line 358
    .local v0, "localOffset":D
    iget-wide v2, p0, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public update()V
    .registers 36

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ros/time/RemoteUptimeClock;->callable:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Lorg/ros/time/RemoteUptimeClock;->calculateNewUptime(Ljava/util/concurrent/Callable;)Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;

    move-result-object v1

    .line 280
    .local v1, "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    iget-wide v2, v1, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newLocalUptime:D

    .line 281
    .local v2, "newLocalUptime":D
    iget-wide v4, v1, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->newRemoteUptime:D

    .line 282
    .local v4, "newRemoteUptime":D
    iget-wide v6, v1, Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;->latency:D

    .line 284
    .local v6, "latency":D
    iget-object v8, v0, Lorg/ros/time/RemoteUptimeClock;->latencyOutlierFilter:Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

    invoke-virtual {v8, v6, v7}, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->add(D)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_39

    .line 285
    sget-object v8, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Measurement latency marked as outlier. Latency: %.4f s, Median: %.4f s"

    new-array v9, v9, [Ljava/lang/Object;

    .line 286
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v9, v11

    iget-object v11, v0, Lorg/ros/time/RemoteUptimeClock;->latencyOutlierFilter:Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;

    .line 287
    invoke-virtual {v11}, Lorg/ros/time/RemoteUptimeClock$LatencyOutlierFilter;->getMedian()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    .line 285
    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 288
    return-void

    .line 291
    :cond_39
    iget-wide v12, v0, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    sub-double v12, v2, v12

    .line 292
    .local v12, "localUptimeDelta":D
    iget-wide v14, v0, Lorg/ros/time/RemoteUptimeClock;->measuredRemoteUptime:D

    sub-double v14, v4, v14

    .line 293
    .local v14, "remoteUptimeDelta":D
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v8, v12, v16

    if-lez v8, :cond_4c

    const/4 v8, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    :goto_4d
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 294
    cmpl-double v8, v14, v16

    if-lez v8, :cond_56

    const/4 v8, 0x1

    goto :goto_57

    :cond_56
    const/4 v8, 0x0

    :goto_57
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 300
    iget-wide v9, v0, Lorg/ros/time/RemoteUptimeClock;->driftSensitivity:D

    div-double v16, v12, v14

    mul-double v9, v9, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v12

    .end local v12    # "localUptimeDelta":D
    .local v21, "localUptimeDelta":D
    iget-wide v11, v0, Lorg/ros/time/RemoteUptimeClock;->driftSensitivity:D

    sub-double v16, v16, v11

    iget-wide v11, v0, Lorg/ros/time/RemoteUptimeClock;->drift:D

    mul-double v16, v16, v11

    add-double v9, v9, v16

    .line 305
    .local v9, "newDrift":D
    iget-wide v11, v0, Lorg/ros/time/RemoteUptimeClock;->predictedRemoteUptime:D

    move-wide/from16 v23, v6

    .end local v6    # "latency":D
    .local v23, "latency":D
    iget-wide v6, v0, Lorg/ros/time/RemoteUptimeClock;->drift:D

    move-object/from16 v25, v1

    move-wide/from16 v26, v2

    .end local v1    # "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    .end local v2    # "newLocalUptime":D
    .local v25, "result":Lorg/ros/time/RemoteUptimeClock$UptimeCalculationResult;
    .local v26, "newLocalUptime":D
    iget-wide v1, v0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficient:D

    add-double/2addr v6, v1

    div-double v1, v21, v6

    add-double/2addr v11, v1

    .line 307
    .local v11, "newPredictedRemoteUptime":D
    add-double v1, v4, v14

    .line 308
    .local v1, "nextPredictedRemoteUptime":D
    sub-double v6, v1, v11

    div-double v6, v21, v6

    .line 310
    .local v6, "newCombinedDriftAndError":D
    move-wide/from16 v28, v1

    .end local v1    # "nextPredictedRemoteUptime":D
    .local v28, "nextPredictedRemoteUptime":D
    iget-wide v1, v0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficientSensitivity:D

    sub-double v16, v6, v9

    mul-double v1, v1, v16

    .line 312
    .local v1, "newErrorReductionCoefficient":D
    div-double v16, v14, v21

    .line 313
    .local v16, "deltaRatio":D
    invoke-virtual {v0, v4, v5}, Lorg/ros/time/RemoteUptimeClock;->toLocalUptime(D)D

    move-result-wide v30

    sub-double v30, v26, v30

    .line 314
    .local v30, "error":D
    sget-object v3, Lorg/ros/time/RemoteUptimeClock;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Latency: %.4f s, Delta ratio: %.4f, Drift: %.4g, Error reduction coefficient: %.4g, Error: %.4f s"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    .line 315
    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    const/16 v20, 0x0

    aput-object v32, v13, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v13, v19

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const/16 v18, 0x2

    aput-object v19, v13, v18

    const/16 v18, 0x3

    .line 316
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v13, v18

    const/16 v18, 0x4

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v13, v18

    .line 314
    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 318
    iput-wide v4, v0, Lorg/ros/time/RemoteUptimeClock;->measuredRemoteUptime:D

    .line 319
    iput-wide v11, v0, Lorg/ros/time/RemoteUptimeClock;->predictedRemoteUptime:D

    .line 320
    move-wide/from16 v33, v4

    move-wide/from16 v3, v26

    .end local v4    # "newRemoteUptime":D
    .end local v26    # "newLocalUptime":D
    .local v3, "newLocalUptime":D
    .local v33, "newRemoteUptime":D
    iput-wide v3, v0, Lorg/ros/time/RemoteUptimeClock;->localUptime:D

    .line 321
    iput-wide v9, v0, Lorg/ros/time/RemoteUptimeClock;->drift:D

    .line 322
    iput-wide v1, v0, Lorg/ros/time/RemoteUptimeClock;->errorReductionCoefficient:D

    .line 323
    return-void
.end method
