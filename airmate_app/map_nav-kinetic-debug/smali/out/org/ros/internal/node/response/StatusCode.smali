.class public final enum Lorg/ros/internal/node/response/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ros/internal/node/response/StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ros/internal/node/response/StatusCode;

.field public static final enum ERROR:Lorg/ros/internal/node/response/StatusCode;

.field public static final enum FAILURE:Lorg/ros/internal/node/response/StatusCode;

.field public static final enum SUCCESS:Lorg/ros/internal/node/response/StatusCode;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    new-instance v0, Lorg/ros/internal/node/response/StatusCode;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/ros/internal/node/response/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ros/internal/node/response/StatusCode;->ERROR:Lorg/ros/internal/node/response/StatusCode;

    new-instance v0, Lorg/ros/internal/node/response/StatusCode;

    const-string v1, "FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/ros/internal/node/response/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ros/internal/node/response/StatusCode;->FAILURE:Lorg/ros/internal/node/response/StatusCode;

    new-instance v0, Lorg/ros/internal/node/response/StatusCode;

    const-string v1, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lorg/ros/internal/node/response/StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ros/internal/node/response/StatusCode;

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->ERROR:Lorg/ros/internal/node/response/StatusCode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->FAILURE:Lorg/ros/internal/node/response/StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/ros/internal/node/response/StatusCode;->$VALUES:[Lorg/ros/internal/node/response/StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lorg/ros/internal/node/response/StatusCode;->intValue:I

    .line 26
    return-void
.end method

.method public static fromInt(I)Lorg/ros/internal/node/response/StatusCode;
    .registers 2
    .param p0, "intValue"    # I

    .line 33
    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    .line 40
    sget-object v0, Lorg/ros/internal/node/response/StatusCode;->FAILURE:Lorg/ros/internal/node/response/StatusCode;

    return-object v0

    .line 37
    :cond_9
    sget-object v0, Lorg/ros/internal/node/response/StatusCode;->SUCCESS:Lorg/ros/internal/node/response/StatusCode;

    return-object v0

    .line 35
    :cond_c
    sget-object v0, Lorg/ros/internal/node/response/StatusCode;->ERROR:Lorg/ros/internal/node/response/StatusCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ros/internal/node/response/StatusCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lorg/ros/internal/node/response/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/node/response/StatusCode;

    return-object v0
.end method

.method public static values()[Lorg/ros/internal/node/response/StatusCode;
    .registers 1

    .line 19
    sget-object v0, Lorg/ros/internal/node/response/StatusCode;->$VALUES:[Lorg/ros/internal/node/response/StatusCode;

    invoke-virtual {v0}, [Lorg/ros/internal/node/response/StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ros/internal/node/response/StatusCode;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .line 29
    iget v0, p0, Lorg/ros/internal/node/response/StatusCode;->intValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    sget-object v0, Lorg/ros/internal/node/response/StatusCode$1;->$SwitchMap$org$ros$internal$node$response$StatusCode:[I

    invoke-virtual {p0}, Lorg/ros/internal/node/response/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 53
    const-string v0, "Failure"

    return-object v0

    .line 50
    :pswitch_e
    const-string v0, "Success"

    return-object v0

    .line 48
    :pswitch_11
    const-string v0, "Error"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
