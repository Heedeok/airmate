.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->hash(Lcom/google/common/io/InputSupplier;Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/ByteProcessor<",
        "Lcom/google/common/hash/HashCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$hasher:Lcom/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lcom/google/common/hash/Hasher;)V
    .registers 2

    .line 796
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$4;->val$hasher:Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/google/common/hash/HashCode;
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$4;->val$hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .line 796
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$4;->getResult()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public processBytes([BII)Z
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 799
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$4;->val$hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 800
    const/4 v0, 0x1

    return v0
.end method
