.class public Lorg/apache/commons/io/input/AutoCloseInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "AutoCloseInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 63
    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    .line 64
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 79
    :cond_c
    return v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 93
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 96
    :cond_c
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/commons/io/input/AutoCloseInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 113
    invoke-virtual {p0}, Lorg/apache/commons/io/input/AutoCloseInputStream;->close()V

    .line 115
    :cond_c
    return v0
.end method