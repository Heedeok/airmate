.class public abstract enum Lorg/ros/internal/message/field/PrimitiveFieldType;
.super Ljava/lang/Enum;
.source "PrimitiveFieldType.java"

# interfaces
.implements Lorg/ros/internal/message/field/FieldType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ros/internal/message/field/PrimitiveFieldType;",
        ">;",
        "Lorg/ros/internal/message/field/FieldType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum BOOL:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum BYTE:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum CHAR:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final enum DURATION:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum FLOAT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum FLOAT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum INT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum INT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum INT8:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum STRING:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum TIME:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field private static final TYPE_NAMES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UINT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum UINT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum UINT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

.field public static final enum UINT8:Lorg/ros/internal/message/field/PrimitiveFieldType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 35
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$1;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ros/internal/message/field/PrimitiveFieldType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->BOOL:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 75
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$2;

    const-string v1, "INT8"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/ros/internal/message/field/PrimitiveFieldType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT8:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 118
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$3;

    const-string v1, "BYTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/ros/internal/message/field/PrimitiveFieldType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->BYTE:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 157
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$4;

    const-string v1, "UINT8"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/ros/internal/message/field/PrimitiveFieldType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT8:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 199
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$5;

    const-string v1, "CHAR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/ros/internal/message/field/PrimitiveFieldType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->CHAR:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 238
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$6;

    const-string v1, "INT16"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/ros/internal/message/field/PrimitiveFieldType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 278
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$7;

    const-string v1, "UINT16"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/ros/internal/message/field/PrimitiveFieldType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 317
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$8;

    const-string v1, "INT32"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/ros/internal/message/field/PrimitiveFieldType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 357
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$9;

    const-string v1, "UINT32"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/ros/internal/message/field/PrimitiveFieldType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 396
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$10;

    const-string v1, "INT64"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/ros/internal/message/field/PrimitiveFieldType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 436
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$11;

    const-string v1, "UINT64"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/ros/internal/message/field/PrimitiveFieldType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 475
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$12;

    const-string v1, "FLOAT32"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/ros/internal/message/field/PrimitiveFieldType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->FLOAT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 515
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$13;

    const-string v1, "FLOAT64"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/ros/internal/message/field/PrimitiveFieldType$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->FLOAT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 555
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$14;

    const-string v1, "STRING"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/ros/internal/message/field/PrimitiveFieldType$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->STRING:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 599
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$15;

    const-string v1, "TIME"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/ros/internal/message/field/PrimitiveFieldType$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->TIME:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 640
    new-instance v0, Lorg/ros/internal/message/field/PrimitiveFieldType$16;

    const-string v1, "DURATION"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/ros/internal/message/field/PrimitiveFieldType$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->DURATION:Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/ros/internal/message/field/PrimitiveFieldType;

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->BOOL:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT8:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->BYTE:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT8:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->CHAR:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT16:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->INT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->UINT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->FLOAT32:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->FLOAT64:Lorg/ros/internal/message/field/PrimitiveFieldType;

    aput-object v1, v0, v14

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->STRING:Lorg/ros/internal/message/field/PrimitiveFieldType;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->TIME:Lorg/ros/internal/message/field/PrimitiveFieldType;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->DURATION:Lorg/ros/internal/message/field/PrimitiveFieldType;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->$VALUES:[Lorg/ros/internal/message/field/PrimitiveFieldType;

    .line 682
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 686
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 687
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    invoke-static {}, Lorg/ros/internal/message/field/PrimitiveFieldType;->values()[Lorg/ros/internal/message/field/PrimitiveFieldType;

    move-result-object v1

    array-length v3, v1

    :goto_105
    if-ge v2, v3, :cond_113

    aget-object v4, v1, v2

    .line 688
    .local v4, "type":Lorg/ros/internal/message/field/PrimitiveFieldType;
    invoke-virtual {v4}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 687
    .end local v4    # "type":Lorg/ros/internal/message/field/PrimitiveFieldType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    .line 690
    :cond_113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    sput-object v1, Lorg/ros/internal/message/field/PrimitiveFieldType;->TYPE_NAMES:Lcom/google/common/collect/ImmutableSet;

    .line 691
    .end local v0    # "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/ros/internal/message/field/PrimitiveFieldType$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/ros/internal/message/field/PrimitiveFieldType$1;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/ros/internal/message/field/PrimitiveFieldType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .registers 1

    .line 33
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static existsFor(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 694
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->TYPE_NAMES:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ros/internal/message/field/PrimitiveFieldType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ros/internal/message/field/PrimitiveFieldType;

    return-object v0
.end method

.method public static values()[Lorg/ros/internal/message/field/PrimitiveFieldType;
    .registers 1

    .line 33
    sget-object v0, Lorg/ros/internal/message/field/PrimitiveFieldType;->$VALUES:[Lorg/ros/internal/message/field/PrimitiveFieldType;

    invoke-virtual {v0}, [Lorg/ros/internal/message/field/PrimitiveFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ros/internal/message/field/PrimitiveFieldType;

    return-object v0
.end method


# virtual methods
.method public getMd5String()Ljava/lang/String;
    .registers 2

    .line 714
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 709
    invoke-virtual {p0}, Lorg/ros/internal/message/field/PrimitiveFieldType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newConstantValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/Field;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/ros/internal/message/field/Field;"
        }
    .end annotation

    .line 704
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lorg/ros/internal/message/field/ValueField;->newConstant(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;Ljava/lang/Object;)Lorg/ros/internal/message/field/ValueField;

    move-result-object v0

    return-object v0
.end method

.method public newVariableValue(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 699
    invoke-static {p0, p1}, Lorg/ros/internal/message/field/ValueField;->newVariable(Lorg/ros/internal/message/field/FieldType;Ljava/lang/String;)Lorg/ros/internal/message/field/ValueField;

    move-result-object v0

    return-object v0
.end method
