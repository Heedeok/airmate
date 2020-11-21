.class final enum Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;
.super Ljava/lang/Enum;
.source "ViewControlLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

.field public static final enum CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

.field public static final enum MAP:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 43
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    const-string v1, "CAMERA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    .line 44
    new-instance v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    const-string v1, "MAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->MAP:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    sget-object v1, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->CAMERA:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->MAP:Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->$VALUES:[Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;
    .registers 1

    .line 42
    sget-object v0, Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->$VALUES:[Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    invoke-virtual {v0}, [Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rosjava/android_apps/map_nav/ViewControlLayer$ViewMode;

    return-object v0
.end method
