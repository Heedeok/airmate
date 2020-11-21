.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 68
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 71
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 80
    const/4 v2, 0x1

    :try_start_10
    const-string v3, "org.apache.log4j.Logger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 81
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_1d

    .line 83
    :cond_1b
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 87
    :goto_1d
    goto :goto_21

    .line 85
    :catch_1e
    move-exception v3

    .line 86
    .local v3, "t":Ljava/lang/Throwable;
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 91
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_21
    :try_start_21
    const-string v3, "java.util.logging.Logger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_34

    const-string v3, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 93
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_36

    .line 95
    :cond_34
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_36} :catch_37

    .line 99
    :goto_36
    goto :goto_3a

    .line 97
    :catch_37
    move-exception v2

    .line 98
    .local v2, "t":Ljava/lang/Throwable;
    sput-boolean v0, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 102
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_3a
    move-object v0, v1

    .line 104
    .local v0, "name":Ljava/lang/String;
    :try_start_3b
    const-string v1, "org.apache.commons.logging.log"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 105
    if-nez v0, :cond_4b

    .line 106
    const-string v1, "org.apache.commons.logging.Log"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_4a} :catch_4c

    move-object v0, v1

    .line 109
    :cond_4b
    goto :goto_4d

    .line 108
    :catch_4c
    move-exception v1

    .line 110
    :goto_4d
    if-eqz v0, :cond_5c

    .line 112
    :try_start_4f
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_53

    .line 120
    :goto_52
    goto :goto_7e

    .line 113
    :catch_53
    move-exception v1

    .line 115
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_54
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_59} :catch_5a

    .line 119
    goto :goto_52

    .line 117
    :catch_5a
    move-exception v2

    goto :goto_52

    .line 123
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_5c
    :try_start_5c
    sget-boolean v1, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v1, :cond_66

    .line 124
    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_75

    .line 126
    :cond_66
    sget-boolean v1, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v1, :cond_70

    .line 127
    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_75

    .line 130
    :cond_70
    const-string v1, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_75} :catch_76

    .line 140
    :goto_75
    goto :goto_7e

    .line 133
    :catch_76
    move-exception v1

    .line 135
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_77
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7c} :catch_7d

    .line 139
    goto :goto_7e

    .line 137
    :catch_7d
    move-exception v2

    .line 143
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_7e
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 207
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 196
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 197
    .local v0, "log":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_13

    .line 198
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 199
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_13
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .registers 2

    .line 258
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "log":Lorg/apache/commons/logging/Log;
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 240
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 241
    sget-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/Log;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 244
    .end local v1    # "args":[Ljava/lang/Object;
    goto :goto_13

    .line 242
    :catch_11
    move-exception v1

    .line 243
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 245
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_13
    if-nez v0, :cond_1b

    .line 246
    new-instance v1, Lorg/apache/commons/logging/impl/NoOpLog;

    invoke-direct {v1, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 248
    :cond_1b
    return-object v0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .registers 4
    .param p0, "logclass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 189
    .local v0, "argtypes":[Ljava/lang/Class;
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 191
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .registers 5
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "logclass":Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 171
    .local v1, "argtypes":[Ljava/lang/Class;
    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 175
    .end local v0    # "logclass":Ljava/lang/Class;
    .end local v1    # "argtypes":[Ljava/lang/Class;
    goto :goto_1b

    .line 173
    :catch_17
    move-exception v0

    .line 174
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 176
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1b
    return-void
.end method
