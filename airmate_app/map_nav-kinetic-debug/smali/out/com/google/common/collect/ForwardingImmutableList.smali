.class abstract Lcom/google/common/collect/ForwardingImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "ForwardingImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    .local p0, "this":Lcom/google/common/collect/ForwardingImmutableList;, "Lcom/google/common/collect/ForwardingImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method
