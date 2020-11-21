.class public Lorg/apache/commons/io/FileCleaner;
.super Ljava/lang/Object;
.source "FileCleaner.java"


# static fields
.field static final theInstance:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lorg/apache/commons/io/FileCleaningTracker;

    invoke-direct {v0}, Lorg/apache/commons/io/FileCleaningTracker;-><init>()V

    sput-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitWhenFinished()V
    .registers 2

    const-class v0, Lorg/apache/commons/io/FileCleaner;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-object v1, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v1}, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 141
    monitor-exit v0

    return-void

    .line 139
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance()Lorg/apache/commons/io/FileCleaningTracker;
    .registers 1

    .line 152
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    return-object v0
.end method

.method public static getTrackCount()I
    .registers 1

    .line 114
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "marker"    # Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "marker"    # Ljava/lang/Object;
    .param p2, "deleteStrategy"    # Lorg/apache/commons/io/FileDeleteStrategy;

    .line 73
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    .line 74
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "marker"    # Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "marker"    # Ljava/lang/Object;
    .param p2, "deleteStrategy"    # Lorg/apache/commons/io/FileDeleteStrategy;

    .line 102
    sget-object v0, Lorg/apache/commons/io/FileCleaner;->theInstance:Lorg/apache/commons/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/commons/io/FileDeleteStrategy;)V

    .line 103
    return-void
.end method
