.class final Lcom/google/common/hash/HashCodes$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "hash"    # I

    .line 45
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    .line 47
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .registers 4

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget v1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public asInt()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    return v0
.end method

.method public asLong()J
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bits()I
    .registers 2

    .line 50
    const/16 v0, 0x20

    return v0
.end method
