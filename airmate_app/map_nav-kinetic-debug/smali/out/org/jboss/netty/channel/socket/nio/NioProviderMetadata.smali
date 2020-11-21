.class final Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;
.super Ljava/lang/Object;
.source "NioProviderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    }
.end annotation


# static fields
.field static final CONSTRAINT_LEVEL:I

.field private static final CONSTRAINT_LEVEL_PROPERTY:Ljava/lang/String; = "org.jboss.netty.channel.socket.nio.constraintLevel"

.field private static final OLD_CONSTRAINT_LEVEL_PROPERTY:Ljava/lang/String; = "java.nio.channels.spi.constraintLevel"

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 41
    const-class v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 58
    const/4 v0, -0x1

    .line 61
    .local v0, "constraintLevel":I
    const-string v1, "org.jboss.netty.channel.socket.nio.constraintLevel"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    .line 62
    const/4 v1, 0x2

    if-ltz v0, :cond_15

    if-le v0, v1, :cond_29

    .line 64
    :cond_15
    const-string v3, "java.nio.channels.spi.constraintLevel"

    invoke-static {v3, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    .line 65
    if-ltz v0, :cond_28

    if-le v0, v1, :cond_20

    goto :goto_28

    .line 68
    :cond_20
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "System property \'java.nio.channels.spi.constraintLevel\' has been deprecated.  Use \'org.jboss.netty.channel.socket.nio.constraintLevel\' instead."

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_29

    .line 66
    :cond_28
    :goto_28
    const/4 v0, -0x1

    .line 76
    :cond_29
    :goto_29
    if-ltz v0, :cond_41

    .line 77
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting the NIO constraint level to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 81
    :cond_41
    if-gez v0, :cond_9e

    .line 82
    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->detectConstraintLevelFromSystemProperties()I

    move-result v0

    .line 84
    if-gez v0, :cond_5a

    .line 85
    const/4 v0, 0x2

    .line 86
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 87
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Couldn\'t determine the NIO constraint level from the system properties; using the safest level (2)"

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_9e

    .line 91
    :cond_5a
    if-eqz v0, :cond_80

    .line 92
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 93
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using the autodetected NIO constraint level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (Use better NIO provider for better performance)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_9e

    .line 99
    :cond_80
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 100
    sget-object v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using the autodetected NIO constraint level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 108
    :cond_9e
    :goto_9e
    sput v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    .line 110
    sget v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    if-ltz v2, :cond_a9

    sget v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    if-gt v2, v1, :cond_a9

    .line 115
    .end local v0    # "constraintLevel":I
    return-void

    .line 111
    .restart local v0    # "constraintLevel":I
    :cond_a9
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected NIO constraint level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", please report this error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method private static autodetect()I
    .registers 22

    .line 236
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 241
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    const/4 v2, 0x0

    .line 242
    .local v2, "ch":Ljava/nio/channels/ServerSocketChannel;
    const/4 v0, 0x0

    move-object v3, v0

    .line 246
    .local v3, "loop":Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;
    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_b
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_f} :catch_291
    .catchall {:try_start_b .. :try_end_f} :catchall_23b

    move-object v2, v0

    .line 250
    :try_start_10
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v9}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 251
    invoke-virtual {v2, v7}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_1dc
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23b

    .line 257
    nop

    .line 261
    :try_start_20
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;-><init>()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_17d
    .catchall {:try_start_20 .. :try_end_25} :catchall_23b

    move-object v3, v0

    .line 267
    nop

    .line 271
    :try_start_27
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v0, v7}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2c} :catch_11e
    .catchall {:try_start_27 .. :try_end_2c} :catchall_23b

    .line 277
    nop

    .line 279
    :try_start_2d
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v0}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    move-object v9, v0

    .line 282
    .local v9, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_37} :catch_291
    .catchall {:try_start_2d .. :try_end_37} :catchall_23b

    .line 285
    const/4 v10, 0x1

    .line 286
    .local v10, "success":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    const-wide/32 v12, 0x1dcd6500

    const-wide/16 v14, 0x32

    const/16 v4, 0xa

    if-ge v11, v4, :cond_80

    .line 291
    :cond_43
    :goto_43
    :try_start_43
    iget-boolean v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-nez v0, :cond_4b

    .line 292
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4a} :catch_7d
    .catchall {:try_start_43 .. :try_end_4a} :catchall_7a

    goto :goto_43

    .line 297
    :cond_4b
    :try_start_4b
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_7d
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7a

    .line 300
    goto :goto_50

    .line 298
    :catch_4f
    move-exception v0

    .line 301
    :goto_50
    :try_start_50
    iget-boolean v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-eqz v0, :cond_43

    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 304
    .local v16, "startTime":J
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v9, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 305
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {v9, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const/4 v0, 0x0

    sub-long v18, v18, v16

    cmp-long v0, v18, v12

    if-ltz v0, :cond_77

    .line 308
    const/4 v10, 0x0

    .line 309
    goto :goto_80

    .line 286
    :cond_77
    add-int/lit8 v0, v11, 0x1

    goto :goto_39

    .line 357
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local v11    # "i":I
    .end local v16    # "startTime":J
    :catchall_7a
    move-exception v0

    goto/16 :goto_23d

    .line 354
    :catch_7d
    move-exception v0

    goto/16 :goto_293

    .line 313
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    :cond_80
    :goto_80
    if-eqz v10, :cond_84

    .line 314
    const/4 v0, 0x0

    goto :goto_cf

    .line 317
    :cond_84
    const/4 v10, 0x1

    .line 318
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_86
    move v11, v0

    .end local v0    # "i":I
    .restart local v11    # "i":I
    if-ge v11, v4, :cond_ca

    .line 323
    :cond_89
    :goto_89
    iget-boolean v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-nez v0, :cond_91

    .line 324
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_90} :catch_7d
    .catchall {:try_start_50 .. :try_end_90} :catchall_7a

    goto :goto_89

    .line 329
    :cond_91
    :try_start_91
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_95
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_7d
    .catchall {:try_start_91 .. :try_end_94} :catchall_7a

    .line 332
    goto :goto_96

    .line 330
    :catch_95
    move-exception v0

    .line 333
    :goto_96
    :try_start_96
    iget-boolean v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selecting:Z

    if-eqz v0, :cond_89

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 336
    .restart local v16    # "startTime":J
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    move/from16 v18, v0

    .line 337
    .local v18, "interestOps":I
    monitor-enter v3
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_a5} :catch_7d
    .catchall {:try_start_96 .. :try_end_a5} :catchall_7a

    .line 338
    :try_start_a5
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 339
    or-int/lit8 v0, v18, 0x10

    invoke-virtual {v9, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 340
    and-int/lit8 v0, v18, -0x11

    invoke-virtual {v9, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 341
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_c7

    .line 343
    :try_start_b5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b9} :catch_7d
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_7a

    const/4 v0, 0x0

    sub-long v19, v19, v16

    cmp-long v0, v19, v12

    if-ltz v0, :cond_c4

    .line 344
    const/4 v0, 0x0

    .line 345
    .end local v10    # "success":Z
    .local v0, "success":Z
    nop

    .line 348
    move v10, v0

    goto :goto_ca

    .line 318
    .end local v0    # "success":Z
    .restart local v10    # "success":Z
    :cond_c4
    add-int/lit8 v0, v11, 0x1

    goto :goto_86

    .line 341
    :catchall_c7
    move-exception v0

    :try_start_c8
    monitor-exit v3
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v0
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_ca} :catch_7d
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_7a

    .line 348
    .end local v11    # "i":I
    .end local v16    # "startTime":J
    .end local v18    # "interestOps":I
    :cond_ca
    :goto_ca
    if-eqz v10, :cond_ce

    .line 349
    const/4 v0, 0x1

    goto :goto_cf

    .line 351
    :cond_ce
    const/4 v0, 0x2

    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .local v0, "constraintLevel":I
    :goto_cf
    move v4, v0

    .line 354
    .end local v0    # "constraintLevel":I
    .local v4, "constraintLevel":I
    nop

    .line 396
    move v7, v10

    .end local v10    # "success":Z
    .local v7, "success":Z
    if-eqz v2, :cond_ea

    .line 359
    :try_start_d4
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 364
    goto :goto_ea

    .line 360
    :catch_d8
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 361
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v9, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v9}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 362
    sget-object v9, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v10, "Failed to close a temporary socket."

    invoke-interface {v9, v10, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_ea
    :goto_ea
    if-eqz v3, :cond_11b

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_ee
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_f1
    .catch Ljava/lang/NullPointerException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 373
    goto :goto_f3

    .line 371
    :catch_f2
    move-exception v0

    .line 377
    :goto_f3
    :try_start_f3
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f8} :catch_104

    .line 379
    :try_start_f8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_f8 .. :try_end_fe} :catch_102
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_fe} :catch_104

    if-eqz v0, :cond_103

    .line 380
    nop

    .line 388
    goto :goto_105

    .line 382
    :catch_102
    move-exception v0

    .line 384
    :cond_103
    goto :goto_f3

    .line 386
    :catch_104
    move-exception v0

    .line 391
    :goto_105
    :try_start_105
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10a} :catch_10b

    .line 396
    goto :goto_11b

    .line 392
    :catch_10b
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11b
    :goto_11b
    nop

    .line 398
    nop

    .line 400
    return v4

    .line 272
    .end local v4    # "constraintLevel":I
    .end local v7    # "success":Z
    :catch_11e
    move-exception v0

    move-object v4, v0

    .line 273
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_120
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 274
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v9, "Failed to register a temporary selector."

    invoke-interface {v0, v9, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_12f} :catch_291
    .catchall {:try_start_120 .. :try_end_12f} :catchall_23b

    .line 276
    :cond_12f
    nop

    .line 396
    move v9, v7

    .restart local v7    # "success":Z
    .local v9, "constraintLevel":I
    if-eqz v2, :cond_149

    .line 359
    :try_start_133
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_136} :catch_137

    .line 364
    goto :goto_149

    .line 360
    :catch_137
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 361
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_149

    .line 362
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "Failed to close a temporary socket."

    invoke-interface {v10, v11, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_149
    :goto_149
    if-eqz v3, :cond_17a

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_14d
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_150
    .catch Ljava/lang/NullPointerException; {:try_start_14d .. :try_end_150} :catch_151

    .line 373
    goto :goto_152

    .line 371
    :catch_151
    move-exception v0

    .line 377
    :goto_152
    :try_start_152
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_157} :catch_163

    .line 379
    :try_start_157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_157 .. :try_end_15d} :catch_161
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_15d} :catch_163

    if-eqz v0, :cond_162

    .line 380
    nop

    .line 388
    goto :goto_164

    .line 382
    :catch_161
    move-exception v0

    .line 384
    :cond_162
    goto :goto_152

    .line 386
    :catch_163
    move-exception v0

    .line 391
    :goto_164
    :try_start_164
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_169
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_169} :catch_16a

    .line 396
    goto :goto_17a

    .line 392
    :catch_16a
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_17a
    :goto_17a
    nop

    .line 276
    .end local v7    # "success":Z
    .end local v9    # "constraintLevel":I
    const/4 v5, -0x1

    return v5

    .line 262
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_17d
    move-exception v0

    move-object v4, v0

    .line 263
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_17f
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 264
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v9, "Failed to open a temporary selector."

    invoke-interface {v0, v9, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_17f .. :try_end_18e} :catch_291
    .catchall {:try_start_17f .. :try_end_18e} :catchall_23b

    .line 266
    :cond_18e
    nop

    .line 396
    move v9, v7

    .restart local v7    # "success":Z
    .restart local v9    # "constraintLevel":I
    if-eqz v2, :cond_1a8

    .line 359
    :try_start_192
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_195
    .catch Ljava/lang/Throwable; {:try_start_192 .. :try_end_195} :catch_196

    .line 364
    goto :goto_1a8

    .line 360
    :catch_196
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 361
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a8

    .line 362
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "Failed to close a temporary socket."

    invoke-interface {v10, v11, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1a8
    :goto_1a8
    if-eqz v3, :cond_1d9

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_1ac
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1af
    .catch Ljava/lang/NullPointerException; {:try_start_1ac .. :try_end_1af} :catch_1b0

    .line 373
    goto :goto_1b1

    .line 371
    :catch_1b0
    move-exception v0

    .line 377
    :goto_1b1
    :try_start_1b1
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1b6} :catch_1c2

    .line 379
    :try_start_1b6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_1bc
    .catch Ljava/lang/InterruptedException; {:try_start_1b6 .. :try_end_1bc} :catch_1c0
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1bc} :catch_1c2

    if-eqz v0, :cond_1c1

    .line 380
    nop

    .line 388
    goto :goto_1c3

    .line 382
    :catch_1c0
    move-exception v0

    .line 384
    :cond_1c1
    goto :goto_1b1

    .line 386
    :catch_1c2
    move-exception v0

    .line 391
    :goto_1c3
    :try_start_1c3
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_1c8
    .catch Ljava/lang/Throwable; {:try_start_1c3 .. :try_end_1c8} :catch_1c9

    .line 396
    goto :goto_1d9

    .line 392
    :catch_1c9
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d9

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1d9
    :goto_1d9
    nop

    .line 266
    .end local v7    # "success":Z
    .end local v9    # "constraintLevel":I
    const/4 v5, -0x1

    return v5

    .line 252
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_1dc
    move-exception v0

    move-object v4, v0

    .line 253
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_1de
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 254
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v9, "Failed to configure a temporary socket."

    invoke-interface {v0, v9, v4}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1ed
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_1ed} :catch_291
    .catchall {:try_start_1de .. :try_end_1ed} :catchall_23b

    .line 256
    :cond_1ed
    nop

    .line 400
    move v9, v7

    .restart local v7    # "success":Z
    .restart local v9    # "constraintLevel":I
    if-eqz v2, :cond_207

    .line 359
    :try_start_1f1
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_1f1 .. :try_end_1f4} :catch_1f5

    .line 364
    goto :goto_207

    .line 360
    :catch_1f5
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 361
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_207

    .line 362
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "Failed to close a temporary socket."

    invoke-interface {v10, v11, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_207
    :goto_207
    if-eqz v3, :cond_238

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_20b
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_20e
    .catch Ljava/lang/NullPointerException; {:try_start_20b .. :try_end_20e} :catch_20f

    .line 373
    goto :goto_210

    .line 371
    :catch_20f
    move-exception v0

    .line 377
    :goto_210
    :try_start_210
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_215
    .catch Ljava/lang/Throwable; {:try_start_210 .. :try_end_215} :catch_221

    .line 379
    :try_start_215
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_21b
    .catch Ljava/lang/InterruptedException; {:try_start_215 .. :try_end_21b} :catch_21f
    .catch Ljava/lang/Throwable; {:try_start_215 .. :try_end_21b} :catch_221

    if-eqz v0, :cond_220

    .line 380
    nop

    .line 388
    goto :goto_222

    .line 382
    :catch_21f
    move-exception v0

    .line 384
    :cond_220
    goto :goto_210

    .line 386
    :catch_221
    move-exception v0

    .line 391
    :goto_222
    :try_start_222
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_227} :catch_228

    .line 396
    goto :goto_238

    .line 392
    :catch_228
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_238

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_238
    :goto_238
    nop

    .line 256
    .end local v7    # "success":Z
    .end local v9    # "constraintLevel":I
    const/4 v5, -0x1

    return v5

    .line 357
    .end local v4    # "e":Ljava/lang/Throwable;
    :catchall_23b
    move-exception v0

    const/4 v10, 0x0

    .end local v2    # "ch":Ljava/nio/channels/ServerSocketChannel;
    .local v0, "ch":Ljava/nio/channels/ServerSocketChannel;
    .restart local v10    # "success":Z
    :goto_23d
    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    .line 396
    move v4, v7

    .local v4, "constraintLevel":I
    move v7, v10

    .end local v10    # "success":Z
    .restart local v7    # "success":Z
    move-object v9, v0

    .end local v0    # "ch":Ljava/nio/channels/ServerSocketChannel;
    .local v9, "ch":Ljava/nio/channels/ServerSocketChannel;
    if-eqz v9, :cond_25d

    .line 359
    :try_start_247
    invoke-virtual {v9}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_24a
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_24a} :catch_24b

    .line 364
    goto :goto_25d

    .line 360
    :catch_24b
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 361
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_25d

    .line 362
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "Failed to close a temporary socket."

    invoke-interface {v10, v11, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_25d
    :goto_25d
    if-eqz v3, :cond_28f

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_261
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_264
    .catch Ljava/lang/NullPointerException; {:try_start_261 .. :try_end_264} :catch_265

    .line 373
    goto :goto_266

    .line 371
    :catch_265
    move-exception v0

    .line 377
    :goto_266
    :try_start_266
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_26b
    .catch Ljava/lang/Throwable; {:try_start_266 .. :try_end_26b} :catch_278

    .line 379
    :try_start_26b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_271
    .catch Ljava/lang/InterruptedException; {:try_start_26b .. :try_end_271} :catch_276
    .catch Ljava/lang/Throwable; {:try_start_26b .. :try_end_271} :catch_278

    if-nez v0, :cond_274

    goto :goto_277

    .line 380
    :cond_274
    nop

    .line 388
    goto :goto_279

    .line 382
    :catch_276
    move-exception v0

    .line 384
    :goto_277
    goto :goto_266

    .line 386
    :catch_278
    move-exception v0

    .line 391
    :goto_279
    :try_start_279
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_27e
    .catch Ljava/lang/Throwable; {:try_start_279 .. :try_end_27e} :catch_27f

    .line 396
    goto :goto_28f

    .line 392
    :catch_27f
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_28f

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_28f
    :goto_28f
    nop

    .line 357
    throw v2

    .line 354
    .end local v4    # "constraintLevel":I
    .end local v7    # "success":Z
    .end local v9    # "ch":Ljava/nio/channels/ServerSocketChannel;
    .restart local v2    # "ch":Ljava/nio/channels/ServerSocketChannel;
    :catch_291
    move-exception v0

    const/4 v10, 0x0

    .restart local v10    # "success":Z
    :goto_293
    move-object v4, v0

    .line 355
    .local v4, "e":Ljava/lang/Throwable;
    nop

    .line 396
    nop

    .local v7, "constraintLevel":I
    move v9, v10

    .end local v10    # "success":Z
    .local v9, "success":Z
    if-eqz v2, :cond_2af

    .line 359
    :try_start_299
    invoke-virtual {v2}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_29c
    .catch Ljava/lang/Throwable; {:try_start_299 .. :try_end_29c} :catch_29d

    .line 364
    goto :goto_2af

    .line 360
    :catch_29d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 361
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v10}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_2af

    .line 362
    sget-object v10, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v11, "Failed to close a temporary socket."

    invoke-interface {v10, v11, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2af
    :goto_2af
    if-eqz v3, :cond_2e0

    .line 368
    iput-boolean v8, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->done:Z

    .line 370
    :try_start_2b3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2b6
    .catch Ljava/lang/NullPointerException; {:try_start_2b3 .. :try_end_2b6} :catch_2b7

    .line 373
    goto :goto_2b8

    .line 371
    :catch_2b7
    move-exception v0

    .line 377
    :goto_2b8
    :try_start_2b8
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_2bd
    .catch Ljava/lang/Throwable; {:try_start_2b8 .. :try_end_2bd} :catch_2c9

    .line 379
    :try_start_2bd
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v6, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2c3
    .catch Ljava/lang/InterruptedException; {:try_start_2bd .. :try_end_2c3} :catch_2c7
    .catch Ljava/lang/Throwable; {:try_start_2bd .. :try_end_2c3} :catch_2c9

    if-eqz v0, :cond_2c8

    .line 380
    nop

    .line 388
    goto :goto_2ca

    .line 382
    :catch_2c7
    move-exception v0

    .line 384
    :cond_2c8
    goto :goto_2b8

    .line 386
    :catch_2c9
    move-exception v0

    .line 391
    :goto_2ca
    :try_start_2ca
    iget-object v0, v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2cf
    .catch Ljava/lang/Throwable; {:try_start_2ca .. :try_end_2cf} :catch_2d0

    .line 396
    goto :goto_2e0

    .line 392
    :catch_2d0
    move-exception v0

    .line 393
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v5}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 394
    sget-object v5, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v6, "Failed to close a temporary selector."

    invoke-interface {v5, v6, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2e0
    :goto_2e0
    nop

    .line 355
    const/4 v5, -0x1

    return v5
.end method

.method private static detectConstraintLevelFromSystemProperties()I
    .registers 15

    .line 118
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "version":Ljava/lang/String;
    const-string v1, "java.vm.info"

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "vminfo":Ljava/lang/String;
    const-string v2, "os.name"

    invoke-static {v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "os":Ljava/lang/String;
    const-string v3, "java.vm.vendor"

    invoke-static {v3}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "vendor":Ljava/lang/String;
    :try_start_1a
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    .line 128
    .local v4, "provider":Ljava/lang/String;
    goto :goto_29

    .line 125
    .end local v4    # "provider":Ljava/lang/String;
    :catch_27
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 130
    .local v4, "provider":Ljava/lang/String;
    :goto_29
    const/4 v5, -0x1

    if-eqz v0, :cond_16d

    if-eqz v2, :cond_16d

    if-eqz v3, :cond_16d

    if-nez v4, :cond_34

    goto/16 :goto_16d

    .line 134
    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string v6, "sun"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_88

    .line 146
    const-string v6, "linux"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5e

    .line 147
    const-string v6, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    const-string v6, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 149
    :cond_5d
    return v7

    .line 153
    :cond_5e
    const-string v6, "windows"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6f

    .line 154
    const-string v6, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 155
    return v7

    .line 159
    :cond_6f
    const-string v6, "sun"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_7f

    const-string v6, "solaris"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 160
    :cond_7f
    const-string v6, "sun.nio.ch.DevPollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 161
    return v7

    .line 165
    :cond_88
    const-string v6, "apple"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_a9

    .line 167
    const-string v6, "mac"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    const-string v6, "os"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 168
    const-string v6, "sun.nio.ch.KQueueSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 169
    return v7

    .line 173
    :cond_a9
    const-string v6, "ibm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-ltz v6, :cond_120

    .line 175
    const-string v6, "linux"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_c2

    const-string v6, "aix"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 176
    :cond_c2
    const-string v6, "1.5"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_117

    const-string v6, "^1\\.5\\D.*$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d3

    goto :goto_117

    .line 180
    :cond_d3
    const-string v6, "1.6"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    const-string v6, "^1\\.6\\D.*$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 184
    :cond_e3
    const-string v6, "(?:^|[^0-9])([2-9][0-9]{3}(?:0[1-9]|1[0-2])(?:0[1-9]|[12][0-9]|3[01]))(?:$|[^0-9])"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 191
    .local v6, "datePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 192
    .local v9, "dateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_116

    .line 193
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 194
    .local v10, "dateValue":J
    const-wide/32 v12, 0x13269d1

    cmp-long v14, v10, v12

    if-gez v14, :cond_104

    .line 196
    const/4 v5, 0x2

    return v5

    .line 199
    :cond_104
    const-string v12, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10d

    .line 200
    return v7

    .line 201
    :cond_10d
    const-string v7, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_116

    .line 202
    return v8

    .line 206
    .end local v6    # "datePattern":Ljava/util/regex/Pattern;
    .end local v9    # "dateMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "dateValue":J
    :cond_116
    goto :goto_16c

    .line 177
    :cond_117
    :goto_117
    const-string v6, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 178
    return v8

    .line 209
    :cond_120
    const-string v6, "bea"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_142

    const-string v6, "oracle"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_131

    goto :goto_142

    .line 224
    :cond_131
    const-string v6, "apache"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 225
    const-string v6, "org.apache.harmony.nio.internal.SelectorProviderImpl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 226
    return v8

    .line 211
    :cond_142
    :goto_142
    const-string v6, "linux"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_15b

    .line 212
    const-string v6, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15a

    const-string v6, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 214
    :cond_15a
    return v7

    .line 218
    :cond_15b
    const-string v6, "windows"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_16c

    .line 219
    const-string v6, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 220
    return v7

    .line 231
    :cond_16c
    :goto_16c
    return v5

    .line 131
    :cond_16d
    :goto_16d
    return v5
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 441
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_c

    .line 443
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 444
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hard-coded Constraint Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-detected Constraint Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->autodetect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    return-void
.end method
