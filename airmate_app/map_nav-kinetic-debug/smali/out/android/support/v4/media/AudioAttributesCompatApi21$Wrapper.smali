.class final Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
.super Ljava/lang/Object;
.source "AudioAttributesCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/media/AudioAttributes;


# direct methods
.method private constructor <init>(Landroid/media/AudioAttributes;)V
    .registers 2
    .param p1, "obj"    # Landroid/media/AudioAttributes;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->mWrapped:Landroid/media/AudioAttributes;

    .line 56
    return-void
.end method

.method public static wrap(Landroid/media/AudioAttributes;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    .registers 3
    .param p0, "obj"    # Landroid/media/AudioAttributes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    if-eqz p0, :cond_8

    .line 61
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-direct {v0, p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;-><init>(Landroid/media/AudioAttributes;)V

    return-object v0

    .line 59
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioAttributesApi21.Wrapper cannot wrap null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public unwrap()Landroid/media/AudioAttributes;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->mWrapped:Landroid/media/AudioAttributes;

    return-object v0
.end method