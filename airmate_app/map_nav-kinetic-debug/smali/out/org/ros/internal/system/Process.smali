.class public Lorg/ros/internal/system/Process;
.super Ljava/lang/Object;
.source "Process.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getPid()I
    .registers 5

    .line 40
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "mxName":Ljava/lang/String;
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_f} :catch_1d

    .line 42
    .local v2, "idx":I
    if-lez v2, :cond_1c

    .line 44
    :try_start_11
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_19} :catch_1d

    return v3

    .line 45
    :catch_1a
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/NumberFormatException;
    return v0

    .line 58
    .end local v1    # "mxName":Ljava/lang/String;
    .end local v2    # "idx":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    goto :goto_3b

    .line 49
    :catch_1d
    move-exception v1

    .line 53
    .local v1, "unused":Ljava/lang/NoClassDefFoundError;
    :try_start_1e
    const-string v2, "android.os.Process"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "myPid"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    return v0

    .line 54
    :catch_3a
    move-exception v0

    .line 59
    .end local v1    # "unused":Ljava/lang/NoClassDefFoundError;
    :goto_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
