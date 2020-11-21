.class public Lorg/apache/commons/net/io/CopyStreamException;
.super Ljava/io/IOException;
.source "CopyStreamException.java"


# instance fields
.field private ioException:Ljava/io/IOException;

.field private totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/io/IOException;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "bytesTransferred"    # J
    .param p4, "exception"    # Ljava/io/IOException;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamException;->totalBytesTransferred:J

    .line 49
    iput-object p4, p0, Lorg/apache/commons/net/io/CopyStreamException;->ioException:Ljava/io/IOException;

    .line 50
    return-void
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .registers 2

    .line 69
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamException;->ioException:Ljava/io/IOException;

    return-object v0
.end method

.method public getTotalBytesTransferred()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamException;->totalBytesTransferred:J

    return-wide v0
.end method
