.class public final enum Lorg/yaml/snakeyaml/DumperOptions$Version;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

.field public static final enum V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

.field public static final enum V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;


# instance fields
.field private version:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 138
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    const-string v1, "V1_0"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v6, v3}, Lorg/yaml/snakeyaml/DumperOptions$Version;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    const-string v1, "V1_1"

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v4, v3}, Lorg/yaml/snakeyaml/DumperOptions$Version;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 137
    new-array v0, v2, [Lorg/yaml/snakeyaml/DumperOptions$Version;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

    aput-object v1, v0, v6

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;

    aput-object v1, v0, v4

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;)V
    .registers 4
    .param p3, "version"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput-object p3, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$Version;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 137
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$Version;
    .registers 1

    .line 137
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method


# virtual methods
.method public getArray()[Ljava/lang/Integer;
    .registers 2

    .line 147
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
