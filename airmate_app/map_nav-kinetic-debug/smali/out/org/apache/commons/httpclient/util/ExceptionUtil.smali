.class public Lorg/apache/commons/httpclient/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.commons.httpclient.util.ExceptionUtil"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    goto :goto_f

    :cond_d
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$org$apache$commons$httpclient$util$ExceptionUtil:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    .line 52
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 55
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .registers 2

    .line 83
    :try_start_0
    const-string v0, "java.net.SocketTimeoutException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 84
    :catch_7
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 49
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

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 3

    .line 68
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_13

    :cond_11
    sget-object v2, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_13
    aput-object v2, v0, v1

    .line 69
    .local v0, "paramsClasses":[Ljava/lang/Class;
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_22

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_24

    :cond_22
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_24
    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2a} :catch_2b

    return-object v1

    .line 70
    .end local v0    # "paramsClasses":[Ljava/lang/Class;
    :catch_2b
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 96
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_18

    .line 98
    :try_start_4
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 101
    goto :goto_18

    .line 99
    :catch_10
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Exception invoking Throwable.initCause"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_18
    return-void
.end method

.method public static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .registers 2
    .param p0, "e"    # Ljava/io/InterruptedIOException;

    .line 116
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 117
    sget-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 119
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
