.class final Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
.super Ljava/lang/Object;
.source "NioProviderMetadata.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectorLoop"
.end annotation


# instance fields
.field volatile done:Z

.field volatile selecting:Z

.field final selector:Ljava/nio/channels/Selector;


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    .line 410
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 413
    :goto_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    if-nez v0, :cond_4a

    .line 414
    monitor-enter p0

    .line 416
    :try_start_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_47

    .line 418
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_36

    .line 420
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_32

    .line 422
    :try_start_11
    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    .line 423
    nop

    .line 425
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    .line 426
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 427
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 428
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    goto :goto_1e

    .line 429
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_46

    .line 422
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_32
    move-exception v1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_36} :catch_36

    .line 430
    :catch_36
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 432
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to wait for a temporary selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    .end local v0    # "e":Ljava/io/IOException;
    :cond_46
    :goto_46
    goto :goto_0

    .line 416
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 436
    :cond_4a
    return-void
.end method
