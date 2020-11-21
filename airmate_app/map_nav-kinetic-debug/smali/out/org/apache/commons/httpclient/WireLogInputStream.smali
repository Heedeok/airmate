.class Lorg/apache/commons/httpclient/WireLogInputStream;
.super Ljava/io/FilterInputStream;
.source "WireLogInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field private wire:Lorg/apache/commons/httpclient/Wire;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/httpclient/Wire;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "wire"    # Lorg/apache/commons/httpclient/Wire;

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    .line 62
    iput-object p2, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    .line 63
    return-void
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 82
    .local v0, "l":I
    if-lez v0, :cond_d

    .line 83
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, v0}, Lorg/apache/commons/httpclient/Wire;->input(I)V

    .line 85
    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 94
    .local v0, "l":I
    if-lez v0, :cond_e

    .line 95
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    .line 97
    :cond_e
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

    .line 69
    iget-object v0, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 70
    .local v0, "l":I
    if-lez v0, :cond_d

    .line 71
    iget-object v1, p0, Lorg/apache/commons/httpclient/WireLogInputStream;->wire:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/commons/httpclient/Wire;->input([BII)V

    .line 73
    :cond_d
    return v0
.end method
