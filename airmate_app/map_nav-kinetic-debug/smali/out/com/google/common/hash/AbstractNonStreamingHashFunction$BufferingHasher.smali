.class final Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferingHasher"
.end annotation


# static fields
.field static final BOTTOM_BYTE:I = 0xff


# instance fields
.field final stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

.field final synthetic this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractNonStreamingHashFunction;I)V
    .registers 3
    .param p2, "expectedInputSize"    # I

    .line 37
    iput-object p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 38
    new-instance p1, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-direct {p1, p2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    .line 39
    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->byteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .registers 3
    .param p1, "b"    # B

    .line 43
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 44
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # B

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "bytes"    # [B

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 53
    nop

    .line 54
    return-object p0

    .line 51
    :catch_7
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 59
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write([BII)V

    .line 60
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # [B

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .registers 5
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "c"    # C

    .line 89
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 90
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 91
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # C

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "i"    # I

    .line 72
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 73
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 75
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 76
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # I

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .registers 9
    .param p1, "l"    # J

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_14

    .line 82
    iget-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-long v2, p1, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 81
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 84
    .end local v0    # "i":I
    :cond_14
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .registers 4
    .param p1, "x0"    # J

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .line 96
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    .line 97
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .registers 4
    .param p1, "s"    # S

    .line 65
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 66
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    .line 67
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .registers 3
    .param p1, "x0"    # S

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
