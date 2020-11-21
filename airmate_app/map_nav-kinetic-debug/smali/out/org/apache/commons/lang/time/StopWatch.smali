.class public Lorg/apache/commons/lang/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# static fields
.field private static final STATE_RUNNING:I = 0x1

.field private static final STATE_SPLIT:I = 0xb

.field private static final STATE_STOPPED:I = 0x2

.field private static final STATE_SUSPENDED:I = 0x3

.field private static final STATE_UNSPLIT:I = 0xa

.field private static final STATE_UNSTARTED:I


# instance fields
.field private runningState:I

.field private splitState:I

.field private startTime:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 91
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 100
    return-void
.end method


# virtual methods
.method public getSplitTime()J
    .registers 5

    .line 288
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    .line 291
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 289
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartTime()J
    .registers 3

    .line 303
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-eqz v0, :cond_7

    .line 306
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    return-wide v0

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime()J
    .registers 5

    .line 262
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_27

    .line 264
    :cond_b
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-nez v0, :cond_12

    .line 265
    const-wide/16 v0, 0x0

    return-wide v0

    .line 266
    :cond_12
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 269
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occured. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_27
    :goto_27
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 159
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 160
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 161
    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 162
    return-void
.end method

.method public resume()V
    .registers 7

    .line 241
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 244
    iget-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 245
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 247
    return-void

    .line 242
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split()V
    .registers 3

    .line 178
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 182
    const/16 v0, 0xb

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 183
    return-void

    .line 179
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .registers 3

    .line 115
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 118
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-nez v0, :cond_17

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->startTime:J

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 124
    return-void

    .line 119
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 4

    .line 139
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_13

    .line 140
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_13
    :goto_13
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    if-ne v0, v1, :cond_1d

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 145
    :cond_1d
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 146
    return-void
.end method

.method public suspend()V
    .registers 3

    .line 220
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->runningState:I

    .line 225
    return-void

    .line 221
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSplitString()Ljava/lang/String;
    .registers 3

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/lang/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .registers 3

    .line 199
    iget v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/lang/time/StopWatch;->stopTime:J

    .line 203
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/lang/time/StopWatch;->splitState:I

    .line 204
    return-void

    .line 200
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
