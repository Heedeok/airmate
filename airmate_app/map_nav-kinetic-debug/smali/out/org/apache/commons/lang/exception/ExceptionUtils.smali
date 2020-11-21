.class public Lorg/apache/commons/lang/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static CAUSE_METHOD_NAMES:[Ljava/lang/String; = null

.field private static final THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 62
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "getCause"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "getNextException"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "getTargetException"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "getException"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "getSourceException"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "getRootCause"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "getCausedByException"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "getNested"

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "getLinkedException"

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "getNestedException"

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "getLinkedCause"

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "getThrowable"

    const/16 v4, 0xb

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    :try_start_47
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_54

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_56

    :cond_54
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_56
    const-string v4, "getCause"

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5c} :catch_5e

    move-object v0, v1

    .line 93
    .local v0, "causeMethod":Ljava/lang/reflect/Method;
    goto :goto_60

    .line 91
    .end local v0    # "causeMethod":Ljava/lang/reflect/Method;
    :catch_5e
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "causeMethod":Ljava/lang/reflect/Method;
    :goto_60
    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 96
    :try_start_62
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_6f

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_71

    :cond_6f
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_71
    const-string v4, "initCause"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v5, :cond_82

    const-string v5, "java.lang.Throwable"

    invoke-static {v5}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_84

    :cond_82
    sget-object v5, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_84
    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_8a} :catch_8c

    move-object v0, v1

    .line 99
    goto :goto_8e

    .line 97
    :catch_8c
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8e
    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 101
    .end local v0    # "causeMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static addCauseMethodName(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isCauseMethodName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 124
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseMethodNameList()Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 126
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v1

    .line 127
    :try_start_19
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 128
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v2

    .line 131
    .end local v0    # "list":Ljava/util/List;
    :cond_24
    :goto_24
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 90
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

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 278
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v0

    .line 279
    :try_start_3
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 280
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;

    .line 302
    if-nez p0, :cond_4

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 306
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_31

    .line 307
    if-nez p1, :cond_17

    .line 308
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v1

    .line 309
    :try_start_f
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    move-object p1, v2

    .line 310
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v2

    .line 312
    :cond_17
    :goto_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_29

    .line 313
    aget-object v2, p1, v1

    .line 314
    .local v2, "methodName":Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 315
    invoke-static {p0, v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_26

    .line 317
    goto :goto_29

    .line 312
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 322
    .end local v1    # "i":I
    :cond_29
    :goto_29
    if-nez v0, :cond_31

    .line 323
    const-string v1, "detail"

    invoke-static {p0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 326
    :cond_31
    return-object v0
.end method

.method private static getCauseMethodNameList()Ljava/util/ArrayList;
    .registers 3

    .line 225
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v0

    .line 226
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 227
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    move-object v1, v0

    .line 414
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_a} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_c

    move-object v1, v2

    .line 419
    :goto_b
    goto :goto_10

    .line 417
    :catch_c
    move-exception v2

    goto :goto_10

    .line 415
    :catch_e
    move-exception v2

    goto :goto_b

    .line 421
    :goto_10
    if-eqz v1, :cond_36

    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1f

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_21

    :cond_1f
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_21
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 423
    :try_start_2b
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_31} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_31} :catch_32

    return-object v2

    .line 426
    :catch_32
    move-exception v2

    goto :goto_36

    .line 424
    :catch_34
    move-exception v2

    .line 428
    nop

    .line 430
    :cond_36
    :goto_36
    return-object v0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    move-object v1, v0

    .line 383
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_a} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_c

    move-object v1, v2

    .line 388
    :goto_b
    goto :goto_10

    .line 386
    :catch_c
    move-exception v2

    goto :goto_10

    .line 384
    :catch_e
    move-exception v2

    goto :goto_b

    .line 390
    :goto_10
    if-eqz v1, :cond_3a

    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1f

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_21

    :cond_1f
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_21
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 392
    :try_start_2b
    sget-object v2, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_33} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_33} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_33} :catch_34

    return-object v2

    .line 397
    :catch_34
    move-exception v2

    goto :goto_3a

    .line 395
    :catch_36
    move-exception v2

    goto :goto_39

    .line 393
    :catch_38
    move-exception v2

    .line 399
    :goto_39
    nop

    .line 401
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method private static getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 362
    instance-of v0, p0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v0, :cond_c

    .line 363
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v0}, Lorg/apache/commons/lang/exception/Nestable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 364
    :cond_c
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_18

    .line 365
    move-object v0, p0

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    return-object v0

    .line 366
    :cond_18
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_24

    .line 367
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 369
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 865
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 866
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 867
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v2

    .line 868
    .local v2, "ts":[Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v2

    if-ge v3, v4, :cond_24

    .line 869
    aget-object v4, v2, v3

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 870
    aget-object v4, v2, v3

    invoke-static {v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isNestedThrowable(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 871
    goto :goto_24

    .line 868
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 874
    .end local v3    # "i":I
    :cond_24
    :goto_24
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 984
    if-nez p0, :cond_5

    .line 985
    const-string v0, ""

    return-object v0

    .line 987
    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "clsName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 347
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    const/4 v1, 0x0

    goto :goto_19

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :goto_19
    return-object v1
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 1004
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1005
    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_8

    move-object v1, p0

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    move-object v0, v1

    .line 1006
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 10
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 801
    if-nez p0, :cond_5

    .line 802
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 804
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v0

    .line 805
    .local v0, "throwables":[Ljava/lang/Throwable;
    array-length v1, v0

    .line 806
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v2, "frames":Ljava/util/ArrayList;
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    .line 808
    .local v3, "nextTrace":Ljava/util/List;
    move-object v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "nextTrace":Ljava/util/List;
    :cond_19
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_65

    .line 809
    move-object v6, v4

    .line 810
    .local v6, "trace":Ljava/util/List;
    if-eqz v3, :cond_2c

    .line 811
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 812
    invoke-static {v6, v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 814
    :cond_2c
    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_3a

    .line 815
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 817
    :cond_3a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " [wrapped] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v0, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :goto_54
    nop

    .local v5, "j":I
    :goto_55
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_19

    .line 820
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 823
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "trace":Ljava/util/List;
    :cond_65
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 10
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 953
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 954
    .local v0, "stackTrace":Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 955
    .local v1, "linebreak":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .local v2, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v3, "list":Ljava/util/List;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 958
    .local v5, "traceStarted":Z
    :cond_12
    :goto_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 959
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "token":Ljava/lang/String;
    const-string v7, "at"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 962
    .local v7, "at":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_38

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_38

    .line 963
    const/4 v5, 0x1

    .line 964
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 965
    :cond_38
    if-eqz v5, :cond_12

    .line 966
    nop

    .line 969
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "at":I
    :cond_3b
    return-object v3
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "stackTrace"    # Ljava/lang/String;

    .line 931
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 932
    .local v0, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v2, "list":Ljava/util/List;
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 935
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 937
    :cond_1a
    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 911
    if-nez p0, :cond_5

    .line 912
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 914
    :cond_5
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 891
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 892
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 893
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 894
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 518
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "list":Ljava/util/List;
    :goto_5
    if-eqz p0, :cond_15

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 567
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    .line 570
    :cond_15
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 541
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .registers 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z

    .line 671
    const/4 v0, -0x1

    if-eqz p0, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    .line 674
    :cond_6
    if-gez p2, :cond_9

    .line 675
    const/4 p2, 0x0

    .line 677
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .line 678
    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v2, v1

    if-lt p2, v2, :cond_11

    .line 679
    return v0

    .line 681
    :cond_11
    if-eqz p3, :cond_27

    .line 682
    move v2, p2

    .local v2, "i":I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_3b

    .line 683
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 684
    return v2

    .line 682
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 688
    .end local v2    # "i":I
    :cond_27
    move v2, p2

    .restart local v2    # "i":I
    :goto_28
    array-length v3, v1

    if-ge v2, v3, :cond_3b

    .line 689
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 690
    return v2

    .line 688
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 694
    .end local v2    # "i":I
    :cond_3b
    return v0

    .line 672
    .end local v1    # "throwables":[Ljava/lang/Throwable;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 589
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .line 612
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;

    .line 632
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .registers 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fromIndex"    # I

    .line 656
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static isCauseMethodName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "methodName"    # Ljava/lang/String;

    .line 240
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 242
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static isNestedThrowable(Ljava/lang/Throwable;)Z
    .registers 10
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 456
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 457
    return v0

    .line 460
    :cond_4
    instance-of v1, p0, Lorg/apache/commons/lang/exception/Nestable;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 461
    return v2

    .line 462
    :cond_a
    instance-of v1, p0, Ljava/sql/SQLException;

    if-eqz v1, :cond_f

    .line 463
    return v2

    .line 464
    :cond_f
    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_14

    .line 465
    return v2

    .line 466
    :cond_14
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 467
    return v2

    .line 470
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 471
    .local v1, "cls":Ljava/lang/Class;
    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v3

    .line 472
    const/4 v4, 0x0

    .local v4, "i":I
    :try_start_23
    sget-object v5, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    array-length v5, v5
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_64

    .local v5, "isize":I
    :goto_26
    if-ge v4, v5, :cond_55

    .line 474
    :try_start_28
    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 475
    .local v6, "method":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_51

    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v7, :cond_40

    const-string v7, "java.lang.Throwable"

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_42

    :cond_40
    sget-object v7, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_42
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_4a} :catch_50
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_4a} :catch_4e
    .catchall {:try_start_28 .. :try_end_4a} :catchall_64

    if-eqz v7, :cond_51

    .line 476
    :try_start_4c
    monitor-exit v3

    return v2

    .line 480
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_4e
    move-exception v6

    goto :goto_52

    .line 478
    :catch_50
    move-exception v6

    .line 482
    :cond_51
    nop

    .line 472
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 484
    .end local v4    # "i":I
    .end local v5    # "isize":I
    :cond_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_64

    .line 487
    :try_start_56
    const-string v3, "detail"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_56 .. :try_end_5c} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_5c} :catch_5f

    .line 488
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_62

    .line 489
    return v2

    .line 493
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_5f
    move-exception v2

    goto :goto_63

    .line 491
    :catch_61
    move-exception v2

    .line 495
    :cond_62
    nop

    .line 497
    :goto_63
    return v0

    .line 484
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public static isThrowableNested()Z
    .registers 1

    .line 443
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 717
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    .line 718
    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 740
    if-nez p0, :cond_3

    .line 741
    return-void

    .line 743
    :cond_3
    if-eqz p1, :cond_19

    .line 746
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "trace":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 748
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 750
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 751
    return-void

    .line 744
    .end local v0    # "trace":[Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The PrintStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 773
    if-nez p0, :cond_3

    .line 774
    return-void

    .line 776
    :cond_3
    if-eqz p1, :cond_19

    .line 779
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "trace":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 781
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 783
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 784
    return-void

    .line 777
    .end local v0    # "trace":[Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The PrintWriter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeCauseMethodName(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 142
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 143
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseMethodNameList()Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 145
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    monitor-enter v1

    .line 146
    :try_start_13
    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->toArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 147
    monitor-exit v1

    goto :goto_1e

    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw v2

    .line 150
    .end local v0    # "list":Ljava/util/List;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p0, "causeFrames"    # Ljava/util/List;
    .param p1, "wrapperFrames"    # Ljava/util/List;

    .line 835
    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    .line 838
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 839
    .local v0, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 840
    .local v1, "wrapperFrameIndex":I
    :goto_10
    if-ltz v0, :cond_2e

    if-ltz v1, :cond_2e

    .line 843
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 844
    .local v2, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 845
    .local v3, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 846
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 848
    :cond_29
    add-int/lit8 v0, v0, -0x1

    .line 849
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 851
    .end local v2    # "causeFrame":Ljava/lang/String;
    .end local v3    # "wrapperFrame":Ljava/lang/String;
    :cond_2e
    return-void

    .line 836
    .end local v0    # "causeFrameIndex":I
    .end local v1    # "wrapperFrameIndex":I
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .registers 9
    .param p0, "target"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 181
    if-eqz p0, :cond_41

    .line 184
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 185
    .local v1, "causeArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 186
    .local v3, "modifiedTarget":Z
    sget-object v4, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_18

    .line 188
    :try_start_d
    sget-object v4, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_12} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_12} :catch_14

    .line 189
    const/4 v3, 0x1

    .line 194
    :goto_13
    goto :goto_18

    .line 192
    :catch_14
    move-exception v4

    goto :goto_18

    .line 190
    :catch_16
    move-exception v4

    goto :goto_13

    .line 197
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setCause"

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v6, :cond_2d

    const-string v6, "java.lang.Throwable"

    invoke-static {v6}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_2f

    :cond_2d
    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_2f
    aput-object v6, v0, v2

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, "setCauseMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_38} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_38} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_38} :catch_3a

    .line 199
    const/4 v3, 0x1

    .line 206
    .end local v0    # "setCauseMethod":Ljava/lang/reflect/Method;
    :goto_39
    goto :goto_40

    .line 204
    :catch_3a
    move-exception v0

    goto :goto_40

    .line 202
    :catch_3c
    move-exception v0

    goto :goto_39

    .line 200
    :catch_3e
    move-exception v0

    goto :goto_39

    .line 207
    :goto_40
    return v3

    .line 182
    .end local v1    # "causeArgs":[Ljava/lang/Object;
    .end local v3    # "modifiedTarget":Z
    :cond_41
    new-instance v0, Lorg/apache/commons/lang/NullArgumentException;

    const-string v1, "target"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toArray(Ljava/util/List;)[Ljava/lang/String;
    .registers 2
    .param p0, "list"    # Ljava/util/List;

    .line 216
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
