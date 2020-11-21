.class public Lorg/apache/commons/lang/enum/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-static {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enum/ValuedEnum;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .line 68
    invoke-static {p0, p1}, Lorg/apache/commons/lang/enum/ValuedEnum;->getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enum/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/ValuedEnum;

    return-object v0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 105
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 85
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 125
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
