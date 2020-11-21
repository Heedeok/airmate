.class public Lorg/apache/commons/httpclient/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private closed:Z

.field private contentLength:J

.field private pos:J

.field private wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .line 90
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 104
    iput-object p1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    .line 105
    iput-wide p2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    .line 106
    return-void
.end method


# virtual methods
.method public available()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-eqz v0, :cond_6

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 214
    .local v0, "avail":I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    .line 215
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v3, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 217
    :cond_1c
    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_f

    .line 118
    const/4 v0, 0x1

    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/httpclient/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 122
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    .line 123
    goto :goto_f

    .line 122
    :catchall_b
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    throw v1

    .line 125
    :cond_f
    :goto_f
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_1c

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_e

    .line 140
    const/4 v0, -0x1

    return v0

    .line 142
    :cond_e
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 143
    iget-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 136
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/httpclient/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->closed:Z

    if-nez v0, :cond_2b

    .line 163
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_e

    .line 164
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_e
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 170
    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 171
    .local v0, "count":I
    iget-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 172
    return v0

    .line 160
    .end local v0    # "count":I
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->contentLength:J

    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 200
    .local v0, "length":J
    iget-object v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 203
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    .line 204
    iget-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/httpclient/ContentLengthInputStream;->pos:J

    .line 206
    :cond_1a
    return-wide v0
.end method
