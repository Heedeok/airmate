.class public final enum Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;
.super Ljava/lang/Enum;
.source "InteractionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

.field public static final enum GET_INTERACTIONS_FOR_ROLE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

.field public static final enum GET_INTERACTION_INFO:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

.field public static final enum NONE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

.field public static final enum REQUEST_INTERACTION_USE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 83
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->NONE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    const-string v1, "GET_INTERACTIONS_FOR_ROLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTIONS_FOR_ROLE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    const-string v1, "GET_INTERACTION_INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTION_INFO:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    const-string v1, "REQUEST_INTERACTION_USE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->REQUEST_INTERACTION_USE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->NONE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTIONS_FOR_ROLE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->GET_INTERACTION_INFO:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->REQUEST_INTERACTION_USE:Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const-class v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    return-object v0
.end method

.method public static values()[Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;
    .registers 1

    .line 82
    sget-object v0, Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->$VALUES:[Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    invoke-virtual {v0}, [Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rosjava/android_remocons/common_tools/rocon/InteractionsManager$Action;

    return-object v0
.end method
