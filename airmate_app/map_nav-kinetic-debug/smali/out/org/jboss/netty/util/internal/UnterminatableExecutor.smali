.class public Lorg/jboss/netty/util/internal/UnterminatableExecutor;
.super Ljava/lang/Object;
.source "UnterminatableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_8

    .line 31
    iput-object p1, p0, Lorg/jboss/netty/util/internal/UnterminatableExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 32
    return-void

    .line 29
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 35
    iget-object v0, p0, Lorg/jboss/netty/util/internal/UnterminatableExecutor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
