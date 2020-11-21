.class public Lorg/jboss/netty/handler/ssl/SslBufferPool;
.super Ljava/lang/Object;
.source "SslBufferPool.java"


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1246400

.field private static final MAX_PACKET_SIZE:I = 0x4919


# instance fields
.field private index:I

.field private final maxBufferCount:I

.field private final pool:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    const v0, 0x1246400

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxPoolSize"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-lez p1, :cond_14

    .line 64
    div-int/lit16 v0, p1, 0x4919

    .line 65
    .local v0, "maxBufferCount":I
    rem-int/lit16 v1, p1, 0x4919

    if-eqz v1, :cond_d

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_d
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    .line 70
    iput v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    .line 71
    return-void

    .line 61
    .end local v0    # "maxBufferCount":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method declared-synchronized acquire()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 106
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    if-nez v0, :cond_d

    .line 107
    const/16 v0, 0x4919

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 109
    :cond_d
    :try_start_d
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acquireBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 97
    invoke-virtual {p0}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPoolSize()I
    .registers 2

    .line 78
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    mul-int/lit16 v0, v0, 0x4919

    return v0
.end method

.method public declared-synchronized getUnacquiredPoolSize()I
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    mul-int/lit16 v0, v0, 0x4919

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_1
    iget v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->maxBufferCount:I

    if-ge v0, v1, :cond_11

    .line 132
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->pool:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jboss/netty/handler/ssl/SslBufferPool;->index:I

    aput-object p1, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 134
    :cond_11
    monitor-exit p0

    return-void

    .line 130
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/ssl/SslBufferPool;->release(Ljava/nio/ByteBuffer;)V

    .line 121
    return-void
.end method
