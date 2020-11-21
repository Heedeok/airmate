.class public Lorg/jboss/netty/channel/DefaultChannelPipeline;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipeline;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;,
        Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    }
.end annotation


# static fields
.field static final discardingSink:Lorg/jboss/netty/channel/ChannelSink;

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile channel:Lorg/jboss/netty/channel/Channel;

.field private volatile head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

.field private final name2ctx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sink:Lorg/jboss/netty/channel/ChannelSink;

.field private volatile tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 37
    new-instance v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DiscardingChannelSink;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 9
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 337
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 338
    return-void

    .line 341
    :cond_9
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 345
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 366
    nop

    .line 367
    return-void

    .line 346
    :catch_14
    move-exception v1

    .line 347
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 349
    .local v2, "removed":Z
    :try_start_16
    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-direct {p0, v3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1c} :catch_1e

    .line 350
    const/4 v2, 0x1

    .line 355
    goto :goto_41

    .line 351
    :catch_1e
    move-exception v3

    .line 352
    .local v3, "t2":Ljava/lang/Throwable;
    sget-object v4, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v4}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 353
    sget-object v4, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove a handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .end local v3    # "t2":Ljava/lang/Throwable;
    :cond_41
    :goto_41
    if-eqz v2, :cond_62

    .line 358
    new-instance v3, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".afterAdd() has thrown an exception; removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 362
    :cond_62
    new-instance v3, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".afterAdd() has thrown an exception; also failed to remove."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 387
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 388
    return-void

    .line 391
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 395
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 400
    nop

    .line 401
    return-void

    .line 396
    :catch_14
    move-exception v1

    .line 397
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".afterRemove() has thrown an exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 320
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 321
    return-void

    .line 324
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 328
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 333
    nop

    .line 334
    return-void

    .line 329
    :catch_14
    move-exception v1

    .line 330
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".beforeAdd() has thrown an exception; not adding."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .registers 6
    .param p0, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;

    .line 370
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    if-nez v0, :cond_9

    .line 371
    return-void

    .line 374
    :cond_9
    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;

    .line 378
    .local v0, "h":Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
    :try_start_f
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;->beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_14

    .line 383
    nop

    .line 384
    return-void

    .line 379
    :catch_14
    move-exception v1

    .line 380
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".beforeRemove() has thrown an exception; not removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkDuplicateName(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 678
    return-void

    .line 676
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;"
        }
    .end annotation

    .line 699
    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 700
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_9

    .line 703
    return-object v0

    .line 701
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 681
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 682
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_9

    .line 685
    return-object v0

    .line 683
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 5
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 690
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 691
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_9

    .line 694
    return-object v0

    .line 692
    :cond_9
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 666
    new-instance v6, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 667
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 668
    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 669
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 670
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 672
    return-void
.end method

.method private remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 6
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 169
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v0, v1, :cond_11

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 171
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_38

    .line 172
    :cond_11
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_19

    .line 173
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_38

    .line 174
    :cond_19
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_21

    .line 175
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    goto :goto_38

    .line 177
    :cond_21
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 179
    iget-object v0, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 180
    .local v0, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v1, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 181
    .local v1, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 182
    iput-object v0, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 183
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 187
    .end local v0    # "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v1    # "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_38
    return-object p1
.end method

.method private replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 15
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    .line 257
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_c

    .line 258
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeFirst()Lorg/jboss/netty/channel/ChannelHandler;

    .line 259
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto/16 :goto_b8

    .line 260
    :cond_c
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne p1, v0, :cond_18

    .line 261
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->removeLast()Lorg/jboss/netty/channel/ChannelHandler;

    .line 262
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto/16 :goto_b8

    .line 264
    :cond_18
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    .local v0, "sameName":Z
    if-nez v0, :cond_25

    .line 266
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 269
    :cond_25
    iget-object v7, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 270
    .local v7, "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v8, p1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 271
    .local v8, "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v9, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 273
    .local v1, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 274
    invoke-static {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 276
    iput-object v1, v7, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 277
    iput-object v1, v8, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 279
    if-nez v0, :cond_49

    .line 280
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_49
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "removeException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    const/4 v3, 0x0

    .line 286
    .local v3, "addException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    const/4 v4, 0x0

    move v5, v4

    .line 288
    .local v5, "removed":Z
    :try_start_52
    invoke-static {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_55
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_52 .. :try_end_55} :catch_57

    .line 289
    const/4 v5, 0x1

    .line 292
    goto :goto_59

    .line 290
    :catch_57
    move-exception v6

    .line 291
    .local v6, "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    move-object v2, v6

    .line 294
    .end local v6    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    :goto_59
    nop

    .line 296
    .local v4, "added":Z
    :try_start_5a
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_5d
    .catch Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException; {:try_start_5a .. :try_end_5d} :catch_5f

    .line 297
    const/4 v4, 0x1

    .line 300
    goto :goto_61

    .line 298
    :catch_5f
    move-exception v6

    .line 299
    .restart local v6    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    move-object v3, v6

    .line 302
    .end local v6    # "e":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    :goto_61
    if-nez v5, :cond_b4

    if-eqz v4, :cond_66

    goto :goto_b4

    .line 303
    :cond_66
    sget-object v6, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    sget-object v6, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    new-instance v6, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Both "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".afterRemove() and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".afterAdd() failed; see logs."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_b4
    :goto_b4
    if-eqz v5, :cond_be

    .line 311
    if-eqz v4, :cond_bd

    .line 316
    .end local v0    # "sameName":Z
    .end local v1    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v2    # "removeException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    .end local v3    # "addException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    .end local v4    # "added":Z
    .end local v5    # "removed":Z
    .end local v7    # "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v8    # "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_b8
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0

    .line 312
    .restart local v0    # "sameName":Z
    .restart local v1    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .restart local v2    # "removeException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    .restart local v3    # "addException":Lorg/jboss/netty/channel/ChannelHandlerLifeCycleException;
    .restart local v4    # "added":Z
    .restart local v5    # "removed":Z
    .restart local v7    # "prev":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .restart local v8    # "next":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_bd
    throw v3

    .line 310
    :cond_be
    throw v2
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 12
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 139
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v0, v1, :cond_d

    .line 140
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_2e

    .line 142
    :cond_d
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 143
    new-instance v7, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v4, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    move-object v1, v7

    .line 145
    .local v1, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 147
    iget-object v2, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 148
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 149
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 153
    .end local v1    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_2e
    monitor-exit p0

    return-void

    .line 137
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 12
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 120
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 121
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    if-ne v0, v1, :cond_d

    .line 122
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_2e

    .line 124
    :cond_d
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 125
    new-instance v7, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iget-object v3, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    move-object v1, v7

    .line 127
    .local v1, "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 129
    iget-object v2, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, v2, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 130
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 131
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 135
    .end local v1    # "newCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_2e
    monitor-exit p0

    return-void

    .line 119
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_2d

    .line 87
    :cond_d
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 89
    .local v0, "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v7, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    move-object v1, v7

    .line 91
    .local v1, "newHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 93
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 94
    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 95
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 99
    .end local v0    # "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v1    # "newHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_2d
    monitor-exit p0

    return-void

    .line 83
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->init(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    goto :goto_2d

    .line 105
    :cond_d
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->checkDuplicateName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 107
    .local v0, "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    new-instance v7, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;-><init>(Lorg/jboss/netty/channel/DefaultChannelPipeline;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    move-object v1, v7

    .line 109
    .local v1, "newTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    invoke-static {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 111
    iput-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 112
    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 113
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 117
    .end local v0    # "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local v1    # "newTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_2d
    monitor-exit p0

    return-void

    .line 101
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
    .registers 5
    .param p1, "channel"    # Lorg/jboss/netty/channel/Channel;
    .param p2, "sink"    # Lorg/jboss/netty/channel/ChannelSink;

    .line 66
    if-eqz p1, :cond_21

    .line 69
    if-eqz p2, :cond_19

    .line 72
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-nez v0, :cond_11

    .line 75
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    .line 76
    iput-object p2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 77
    return-void

    .line 73
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attached already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 635
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 429
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    .line 430
    .local v0, "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_a

    .line 431
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 433
    :cond_a
    :try_start_a
    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v1

    .line 428
    .end local v0    # "ctx":Lorg/jboss/netty/channel/ChannelHandlerContext;
    .end local p1    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    .line 421
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_e

    .line 422
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 424
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v1

    .line 419
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 619
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 620
    return-object v0

    .line 623
    :cond_4
    move-object v1, p1

    .line 624
    .local v1, "realCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_5
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleDownstream()Z

    move-result v2

    if-nez v2, :cond_10

    .line 625
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 626
    if-nez v1, :cond_5

    .line 627
    return-object v0

    .line 631
    :cond_10
    return-object v1
.end method

.method getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 603
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 604
    return-object v0

    .line 607
    :cond_4
    move-object v1, p1

    .line 608
    .local v1, "realCtx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_5
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->canHandleUpstream()Z

    move-result v2

    if-nez v2, :cond_10

    .line 609
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 610
    if-nez v1, :cond_5

    .line 611
    return-object v0

    .line 615
    :cond_10
    return-object v1
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation

    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    monitor-enter p0

    .line 467
    if-eqz p1, :cond_28

    .line 471
    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_30

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 472
    monitor-exit p0

    return-object v1

    .line 474
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 476
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_10
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    if-eqz v2, :cond_20

    .line 477
    monitor-exit p0

    return-object v0

    .line 480
    :cond_20
    :try_start_20
    iget-object v2, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_30

    move-object v0, v2

    .line 481
    if-nez v0, :cond_10

    .line 482
    nop

    .line 485
    monitor-exit p0

    return-object v1

    .line 468
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_28
    :try_start_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handlerType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 466
    .end local p1    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jboss/netty/channel/ChannelHandler;>;"
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 438
    if-eqz p1, :cond_d

    .line 441
    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelHandlerContext;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-object v0

    .line 439
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    .line 437
    .end local p1    # "name":Ljava/lang/String;
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .registers 5
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 445
    if-eqz p1, :cond_20

    .line 448
    :try_start_3
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 449
    monitor-exit p0

    return-object v1

    .line 451
    :cond_e
    :try_start_e
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 453
    .local v0, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_10
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_28

    if-ne v2, p1, :cond_18

    .line 454
    monitor-exit p0

    return-object v0

    .line 457
    :cond_18
    :try_start_18
    iget-object v2, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_28

    move-object v0, v2

    .line 458
    if-nez v0, :cond_10

    .line 459
    nop

    .line 462
    monitor-exit p0

    return-object v1

    .line 446
    .end local v0    # "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 444
    .end local p1    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3

    monitor-enter p0

    .line 404
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    .line 405
    .local v0, "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_8

    .line 406
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 408
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v1

    .line 403
    .end local v0    # "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLast()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3

    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    .line 413
    .local v0, "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_8

    .line 414
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 416
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v1

    .line 411
    .end local v0    # "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 491
    return-object v0

    .line 494
    :cond_e
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 496
    .local v1, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_10
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 498
    if-nez v1, :cond_10

    .line 499
    nop

    .line 502
    return-object v0
.end method

.method public getSink()Lorg/jboss/netty/channel/ChannelSink;
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    .line 59
    .local v0, "sink":Lorg/jboss/netty/channel/ChannelSink;
    if-nez v0, :cond_7

    .line 60
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->discardingSink:Lorg/jboss/netty/channel/ChannelSink;

    return-object v1

    .line 62
    :cond_7
    return-object v0
.end method

.method public isAttached()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 639
    instance-of v0, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v0, :cond_28

    .line 640
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 641
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception was thrown by a user handler while handling an exception event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    :cond_27
    return-void

    .line 650
    :cond_28
    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    if-eqz v0, :cond_30

    .line 651
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    goto :goto_35

    .line 653
    :cond_30
    new-instance v0, Lorg/jboss/netty/channel/ChannelPipelineException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/Throwable;)V

    .line 657
    .local v0, "pe":Lorg/jboss/netty/channel/ChannelPipelineException;
    :goto_35
    :try_start_35
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sink:Lorg/jboss/netty/channel/ChannelSink;

    invoke-interface {v1, p0, p1, v0}, Lorg/jboss/netty/channel/ChannelSink;->exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 662
    goto :goto_4b

    .line 658
    :catch_3b
    move-exception v1

    .line 659
    .local v1, "e1":Ljava/lang/Exception;
    sget-object v2, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 660
    sget-object v2, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "An exception was thrown by an exception handler."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_4b
    :goto_4b
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .end local p1    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 160
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .end local p1    # "name":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 3
    .param p1, "handler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 156
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->remove(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 157
    monitor-exit p0

    return-void

    .line 155
    .end local p1    # "handler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 195
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 196
    .local v0, "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_39

    .line 200
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 202
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 203
    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 204
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_30

    .line 206
    :cond_1f
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 207
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 208
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :goto_30
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callAfterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 213
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_45

    monitor-exit p0

    return-object v1

    .line 197
    :cond_39
    :try_start_39
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 192
    .end local v0    # "oldHead":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_3f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_45

    .line 190
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLast()Lorg/jboss/netty/channel/ChannelHandler;
    .registers 4

    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 221
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 222
    .local v0, "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-eqz v0, :cond_39

    .line 226
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 228
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 229
    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 230
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_30

    .line 232
    :cond_1f
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v2, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 233
    iget-object v1, v0, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->prev:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 234
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :goto_30
    invoke-static {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->callBeforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    .line 239
    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v1
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_45

    monitor-exit p0

    return-object v1

    .line 223
    :cond_39
    :try_start_39
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 218
    .end local v0    # "oldTail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_3f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_45

    .line 216
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 5
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation

    .local p1, "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 253
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/Class;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .end local p1    # "oldHandlerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "newHandler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .registers 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 247
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Ljava/lang/String;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .end local p1    # "oldName":Ljava/lang/String;
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "newHandler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .registers 5
    .param p1, "oldHandler"    # Lorg/jboss/netty/channel/ChannelHandler;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newHandler"    # Lorg/jboss/netty/channel/ChannelHandler;

    monitor-enter p0

    .line 243
    :try_start_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getContextOrDie(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->replace(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 244
    monitor-exit p0

    return-void

    .line 242
    .end local p1    # "oldHandler":Lorg/jboss/netty/channel/ChannelHandler;
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "newHandler":Lorg/jboss/netty/channel/ChannelHandler;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 570
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->tail:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualDownstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 571
    .local v0, "tail":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_15

    .line 573
    :try_start_8
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    .line 574
    return-void

    .line 575
    :catch_10
    move-exception v1

    .line 576
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 577
    return-void

    .line 581
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_15
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 582
    return-void
.end method

.method sendDownstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 5
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 585
    instance-of v0, p2, Lorg/jboss/netty/channel/UpstreamMessageEvent;

    if-nez v0, :cond_1a

    .line 590
    :try_start_4
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelDownstreamHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_e

    .line 599
    goto :goto_19

    .line 591
    :catch_e
    move-exception v0

    .line 597
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    .line 598
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 600
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_19
    return-void

    .line 586
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot send an upstream event to downstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 548
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->getActualUpstreamContext(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;)Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    move-result-object v0

    .line 549
    .local v0, "head":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    if-nez v0, :cond_27

    .line 550
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 551
    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelPipeline;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pipeline contains no upstream handlers; discarding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 555
    :cond_26
    return-void

    .line 558
    :cond_27
    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 559
    return-void
.end method

.method sendUpstream(Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 4
    .param p1, "ctx"    # Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 563
    :try_start_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/channel/ChannelUpstreamHandler;->handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 566
    goto :goto_e

    .line 564
    :catch_a
    move-exception v0

    .line 565
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/channel/DefaultChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    .line 567
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_e
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 507
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;>;"
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->name2ctx:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 508
    return-object v0

    .line 511
    :cond_e
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 513
    .local v1, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :cond_10
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 515
    if-nez v1, :cond_10

    .line 516
    nop

    .line 519
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelPipeline;->head:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 532
    .local v1, "ctx":Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;
    :goto_17
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v1}, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->getHandler()Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, v1, Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;->next:Lorg/jboss/netty/channel/DefaultChannelPipeline$DefaultChannelHandlerContext;

    .line 538
    if-nez v1, :cond_4b

    .line 539
    nop

    .line 543
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 541
    :cond_4b
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method
