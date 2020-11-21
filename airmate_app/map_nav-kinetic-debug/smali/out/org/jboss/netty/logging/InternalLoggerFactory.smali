.class public abstract Lorg/jboss/netty/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "InternalLoggerFactory.java"


# static fields
.field private static volatile defaultFactory:Lorg/jboss/netty/logging/InternalLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lorg/jboss/netty/logging/JdkLoggerFactory;

    invoke-direct {v0}, Lorg/jboss/netty/logging/JdkLoggerFactory;-><init>()V

    sput-object v0, Lorg/jboss/netty/logging/InternalLoggerFactory;->defaultFactory:Lorg/jboss/netty/logging/InternalLoggerFactory;

    .line 44
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Lorg/jboss/netty/logging/InternalLoggerFactory;
    .registers 1

    .line 52
    sget-object v0, Lorg/jboss/netty/logging/InternalLoggerFactory;->defaultFactory:Lorg/jboss/netty/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/jboss/netty/logging/InternalLogger;"
        }
    .end annotation

    .line 69
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    invoke-static {}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getDefaultFactory()Lorg/jboss/netty/logging/InternalLoggerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    .line 77
    .local v0, "logger":Lorg/jboss/netty/logging/InternalLogger;
    new-instance v1, Lorg/jboss/netty/logging/InternalLoggerFactory$1;

    invoke-direct {v1, v0}, Lorg/jboss/netty/logging/InternalLoggerFactory$1;-><init>(Lorg/jboss/netty/logging/InternalLogger;)V

    return-object v1
.end method

.method public static setDefaultFactory(Lorg/jboss/netty/logging/InternalLoggerFactory;)V
    .registers 3
    .param p0, "defaultFactory"    # Lorg/jboss/netty/logging/InternalLoggerFactory;

    .line 59
    if-eqz p0, :cond_5

    .line 62
    sput-object p0, Lorg/jboss/netty/logging/InternalLoggerFactory;->defaultFactory:Lorg/jboss/netty/logging/InternalLoggerFactory;

    .line 63
    return-void

    .line 60
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "defaultFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
.end method
