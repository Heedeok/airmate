.class public final enum Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
.super Ljava/lang/Enum;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum CANNOT_CONNECT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum CONNECT_TIMEOUT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

.field public static final enum SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;


# instance fields
.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 71
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 72
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "NOT_INSTALLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 73
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "NOTHING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 74
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "CANNOT_CONNECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->CANNOT_CONNECT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 75
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "MALFORMED_URI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 76
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "CONNECT_TIMEOUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->CONNECT_TIMEOUT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 77
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    const-string v1, "OTHER_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    .line 70
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->SUCCESS:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOT_INSTALLED:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->NOTHING:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->CANNOT_CONNECT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->MALFORMED_URI:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->CONNECT_TIMEOUT:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->OTHER_ERROR:Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    aput-object v1, v0, v8

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    return-object v0
.end method

.method public static values()[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 1

    .line 70
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    invoke-virtual {v0}, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;

    return-object v0
.end method


# virtual methods
.method withMsg(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/rocon/AppLauncher$Result;->message:Ljava/lang/String;

    .line 83
    return-object p0
.end method
