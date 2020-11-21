.class public final enum Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;
.super Ljava/lang/Enum;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

.field public static final enum NATIVE:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

.field public static final enum NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

.field public static final enum URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

.field public static final enum WEB_APP:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

.field public static final enum WEB_URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 88
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NATIVE:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    .line 89
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    const-string v1, "URL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    .line 90
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    const-string v1, "WEB_URL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    .line 91
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    const-string v1, "WEB_APP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_APP:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    .line 92
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    const-string v1, "NOTHING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NATIVE:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_URL:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->WEB_APP:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v0
.end method

.method public static values()[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;
    .registers 1

    .line 87
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    invoke-virtual {v0}, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$AppType;

    return-object v0
.end method
