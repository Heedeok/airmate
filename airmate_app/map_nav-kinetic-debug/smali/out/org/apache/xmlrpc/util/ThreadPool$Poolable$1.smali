.class Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;
.super Ljava/lang/Thread;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/util/ThreadPool$Poolable;-><init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

.field final synthetic val$this$0:Lorg/apache/xmlrpc/util/ThreadPool;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;Ljava/lang/ThreadGroup;Ljava/lang/String;Lorg/apache/xmlrpc/util/ThreadPool;)V
    .registers 5
    .param p1, "this$1"    # Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    .param p2, "x0"    # Ljava/lang/ThreadGroup;
    .param p3, "x1"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iput-object p4, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->val$this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 54
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 55
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v0

    .line 56
    .local v0, "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    if-nez v0, :cond_2b

    .line 58
    :try_start_10
    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_11} :catch_29

    .line 59
    :try_start_11
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$000(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$100(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)Lorg/apache/xmlrpc/util/ThreadPool$Task;

    move-result-object v1

    if-nez v1, :cond_24

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 62
    :cond_24
    monitor-exit p0

    goto :goto_2a

    :catchall_26
    move-exception v1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_29} :catch_29

    .line 63
    :catch_29
    move-exception v1

    .line 65
    .end local v0    # "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    :goto_2a
    goto :goto_51

    .line 68
    .restart local v0    # "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Task;->run()V

    .line 69
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    .line 70
    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object v1, v1, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v2, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v1, v2}, Lorg/apache/xmlrpc/util/ThreadPool;->repool(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_3c} :catch_3d

    .line 75
    goto :goto_51

    .line 71
    :catch_3d
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object v2, v2, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->this$0:Lorg/apache/xmlrpc/util/ThreadPool;

    iget-object v3, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v2, v3}, Lorg/apache/xmlrpc/util/ThreadPool;->access$300(Lorg/apache/xmlrpc/util/ThreadPool;Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    .line 73
    iget-object v2, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    .line 74
    iget-object v2, p0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable$1;->this$1:Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-static {v2}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->access$200(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    .line 77
    .end local v0    # "t":Lorg/apache/xmlrpc/util/ThreadPool$Task;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_51
    goto :goto_0

    .line 78
    :cond_52
    return-void
.end method
