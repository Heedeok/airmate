.class public final enum Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field public static final enum AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field public static final enum BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field public static final enum FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;


# instance fields
.field private styleBoolean:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 84
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    const-string v1, "FLOW"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    const-string v1, "BLOCK"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v5}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    aput-object v1, v0, v4

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    aput-object v1, v0, v2

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .registers 4
    .param p3, "flowStyle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->styleBoolean:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 1

    .line 83
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method


# virtual methods
.method public getStyleBoolean()Ljava/lang/Boolean;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->styleBoolean:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow style: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->styleBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
