.class public Lorg/ros/time/NtpTimeProvider;
.super Ljava/lang/Object;
.source "NtpTimeProvider.java"

# interfaces
.implements Lorg/ros/time/TimeProvider;


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final host:Ljava/net/InetAddress;

.field private final ntpClient:Lorg/apache/commons/net/ntp/NTPUDPClient;

.field private offset:J

.field private sampleSize:I

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final wallTimeProvider:Lorg/ros/time/WallTimeProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lorg/ros/time/NtpTimeProvider;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/time/NtpTimeProvider;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0xb

    iput v0, p0, Lorg/ros/time/NtpTimeProvider;->sampleSize:I

    .line 62
    iput-object p1, p0, Lorg/ros/time/NtpTimeProvider;->host:Ljava/net/InetAddress;

    .line 63
    iput-object p2, p0, Lorg/ros/time/NtpTimeProvider;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    new-instance v0, Lorg/ros/time/WallTimeProvider;

    invoke-direct {v0}, Lorg/ros/time/WallTimeProvider;-><init>()V

    iput-object v0, p0, Lorg/ros/time/NtpTimeProvider;->wallTimeProvider:Lorg/ros/time/WallTimeProvider;

    .line 65
    new-instance v0, Lorg/apache/commons/net/ntp/NTPUDPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;-><init>()V

    iput-object v0, p0, Lorg/ros/time/NtpTimeProvider;->ntpClient:Lorg/apache/commons/net/ntp/NTPUDPClient;

    .line 66
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->ntpClient:Lorg/apache/commons/net/ntp/NTPUDPClient;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ntp/NTPUDPClient;->setDefaultTimeout(I)V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/ros/time/NtpTimeProvider;->offset:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 69
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .registers 1

    .line 42
    sget-object v0, Lorg/ros/time/NtpTimeProvider;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method private computeOffset()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->ntpClient:Lorg/apache/commons/net/ntp/NTPUDPClient;

    iget-object v1, p0, Lorg/ros/time/NtpTimeProvider;->host:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ntp/NTPUDPClient;->getTime(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    .line 104
    .local v0, "time":Lorg/apache/commons/net/ntp/TimeInfo;
    nop

    .line 103
    nop

    .line 105
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    .line 106
    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeInfo;->getOffset()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 99
    .end local v0    # "time":Lorg/apache/commons/net/ntp/TimeInfo;
    :catch_16
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public getCurrentTime()Lorg/ros/message/Time;
    .registers 4

    .line 149
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->wallTimeProvider:Lorg/ros/time/WallTimeProvider;

    invoke-virtual {v0}, Lorg/ros/time/WallTimeProvider;->getCurrentTime()Lorg/ros/message/Time;

    move-result-object v0

    .line 150
    .local v0, "currentTime":Lorg/ros/message/Time;
    iget-wide v1, p0, Lorg/ros/time/NtpTimeProvider;->offset:J

    invoke-static {v1, v2}, Lorg/ros/message/Duration;->fromMillis(J)Lorg/ros/message/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ros/message/Time;->add(Lorg/ros/message/Duration;)Lorg/ros/message/Time;

    move-result-object v1

    return-object v1
.end method

.method public setUpdateTimeSampleSize(I)V
    .registers 3
    .param p1, "sampleSize"    # I

    .line 159
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 160
    iput p1, p0, Lorg/ros/time/NtpTimeProvider;->sampleSize:I

    .line 161
    return-void
.end method

.method public startPeriodicUpdates(JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 125
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/ros/time/NtpTimeProvider$1;

    invoke-direct {v1, p0}, Lorg/ros/time/NtpTimeProvider$1;-><init>(Lorg/ros/time/NtpTimeProvider;)V

    .line 126
    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 136
    return-void
.end method

.method public stopPeriodicUpdates()V
    .registers 3

    .line 142
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ros/time/NtpTimeProvider;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 145
    return-void
.end method

.method public updateTime()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 79
    .local v1, "failures":I
    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v3, "failures":I
    :goto_8
    iget v4, p0, Lorg/ros/time/NtpTimeProvider;->sampleSize:I

    if-ge v1, v4, :cond_25

    .line 81
    :try_start_c
    invoke-direct {p0}, Lorg/ros/time/NtpTimeProvider;->computeOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    .line 86
    goto :goto_21

    .line 82
    :catch_18
    move-exception v4

    .line 83
    .local v4, "e":Ljava/io/IOException;
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/ros/time/NtpTimeProvider;->sampleSize:I

    div-int/lit8 v5, v5, 0x2

    if-gt v3, v5, :cond_24

    .line 79
    .end local v4    # "e":Ljava/io/IOException;
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 84
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_24
    throw v4

    .line 88
    .end local v1    # "i":I
    .end local v4    # "e":Ljava/io/IOException;
    :cond_25
    invoke-static {v0}, Lorg/ros/math/CollectionMath;->median(Ljava/util/Collection;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/ros/time/NtpTimeProvider;->offset:J

    .line 89
    sget-object v1, Lorg/ros/time/NtpTimeProvider;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "NTP time offset: %d ms"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/ros/time/NtpTimeProvider;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
