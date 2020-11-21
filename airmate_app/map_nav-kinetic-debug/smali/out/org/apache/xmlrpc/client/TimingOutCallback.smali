.class public Lorg/apache/xmlrpc/client/TimingOutCallback;
.super Ljava/lang/Object;
.source "TimingOutCallback.java"

# interfaces
.implements Lorg/apache/xmlrpc/client/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private responseSeen:Z

.field private result:Ljava/lang/Object;

.field private final timeout:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .param p1, "pTimeout"    # J

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized handleError(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .param p2, "pError"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 87
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    .line 88
    iput-object p2, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 90
    monitor-exit p0

    return-void

    .line 86
    .end local p1    # "pRequest":Lorg/apache/xmlrpc/XmlRpcRequest;
    .end local p2    # "pError":Ljava/lang/Throwable;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleResult(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Object;)V
    .registers 4
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .param p2, "pResult"    # Ljava/lang/Object;

    monitor-enter p0

    .line 93
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    .line 94
    iput-object p2, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->result:Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 96
    monitor-exit p0

    return-void

    .line 92
    .end local p1    # "pRequest":Lorg/apache/xmlrpc/XmlRpcRequest;
    .end local p2    # "pResult":Ljava/lang/Object;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForResponse()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    if-nez v0, :cond_2e

    .line 75
    iget-wide v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 76
    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->responseSeen:Z

    if-eqz v0, :cond_f

    goto :goto_2e

    .line 77
    :cond_f
    new-instance v0, Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No response after waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->timeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " milliseconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 80
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_36

    .line 83
    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->result:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_39

    monitor-exit p0

    return-object v0

    .line 81
    :cond_36
    :try_start_36
    iget-object v0, p0, Lorg/apache/xmlrpc/client/TimingOutCallback;->error:Ljava/lang/Throwable;

    throw v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_39

    .line 73
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method
