.class Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;
.super Ljava/lang/Object;
.source "LimitingByteInput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    }
.end annotation


# static fields
.field private static final EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;


# instance fields
.field private final input:Lorg/jboss/marshalling/ByteInput;

.field private final limit:J

.field private read:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/marshalling/ByteInput;J)V
    .registers 7
    .param p1, "input"    # Lorg/jboss/marshalling/ByteInput;
    .param p2, "limit"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_e

    .line 41
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    .line 42
    iput-wide p2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    .line 43
    return-void

    .line 39
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The limit MUST be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readable(I)I
    .registers 8
    .param p1, "length"    # I

    .line 93
    int-to-long v0, p1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->available()I

    move-result v0

    .line 51
    .local v0, "available":I
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v1

    .line 52
    .local v1, "readable":I
    return v1
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 57
    .local v0, "readable":I
    if-lez v0, :cond_15

    .line 58
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1}, Lorg/jboss/marshalling/ByteInput;->read()I

    move-result v1

    .line 59
    .local v1, "b":I
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 60
    return v1

    .line 62
    .end local v1    # "b":I
    :cond_15
    sget-object v1, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 72
    .local v0, "readable":I
    if-lez v0, :cond_13

    .line 73
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/marshalling/ByteInput;->read([BII)I

    move-result v1

    .line 74
    .local v1, "i":I
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 75
    return v1

    .line 77
    .end local v1    # "i":I
    :cond_13
    sget-object v1, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method

.method public skip(J)J
    .registers 8
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    .line 83
    .local v0, "readable":I
    if-lez v0, :cond_14

    .line 84
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/jboss/marshalling/ByteInput;->skip(J)J

    move-result-wide v1

    .line 85
    .local v1, "i":J
    iget-wide v3, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    .line 86
    return-wide v1

    .line 88
    .end local v1    # "i":J
    :cond_14
    sget-object v1, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v1
.end method
