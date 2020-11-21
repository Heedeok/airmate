.class final Lorg/apache/commons/io/FileCleaningTracker$Reaper;
.super Ljava/lang/Thread;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reaper"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/io/FileCleaningTracker;


# direct methods
.method constructor <init>(Lorg/apache/commons/io/FileCleaningTracker;)V
    .registers 3

    .line 190
    const-string v0, "File Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    .line 191
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setPriority(I)V

    .line 192
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->setDaemon(Z)V

    .line 193
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 201
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-boolean v0, v0, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v0, v0, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_12

    .line 215
    :cond_11
    return-void

    .line 202
    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 205
    .local v0, "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :try_start_13
    iget-object v1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v1, v1, Lorg/apache/commons/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_2f

    move-object v0, v1

    .line 208
    nop

    .line 209
    if-eqz v0, :cond_2e

    .line 210
    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->delete()Z

    .line 211
    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker$Tracker;->clear()V

    .line 212
    iget-object v1, p0, Lorg/apache/commons/io/FileCleaningTracker$Reaper;->this$0:Lorg/apache/commons/io/FileCleaningTracker;

    iget-object v1, v1, Lorg/apache/commons/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 214
    .end local v0    # "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :cond_2e
    goto :goto_0

    .line 206
    .restart local v0    # "tracker":Lorg/apache/commons/io/FileCleaningTracker$Tracker;
    :catch_2f
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
