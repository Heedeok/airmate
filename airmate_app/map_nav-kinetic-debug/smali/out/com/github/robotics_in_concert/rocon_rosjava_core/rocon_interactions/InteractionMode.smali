.class public final enum Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;
.super Ljava/lang/Enum;
.source "InteractionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

.field public static final enum CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

.field public static final enum PAIRED:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

.field public static final enum STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    const-string v1, "STANDALONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    .line 9
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    const-string v1, "PAIRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->PAIRED:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    .line 10
    new-instance v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    const-string v1, "CONCERT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->STANDALONE:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->PAIRED:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->CONCERT:Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->$VALUES:[Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    return-object v0
.end method

.method public static values()[Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;
    .registers 1

    .line 7
    sget-object v0, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->$VALUES:[Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    invoke-virtual {v0}, [Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rocon_interactions/InteractionMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
