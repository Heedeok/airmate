.class public final Lorg/jboss/netty/util/internal/DetectionUtil;
.super Ljava/lang/Object;
.source "DetectionUtil.java"


# static fields
.field private static final HAS_UNSAFE:Z

.field private static final IS_WINDOWS:Z

.field private static final JAVA_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion0()I

    move-result v0

    sput v0, Lorg/jboss/netty/util/internal/DetectionUtil;->JAVA_VERSION:I

    .line 38
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafe(Ljava/lang/ClassLoader;)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->HAS_UNSAFE:Z

    .line 41
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "os":Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    sput-boolean v1, Lorg/jboss/netty/util/internal/DetectionUtil;->IS_WINDOWS:Z

    .line 44
    .end local v0    # "os":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static hasUnsafe()Z
    .registers 1

    .line 55
    sget-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->HAS_UNSAFE:Z

    return v0
.end method

.method private static hasUnsafe(Ljava/lang/ClassLoader;)Z
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 63
    const-string v0, "org.jboss.netty.tryUnsafe"

    const-string v1, "true"

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 64
    .local v0, "useUnsafe":Z
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 65
    return v1

    .line 69
    :cond_14
    :try_start_14
    const-string v2, "sun.misc.Unsafe"

    const/4 v3, 0x1

    invoke-static {v2, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    .local v2, "unsafeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafeField(Ljava/lang/Class;)Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    return v3

    .line 71
    .end local v2    # "unsafeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_20
    move-exception v2

    .line 74
    return v1
.end method

.method private static hasUnsafeField(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 78
    .local p0, "unsafeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/jboss/netty/util/internal/DetectionUtil$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/DetectionUtil$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .registers 1

    .line 51
    sget-boolean v0, Lorg/jboss/netty/util/internal/DetectionUtil;->IS_WINDOWS:Z

    return v0
.end method

.method public static javaVersion()I
    .registers 1

    .line 59
    sget v0, Lorg/jboss/netty/util/internal/DetectionUtil;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .registers 3

    .line 91
    const/4 v0, 0x6

    :try_start_1
    const-string v1, "android.app.Application"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    .line 92
    return v0

    .line 93
    :catch_7
    move-exception v1

    .line 98
    :try_start_8
    const-class v1, Ljava/util/zip/Deflater;

    const-string v2, "SYNC_FLUSH"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    .line 99
    const/4 v0, 0x7

    return v0

    .line 100
    :catch_11
    move-exception v1

    .line 105
    :try_start_12
    const-class v1, Ljava/lang/Double;

    const-string v2, "MIN_NORMAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    .line 106
    return v0

    .line 107
    :catch_1a
    move-exception v0

    .line 111
    const/4 v0, 0x5

    return v0
.end method
