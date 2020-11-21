.class public Lorg/jboss/netty/channel/DefaultFileRegion;
.super Ljava/lang/Object;
.source "DefaultFileRegion.java"

# interfaces
.implements Lorg/jboss/netty/channel/FileRegion;


# static fields
.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final count:J

.field private final file:Ljava/nio/channels/FileChannel;

.field private final position:J

.field private final releaseAfterTransfer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultFileRegion;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJ)V
    .registers 13
    .param p1, "file"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J

    .line 35
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 7
    .param p1, "file"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .param p6, "releaseAfterTransfer"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    .line 40
    iput-wide p2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    .line 41
    iput-wide p4, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    .line 42
    iput-boolean p6, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    return-wide v0
.end method

.method public releaseAfterTransfer()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer:Z

    return v0
.end method

.method public releaseExternalResources()V
    .registers 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 78
    goto :goto_16

    .line 74
    :catch_6
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jboss/netty/channel/DefaultFileRegion;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 76
    sget-object v1, Lorg/jboss/netty/channel/DefaultFileRegion;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a file."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    :goto_16
    return-void
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;J)J
    .registers 12
    .param p1, "target"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-wide v0, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    sub-long/2addr v0, p2

    .line 59
    .local v0, "count":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1e

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1e

    .line 64
    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 65
    return-wide v2

    .line 68
    :cond_12
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->file:Ljava/nio/channels/FileChannel;

    iget-wide v3, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->position:J

    add-long/2addr v3, p2

    move-wide v5, v0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    return-wide v2

    .line 60
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (expected: 0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/jboss/netty/channel/DefaultFileRegion;->count:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
