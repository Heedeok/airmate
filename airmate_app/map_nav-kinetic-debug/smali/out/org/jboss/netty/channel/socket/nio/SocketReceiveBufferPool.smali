.class final Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;
.super Ljava/lang/Object;
.source "SocketReceiveBufferPool.java"


# static fields
.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private final pool:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 30
    return-void
.end method

.method private static normalizeCapacity(I)I
    .registers 4
    .param p0, "capacity"    # I

    .line 89
    ushr-int/lit8 v0, p0, 0xa

    .line 90
    .local v0, "q":I
    and-int/lit16 v1, p0, 0x3ff

    .line 91
    .local v1, "r":I
    if-eqz v1, :cond_8

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_8
    shl-int/lit8 v2, v0, 0xa

    return v2
.end method


# virtual methods
.method acquire(I)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "size"    # I

    .line 33
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 34
    .local v0, "pool":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_28

    .line 35
    aget-object v2, v0, v1

    .line 36
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    if-nez v2, :cond_c

    .line 37
    goto :goto_1f

    .line 40
    :cond_c
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 41
    .local v3, "buf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    if-nez v3, :cond_18

    .line 42
    aput-object v4, v0, v1

    .line 43
    goto :goto_1f

    .line 46
    :cond_18
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, p1, :cond_22

    .line 47
    nop

    .line 34
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 50
    .restart local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_22
    aput-object v4, v0, v1

    .line 52
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 53
    return-object v3

    .line 56
    .end local v1    # "i":I
    .end local v2    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_28
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->normalizeCapacity(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    .local v1, "buf":Ljava/nio/ByteBuffer;
    return-object v1
.end method

.method release(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferPool;->pool:[Ljava/lang/ref/SoftReference;

    .line 62
    .local v0, "pool":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1e

    .line 63
    aget-object v3, v0, v2

    .line 64
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    goto :goto_16

    .line 62
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 65
    .restart local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_16
    :goto_16
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, v2

    .line 66
    return-void

    .line 71
    .end local v2    # "i":I
    .end local v3    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_1e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 72
    .local v2, "capacity":I
    nop

    .local v1, "i":I
    :goto_23
    if-ge v1, v3, :cond_44

    .line 73
    aget-object v4, v0, v1

    .line 74
    .local v4, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 75
    .local v5, "pooled":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_33

    .line 76
    const/4 v6, 0x0

    aput-object v6, v0, v1

    .line 77
    goto :goto_41

    .line 80
    :cond_33
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v2, :cond_41

    .line 81
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v1

    .line 82
    return-void

    .line 72
    .end local v4    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    .end local v5    # "pooled":Ljava/nio/ByteBuffer;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 85
    .end local v1    # "i":I
    :cond_44
    return-void
.end method
