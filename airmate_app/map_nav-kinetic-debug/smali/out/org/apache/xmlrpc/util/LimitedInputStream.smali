.class public Lorg/apache/xmlrpc/util/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field private available:J

.field private in:Ljava/io/InputStream;

.field private markedAvailable:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "pIn"    # Ljava/io/InputStream;
    .param p2, "pAvailable"    # I

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    .line 45
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    .line 46
    return-void
.end method


# virtual methods
.method public mark(I)V
    .registers 4
    .param p1, "readlimit"    # I

    .line 82
    iget-object v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 83
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    iput-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->markedAvailable:J

    .line 84
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    .line 50
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    .line 51
    iget-object v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 53
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_25

    .line 58
    int-to-long v0, p3

    iget-wide v5, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    cmp-long v7, v0, v5

    if-lez v7, :cond_13

    .line 60
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    long-to-int p3, v0

    .line 62
    :cond_13
    iget-object v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 63
    .local v0, "read":I
    if-ne v0, v2, :cond_1e

    .line 64
    iput-wide v3, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    goto :goto_24

    .line 66
    :cond_1e
    iget-wide v1, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    .line 68
    :goto_24
    return v0

    .line 70
    .end local v0    # "read":I
    :cond_25
    return v2
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 88
    iget-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->markedAvailable:J

    iput-wide v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    .line 89
    return-void
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 75
    .local v0, "skip":J
    iget-wide v2, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_13

    .line 76
    iget-wide v2, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/xmlrpc/util/LimitedInputStream;->available:J

    .line 78
    :cond_13
    return-wide v0
.end method
