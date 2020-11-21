.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .line 150
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    .line 152
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 154
    :goto_7
    goto :goto_0

    .line 153
    :catch_8
    move-exception v0

    goto :goto_7

    .line 156
    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 7

    .line 67
    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_8

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    iput-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_48

    .line 74
    .local v1, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_start_f
    iget-object v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    move-object v0, v2

    .line 75
    .local v0, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_42

    .line 78
    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 79
    :try_start_16
    invoke-interface {v1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1c

    .line 85
    :catchall_1a
    move-exception v3

    goto :goto_2b

    .line 81
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_36

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_36

    .line 82
    move-object v3, v0

    check-cast v3, Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_1a

    goto :goto_36

    .line 85
    :goto_2b
    monitor-enter p0

    .line 86
    :try_start_2c
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_33

    throw v3

    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2

    .line 85
    :cond_36
    :goto_36
    monitor-enter p0

    .line 86
    :try_start_37
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_3f
    move-exception v2

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v2

    .line 75
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_42
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4a

    .end local v1    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :catchall_48
    move-exception v1

    move-object v2, v0

    .local v0, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .local v2, "obj":Ljava/lang/Object;
    :goto_4a
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    throw v1

    :catchall_4c
    move-exception v1

    goto :goto_4a
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_8
    monitor-enter p0

    .line 139
    :try_start_9
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1f

    .line 140
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1f

    .line 142
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 145
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 146
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 46
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_a
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 119
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 121
    return-void

    .line 117
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 119
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 58
    return-void

    .line 56
    :cond_7
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0
.end method
