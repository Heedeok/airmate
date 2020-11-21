.class public abstract Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
.super Ljava/lang/Object;
.source "ChannelEventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jboss/netty/util/EstimatableObjectWrapper;


# static fields
.field protected static final PARENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field protected final e:Lorg/jboss/netty/channel/ChannelEvent;

.field estimatedSize:I

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 43
    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    .line 44
    iput-object p3, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->executor:Ljava/util/concurrent/Executor;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract doRun()V
.end method

.method public getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method

.method public final run()V
    .registers 4

    .line 68
    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->doRun()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 70
    nop

    .line 74
    sget-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 72
    nop

    .line 74
    return-void

    .line 71
    :catchall_12
    move-exception v0

    .line 74
    move-object v1, p0

    .local v1, "this":Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
    sget-object v2, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 71
    throw v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2

    .line 63
    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method
