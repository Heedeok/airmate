.class Lorg/jboss/netty/handler/ssl/SslHandler$2;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;->runDelegatedTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;Ljava/lang/Runnable;)V
    .registers 3

    .line 1165
    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1167
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->handshakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_5
    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1169
    monitor-exit v0

    .line 1170
    return-void

    .line 1169
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
