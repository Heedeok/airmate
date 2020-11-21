.class public abstract Lorg/apache/commons/lang/enum/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/enum/Enum$Entry;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/Map;

.field private static cEnumClasses:Ljava/util/Map; = null

.field static synthetic class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class; = null

.field static synthetic class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x6c255b64ccea986L


# instance fields
.field private final transient iHashCode:I

.field private final iName:Ljava/lang/String;

.field protected transient iToString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 254
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    .line 259
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->init(Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    .line 326
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 346
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

.method private static createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .registers 6
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 499
    new-instance v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    invoke-direct {v0}, Lorg/apache/commons/lang/enum/Enum$Entry;-><init>()V

    .line 500
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 501
    .local v1, "cls":Ljava/lang/Class;
    :goto_9
    if-eqz v1, :cond_4b

    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v2, :cond_18

    const-string v2, "org.apache.commons.lang.enum.Enum"

    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_1a

    :cond_18
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_1a
    if-eq v1, v2, :cond_4b

    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v2, :cond_29

    const-string v2, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v2}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_2b

    :cond_29
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_2b
    if-eq v1, v2, :cond_4b

    .line 502
    sget-object v2, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 503
    .local v2, "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-eqz v2, :cond_46

    .line 504
    iget-object v3, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    iget-object v3, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    iget-object v4, v2, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 506
    goto :goto_4b

    .line 508
    :cond_46
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_9

    .line 510
    .end local v2    # "loopEntry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_4b
    :goto_4b
    return-object v0
.end method

.method private static getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 480
    if-eqz p0, :cond_28

    .line 483
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "org.apache.commons.lang.enum.Enum"

    invoke-static {v0}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_11

    :cond_f
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 486
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 487
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    return-object v0

    .line 484
    .end local v0    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Class must be a subclass of Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum Class must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enum/Enum;
    .registers 4
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .line 404
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 405
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_8

    .line 406
    const/4 v1, 0x0

    return-object v1

    .line 408
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    return-object v1
.end method

.method protected static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 447
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 448
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_9

    .line 449
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 451
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableList:Ljava/util/List;

    return-object v1
.end method

.method protected static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 425
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v0

    .line 426
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_9

    .line 427
    sget-object v1, Lorg/apache/commons/lang/enum/Enum;->EMPTY_MAP:Ljava/util/Map;

    return-object v1

    .line 429
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->unmodifiableMap:Ljava/util/Map;

    return-object v1
.end method

.method private getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 616
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 617
    .local v0, "mth":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_12

    .line 618
    .local v1, "name":Ljava/lang/String;
    return-object v1

    .line 623
    .end local v0    # "mth":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :catch_12
    move-exception v0

    goto :goto_18

    .line 621
    :catch_14
    move-exception v0

    goto :goto_17

    .line 619
    :catch_16
    move-exception v0

    .line 625
    :goto_17
    nop

    .line 626
    :goto_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should not happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 336
    invoke-static {p1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 340
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    .line 341
    .local v0, "enumClass":Ljava/lang/Class;
    if-eqz v0, :cond_aa

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 345
    .local v1, "cls":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 346
    .local v2, "ok":Z
    :goto_11
    if-eqz v1, :cond_3e

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_20

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_22

    :cond_20
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_22
    if-eq v1, v3, :cond_3e

    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    if-nez v3, :cond_31

    const-string v3, "org.apache.commons.lang.enum.ValuedEnum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    goto :goto_33

    :cond_31
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$ValuedEnum:Ljava/lang/Class;

    :goto_33
    if-eq v1, v3, :cond_3e

    .line 347
    if-ne v1, v0, :cond_39

    .line 348
    const/4 v2, 0x1

    .line 349
    goto :goto_3e

    .line 351
    :cond_39
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_11

    .line 353
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_a2

    .line 358
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    if-nez v3, :cond_4d

    const-string v3, "org.apache.commons.lang.enum.Enum"

    invoke-static {v3}, Lorg/apache/commons/lang/enum/Enum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    goto :goto_4f

    :cond_4d
    sget-object v3, Lorg/apache/commons/lang/enum/Enum;->class$org$apache$commons$lang$enum$Enum:Ljava/lang/Class;

    :goto_4f
    monitor-enter v3

    .line 360
    :try_start_50
    sget-object v4, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 361
    .local v4, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v4, :cond_6e

    .line 362
    invoke-static {v0}, Lorg/apache/commons/lang/enum/Enum;->createEntry(Ljava/lang/Class;)Lorg/apache/commons/lang/enum/Enum$Entry;

    move-result-object v5

    move-object v4, v5

    .line 363
    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    .line 364
    .local v5, "myMap":Ljava/util/Map;
    sget-object v6, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 365
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sput-object v5, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    .line 368
    .end local v5    # "myMap":Ljava/util/Map;
    :cond_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_50 .. :try_end_6f} :catchall_9f

    move-object v3, v4

    .line 369
    .end local v4    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    .local v3, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    iget-object v4, v3, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 372
    iget-object v4, v3, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-interface {v4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v4, v3, Lorg/apache/commons/lang/enum/Enum$Entry;->list:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void

    .line 370
    :cond_83
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "The Enum name must be unique, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\' has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    .end local v3    # "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    :catchall_9f
    move-exception v4

    :try_start_a0
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v4

    .line 354
    :cond_a2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "getEnumClass() must return a superclass of this class"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "ok":Z
    :cond_aa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getEnumClass() must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    .end local v0    # "enumClass":Ljava/lang/Class;
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Enum name must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 2
    .param p0, "enumClass"    # Ljava/lang/Class;

    .line 469
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 595
    if-ne p1, p0, :cond_4

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_53

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 600
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 602
    :cond_2f
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Different enum class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_53
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 551
    if-ne p1, p0, :cond_4

    .line 552
    const/4 v0, 0x1

    return v0

    .line 553
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 554
    return v0

    .line 555
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    .line 559
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/enum/Enum;

    iget-object v1, v1, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 562
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 563
    return v0

    .line 565
    :cond_35
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;->getNameInOtherClassLoader(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .registers 2

    .line 534
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 575
    iget v0, p0, Lorg/apache/commons/lang/enum/Enum;->iHashCode:I

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 4

    .line 383
    sget-object v0, Lorg/apache/commons/lang/enum/Enum;->cEnumClasses:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/Enum$Entry;

    .line 384
    .local v0, "entry":Lorg/apache/commons/lang/enum/Enum$Entry;
    if-nez v0, :cond_10

    .line 385
    const/4 v1, 0x0

    return-object v1

    .line 387
    :cond_10
    iget-object v1, v0, Lorg/apache/commons/lang/enum/Enum$Entry;->map:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 637
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    .line 641
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_2b
    iget-object v0, p0, Lorg/apache/commons/lang/enum/Enum;->iToString:Ljava/lang/String;

    return-object v0
.end method
