.class final Lcom/google/common/base/CharMatcher$LookupTable;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LookupTable"
.end annotation


# instance fields
.field data:[I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/16 v0, 0x800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$LookupTable;->data:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/CharMatcher$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/common/base/CharMatcher$1;

    .line 800
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$LookupTable;-><init>()V

    return-void
.end method


# virtual methods
.method get(C)Z
    .registers 5
    .param p1, "index"    # C

    .line 808
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$LookupTable;->data:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method set(C)V
    .registers 6
    .param p1, "index"    # C

    .line 804
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$LookupTable;->data:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 805
    return-void
.end method
