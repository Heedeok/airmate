.class public Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;
.super Ljava/util/Timer;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarterTimer"
.end annotation


# instance fields
.field private volatile _cancelled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "isDaemon"    # Z

    .line 169
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Z)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 171
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    monitor-enter p0

    .line 196
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 197
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 198
    invoke-super {p0}, Ljava/util/Timer;->cancel()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    .line 199
    monitor-exit p0

    return-void

    .line 195
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;J)V
    .registers 5
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    monitor-enter p0

    .line 207
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 208
    :cond_7
    :try_start_7
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 209
    monitor-exit p0

    return-void

    .line 206
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "delay":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;JJ)V
    .registers 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    monitor-enter p0

    .line 227
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 228
    :cond_7
    :try_start_7
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 229
    monitor-exit p0

    return-void

    .line 226
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "delay":J
    .end local p4    # "period":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .registers 4
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 218
    :cond_7
    :try_start_7
    invoke-super {p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 219
    monitor-exit p0

    return-void

    .line 216
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "time":Ljava/util/Date;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    monitor-enter p0

    .line 237
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 238
    :cond_7
    :try_start_7
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 239
    monitor-exit p0

    return-void

    .line 236
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "firstTime":Ljava/util/Date;
    .end local p3    # "period":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .registers 7
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    monitor-enter p0

    .line 247
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 248
    :cond_7
    :try_start_7
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 249
    monitor-exit p0

    return-void

    .line 246
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "delay":J
    .end local p4    # "period":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .registers 6
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    monitor-enter p0

    .line 257
    :try_start_1
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 258
    :cond_7
    :try_start_7
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 259
    monitor-exit p0

    return-void

    .line 256
    .end local p1    # "task":Ljava/util/TimerTask;
    .end local p2    # "firstTime":Ljava/util/Date;
    .end local p3    # "period":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
