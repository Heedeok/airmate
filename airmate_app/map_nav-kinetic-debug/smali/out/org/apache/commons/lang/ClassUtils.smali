.class public Lorg/apache/commons/lang/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# static fields
.field public static final INNER_CLASS_SEPARATOR:Ljava/lang/String;

.field public static final INNER_CLASS_SEPARATOR_CHAR:C = '$'

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String;

.field public static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field private static abbreviationMap:Ljava/util/Map;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

.field private static primitiveWrapperMap:Ljava/util/Map;

.field private static reverseAbbreviationMap:Ljava/util/Map;

.field private static wrapperPrimitiveMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 52
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->PACKAGE_SEPARATOR:Ljava/lang/String;

    .line 62
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->INNER_CLASS_SEPARATOR:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    .line 69
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v2, :cond_28

    const-string v2, "java.lang.Boolean"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_2a

    :cond_28
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_2a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v2, :cond_3e

    const-string v2, "java.lang.Byte"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    goto :goto_40

    :cond_3e
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Byte:Ljava/lang/Class;

    :goto_40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v2, :cond_54

    const-string v2, "java.lang.Character"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    goto :goto_56

    :cond_54
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Character:Ljava/lang/Class;

    :goto_56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v2, :cond_6a

    const-string v2, "java.lang.Short"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    goto :goto_6c

    :cond_6a
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Short:Ljava/lang/Class;

    :goto_6c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v2, :cond_80

    const-string v2, "java.lang.Integer"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    goto :goto_82

    :cond_80
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Integer:Ljava/lang/Class;

    :goto_82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v2, :cond_96

    const-string v2, "java.lang.Long"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    goto :goto_98

    :cond_96
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Long:Ljava/lang/Class;

    :goto_98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v2, :cond_ac

    const-string v2, "java.lang.Double"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_ae

    :cond_ac
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Double:Ljava/lang/Class;

    :goto_ae
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v2, :cond_c2

    const-string v2, "java.lang.Float"

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_c4

    :cond_c2
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->class$java$lang$Float:Ljava/lang/Class;

    :goto_c4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    .line 85
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_e1
    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 87
    .local v1, "primitiveClass":Ljava/lang/Class;
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 88
    .local v2, "wrapperClass":Ljava/lang/Class;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 89
    sget-object v3, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    .line 97
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "primitiveClass":Ljava/lang/Class;
    .end local v2    # "wrapperClass":Ljava/lang/Class;
    :cond_101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    .line 119
    const-string v0, "int"

    const-string v1, "I"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "boolean"

    const-string v1, "Z"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "float"

    const-string v1, "F"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "long"

    const-string v1, "J"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "short"

    const-string v1, "S"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "byte"

    const-string v1, "B"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "double"

    const-string v1, "D"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "char"

    const-string v1, "C"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/ClassUtils;->addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static addAbbreviation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "primitive"    # Ljava/lang/String;
    .param p1, "abbreviation"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 69
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertClassNamesToClasses(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p0, "classNames"    # Ljava/util/List;

    .line 319
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 320
    return-object v0

    .line 322
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v1, "classes":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 326
    .local v3, "className":Ljava/lang/String;
    :try_start_1d
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25

    .line 329
    goto :goto_29

    .line 327
    :catch_25
    move-exception v4

    .line 328
    .local v4, "ex":Ljava/lang/Exception;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_29
    goto :goto_11

    .line 331
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2a
    return-object v1
.end method

.method public static convertClassesToClassNames(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .param p0, "classes"    # Ljava/util/List;

    .line 347
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 348
    return-object v0

    .line 350
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v1, "classNames":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 353
    .local v3, "cls":Ljava/lang/Class;
    if-nez v3, :cond_23

    .line 354
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 356
    :cond_23
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 359
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "cls":Ljava/lang/Class;
    :cond_2b
    return-object v1
.end method

.method public static getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p0, "cls"    # Ljava/lang/Class;

    .line 281
    if-nez p0, :cond_4

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "list":Ljava/util/List;
    :goto_9
    if-eqz p0, :cond_48

    .line 286
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 287
    .local v1, "interfaces":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_43

    .line 288
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 289
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_20
    aget-object v3, v1, v2

    invoke-static {v3}, Lorg/apache/commons/lang/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 292
    .local v3, "superInterfaces":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 293
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 294
    .local v5, "intface":Ljava/lang/Class;
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 295
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 287
    .end local v3    # "superInterfaces":Ljava/util/List;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "intface":Ljava/lang/Class;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 299
    .end local v2    # "i":I
    :cond_43
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_9

    .line 301
    .end local v1    # "interfaces":[Ljava/lang/Class;
    :cond_48
    return-object v0
.end method

.method public static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .param p0, "cls"    # Ljava/lang/Class;

    .line 255
    if-nez p0, :cond_4

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 258
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "classes":Ljava/util/List;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 260
    .local v1, "superclass":Ljava/lang/Class;
    :goto_d
    if-eqz v1, :cond_17

    .line 261
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_d

    .line 264
    :cond_17
    return-object v0
.end method

.method private static getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "className"    # Ljava/lang/String;

    .line 892
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 893
    if-nez p0, :cond_8

    .line 894
    const/4 v0, 0x0

    return-object v0

    .line 896
    :cond_8
    const/4 v0, 0x0

    move-object v1, p0

    const/4 p0, 0x0

    .line 897
    .local v1, "className":Ljava/lang/String;
    .local p0, "dim":I
    :goto_b
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    .line 898
    add-int/lit8 p0, p0, 0x1

    .line 899
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 901
    :cond_1b
    if-ge p0, v3, :cond_1e

    .line 902
    return-object v1

    .line 904
    :cond_1e
    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 905
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_38

    :cond_34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_38
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    .line 911
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_50

    .line 912
    sget-object v2, Lorg/apache/commons/lang/ClassUtils;->reverseAbbreviationMap:Ljava/util/Map;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 916
    :cond_50
    :goto_50
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 917
    .local v2, "canonicalClassNameBuffer":Ljava/lang/StringBuffer;
    nop

    .local v0, "i":I
    :goto_56
    if-ge v0, p0, :cond_60

    .line 918
    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 920
    .end local v0    # "i":I
    :cond_60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 646
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 625
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 626
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_30

    .line 629
    .end local v0    # "clsName":Ljava/lang/String;
    :cond_28
    invoke-static {p1}, Lorg/apache/commons/lang/ClassUtils;->toCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 631
    .local v0, "clazz":Ljava/lang/Class;
    :goto_30
    return-object v0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 660
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 675
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 676
    .local v0, "contextCL":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1e

    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    if-nez v1, :cond_17

    const-string v1, "org.apache.commons.lang.ClassUtils"

    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    goto :goto_19

    :cond_17
    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->class$org$apache$commons$lang$ClassUtils:Ljava/lang/Class;

    :goto_19
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    .line 677
    .local v1, "loader":Ljava/lang/ClassLoader;
    :goto_1f
    invoke-static {v1, p0, p1}, Lorg/apache/commons/lang/ClassUtils;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method public static getPackageCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 855
    if-nez p0, :cond_5

    .line 856
    const-string v0, ""

    return-object v0

    .line 858
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .line 841
    if-nez p0, :cond_3

    .line 842
    return-object p1

    .line 844
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "canonicalName"    # Ljava/lang/String;

    .line 872
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 219
    if-nez p0, :cond_5

    .line 220
    const-string v0, ""

    return-object v0

    .line 222
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .line 206
    if-nez p0, :cond_3

    .line 207
    return-object p1

    .line 209
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;

    .line 235
    if-nez p0, :cond_5

    .line 236
    const-string v0, ""

    return-object v0

    .line 238
    :cond_5
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 239
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 240
    const-string v1, ""

    return-object v1

    .line 242
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 707
    .local v0, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 708
    return-object v0

    .line 711
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v1, "candidateClasses":Ljava/util/List;
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 713
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 716
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 717
    .local v3, "candidateClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 718
    goto :goto_2a

    .line 722
    :cond_41
    :try_start_41
    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_41 .. :try_end_45} :catch_56

    .line 725
    .local v4, "candidateMethod":Ljava/lang/reflect/Method;
    nop

    .line 724
    nop

    .line 726
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 727
    return-object v4

    .line 723
    .end local v4    # "candidateMethod":Ljava/lang/reflect/Method;
    :catch_56
    move-exception v4

    .line 724
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_2a

    .line 731
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "candidateClass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_58
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Can\'t find a public method for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/commons/lang/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getShortCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 811
    if-nez p0, :cond_5

    .line 812
    const-string v0, ""

    return-object v0

    .line 814
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortCanonicalName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .line 797
    if-nez p0, :cond_3

    .line 798
    return-object p1

    .line 800
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "canonicalName"    # Ljava/lang/String;

    .line 827
    invoke-static {p0}, Lorg/apache/commons/lang/ClassUtils;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 164
    if-nez p0, :cond_5

    .line 165
    const-string v0, ""

    return-object v0

    .line 167
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "valueIfNull"    # Ljava/lang/String;

    .line 151
    if-nez p0, :cond_3

    .line 152
    return-object p1

    .line 154
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;

    .line 179
    if-nez p0, :cond_5

    .line 180
    const-string v0, ""

    return-object v0

    .line 182
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 183
    const-string v0, ""

    return-object v0

    .line 186
    :cond_e
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 187
    .local v1, "lastDotIdx":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    const/4 v3, 0x0

    goto :goto_1b

    :cond_19
    add-int/lit8 v3, v1, 0x1

    :goto_1b
    const/16 v4, 0x24

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 189
    .local v3, "innerIdx":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "out":Ljava/lang/String;
    if-eq v3, v2, :cond_2d

    .line 191
    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 193
    :cond_2d
    return-object v5
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "toClass"    # Ljava/lang/Class;

    .line 440
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 441
    return v0

    .line 444
    :cond_4
    const/4 v1, 0x1

    if-nez p0, :cond_d

    .line 445
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 447
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 448
    return v1

    .line 450
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 451
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_21

    .line 452
    return v0

    .line 454
    :cond_21
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 455
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_43

    :cond_42
    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x1

    :goto_44
    return v0

    .line 459
    :cond_45
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 460
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_5f

    :cond_5e
    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    :goto_60
    return v0

    .line 463
    :cond_61
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 464
    return v0

    .line 466
    :cond_6a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 467
    return v0

    .line 469
    :cond_73
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 470
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 472
    :cond_82
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 473
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    goto :goto_ac

    :cond_ab
    goto :goto_ad

    :cond_ac
    :goto_ac
    const/4 v0, 0x1

    :goto_ad
    return v0

    .line 478
    :cond_ae
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 479
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    goto :goto_d8

    :cond_d7
    goto :goto_d9

    :cond_d8
    :goto_d8
    const/4 v0, 0x1

    :goto_d9
    return v0

    .line 484
    :cond_da
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 485
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    goto :goto_10c

    :cond_10b
    goto :goto_10d

    :cond_10c
    :goto_10c
    const/4 v0, 0x1

    :goto_10d
    return v0

    .line 492
    :cond_10e
    return v0

    .line 494
    :cond_10f
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isAssignable([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 6
    .param p0, "classArray"    # [Ljava/lang/Class;
    .param p1, "toClassArray"    # [Ljava/lang/Class;

    .line 396
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 397
    return v1

    .line 399
    :cond_8
    if-nez p0, :cond_c

    .line 400
    sget-object p0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 402
    :cond_c
    if-nez p1, :cond_10

    .line 403
    sget-object p1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 405
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_22

    .line 406
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 407
    return v1

    .line 405
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 410
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public static isInnerClass(Ljava/lang/Class;)Z
    .registers 4
    .param p0, "cls"    # Ljava/lang/Class;

    .line 603
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 604
    return v0

    .line 606
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_12

    const/4 v0, 0x1

    nop

    :cond_12
    return v0
.end method

.method public static primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .param p0, "cls"    # Ljava/lang/Class;

    .line 510
    move-object v0, p0

    .line 511
    .local v0, "convertedClass":Ljava/lang/Class;
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 512
    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 514
    :cond_12
    return-object v0
.end method

.method public static primitivesToWrappers([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .param p0, "classes"    # [Ljava/lang/Class;

    .line 528
    if-nez p0, :cond_4

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 532
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_8

    .line 533
    return-object p0

    .line 536
    :cond_8
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 537
    .local v0, "convertedClasses":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 538
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 540
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static toCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "className"    # Ljava/lang/String;

    .line 743
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 744
    if-eqz p0, :cond_4c

    .line 746
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 747
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 748
    .local v0, "classNameBuffer":Ljava/lang/StringBuffer;
    :goto_13
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 749
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 750
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 752
    :cond_2c
    sget-object v1, Lorg/apache/commons/lang/ClassUtils;->abbreviationMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, "abbreviation":Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 756
    :cond_3a
    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    :goto_47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 760
    .end local v0    # "classNameBuffer":Ljava/lang/StringBuffer;
    .end local v1    # "abbreviation":Ljava/lang/String;
    :cond_4b
    return-object p0

    .line 745
    :cond_4c
    new-instance v0, Lorg/apache/commons/lang/NullArgumentException;

    const-string v1, "className"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 774
    if-nez p0, :cond_4

    .line 775
    const/4 v0, 0x0

    return-object v0

    .line 776
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 777
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    return-object v0

    .line 779
    :cond_a
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 780
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 781
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 783
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .line 560
    sget-object v0, Lorg/apache/commons/lang/ClassUtils;->wrapperPrimitiveMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static wrappersToPrimitives([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 4
    .param p0, "classes"    # [Ljava/lang/Class;

    .line 578
    if-nez p0, :cond_4

    .line 579
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_8

    .line 583
    return-object p0

    .line 586
    :cond_8
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 587
    .local v0, "convertedClasses":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 588
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 590
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method
