.class final Lcom/google/common/io/ByteStreams$5;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$offset:J

.field final synthetic val$supplier:Lcom/google/common/io/InputSupplier;


# direct methods
.method constructor <init>(Lcom/google/common/io/InputSupplier;JJ)V
    .registers 6

    .line 868
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$5;->val$supplier:Lcom/google/common/io/InputSupplier;

    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$5;->val$offset:J

    iput-wide p4, p0, Lcom/google/common/io/ByteStreams$5;->val$length:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$5;->val$supplier:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 871
    .local v0, "in":Ljava/io/InputStream;
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$5;->val$offset:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1b

    .line 873
    :try_start_10
    iget-wide v1, p0, Lcom/google/common/io/ByteStreams$5;->val$offset:J

    invoke-static {v0, v1, v2}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_16

    .line 877
    goto :goto_1b

    .line 874
    :catch_16
    move-exception v1

    .line 875
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 876
    throw v1

    .line 879
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    new-instance v1, Lcom/google/common/io/LimitInputStream;

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$5;->val$length:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v1
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$5;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
