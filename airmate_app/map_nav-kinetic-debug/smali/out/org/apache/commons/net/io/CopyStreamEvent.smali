.class public Lorg/apache/commons/net/io/CopyStreamEvent;
.super Ljava/util/EventObject;
.source "CopyStreamEvent.java"


# static fields
.field public static final UNKNOWN_STREAM_SIZE:J = -0x1L


# instance fields
.field private bytesTransferred:I

.field private streamSize:J

.field private totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JIJ)V
    .registers 7
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "totalBytesTransferred"    # J
    .param p4, "bytesTransferred"    # I
    .param p5, "streamSize"    # J

    .line 60
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 61
    iput p4, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    .line 62
    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    .line 63
    iput-wide p5, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    .line 64
    return-void
.end method


# virtual methods
.method public getBytesTransferred()I
    .registers 2

    .line 74
    iget v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    return v0
.end method

.method public getStreamSize()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    return-wide v0
.end method

.method public getTotalBytesTransferred()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    return-wide v0
.end method
