.class public Lorg/apache/commons/logging/impl/ServletContextCleaner;
.super Ljava/lang/Object;
.source "ServletContextCleaner.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# static fields
.field static synthetic class$java$lang$ClassLoader:Ljava/lang/Class;


# instance fields
.field private RELEASE_SIGNATURE:[Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    if-nez v1, :cond_13

    const-string v1, "java.lang.ClassLoader"

    invoke-static {v1}, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    goto :goto_15

    :cond_13
    sget-object v1, Lorg/apache/commons/logging/impl/ServletContextCleaner;->class$java$lang$ClassLoader:Ljava/lang/Class;

    :goto_15
    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 54
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

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .registers 8
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    .local v0, "tccl":Ljava/lang/ClassLoader;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .local v1, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 97
    move-object v2, v0

    .line 98
    .local v2, "loader":Ljava/lang/ClassLoader;
    :goto_f
    if-eqz v2, :cond_4e

    .line 103
    :try_start_11
    const-string v3, "org.apache.commons.logging.LogFactory"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 104
    .local v3, "logFactoryClass":Ljava/lang/Class;
    const-string v4, "release"

    iget-object v5, p0, Lorg/apache/commons/logging/impl/ServletContextCleaner;->RELEASE_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 105
    .local v4, "releaseMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_2b} :catch_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_2b} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_2b} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_2b} :catch_2d

    move-object v2, v5

    .end local v3    # "logFactoryClass":Ljava/lang/Class;
    .end local v4    # "releaseMethod":Ljava/lang/reflect/Method;
    goto :goto_4d

    .line 119
    :catch_2d
    move-exception v3

    .line 121
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "LogFactory instance release method failed!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_4d

    .line 115
    :catch_37
    move-exception v3

    .line 117
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "LogFactory instance found which is not accessable!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x0

    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_4d

    .line 111
    :catch_41
    move-exception v3

    .line 113
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "LogFactory instance found which does not support release method!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_4d

    .line 107
    :catch_4b
    move-exception v3

    .line 110
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    .line 123
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_4d
    goto :goto_f

    .line 129
    :cond_4e
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->release(Ljava/lang/ClassLoader;)V

    .line 130
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .registers 2
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .line 137
    return-void
.end method
