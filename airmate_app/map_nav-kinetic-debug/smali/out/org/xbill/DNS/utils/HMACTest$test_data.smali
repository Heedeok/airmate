.class Lorg/xbill/DNS/utils/HMACTest$test_data;
.super Ljava/lang/Object;
.source "HMACTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/utils/HMACTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "test_data"
.end annotation


# instance fields
.field public data:[B

.field public digest:[B

.field public key:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/utils/HMACTest$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/xbill/DNS/utils/HMACTest$1;

    .line 43
    invoke-direct {p0}, Lorg/xbill/DNS/utils/HMACTest$test_data;-><init>()V

    return-void
.end method
