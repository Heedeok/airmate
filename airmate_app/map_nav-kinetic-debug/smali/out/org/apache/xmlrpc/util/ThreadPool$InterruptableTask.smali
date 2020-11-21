.class public interface abstract Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lorg/apache/xmlrpc/util/ThreadPool$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterruptableTask"
.end annotation


# virtual methods
.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
