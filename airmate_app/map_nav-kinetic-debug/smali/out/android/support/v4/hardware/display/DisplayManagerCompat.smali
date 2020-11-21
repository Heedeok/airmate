.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;,
        Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    sget-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 61
    .local v1, "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    if-nez v1, :cond_25

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1a

    .line 63
    new-instance v2, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;

    invoke-direct {v2, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi17Impl;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    goto :goto_20

    .line 65
    :cond_1a
    new-instance v2, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;

    invoke-direct {v2, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$DisplayManagerCompatApi14Impl;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 67
    :goto_20
    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_25
    monitor-exit v0

    return-object v1

    .line 70
    .end local v1    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public abstract getDisplay(I)Landroid/view/Display;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDisplays()[Landroid/view/Display;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
