.class public Lorg/apache/commons/lang/math/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field public static final JVM_RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lorg/apache/commons/lang/math/JVMRandom;

    invoke-direct {v0}, Lorg/apache/commons/lang/math/JVMRandom;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextBoolean()Z
    .registers 1

    .line 119
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextBoolean(Ljava/util/Random;)Z

    move-result v0

    return v0
.end method

.method public static nextBoolean(Ljava/util/Random;)Z
    .registers 2
    .param p0, "random"    # Ljava/util/Random;

    .line 130
    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextDouble()D
    .registers 2

    .line 164
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextDouble(Ljava/util/Random;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(Ljava/util/Random;)D
    .registers 3
    .param p0, "random"    # Ljava/util/Random;

    .line 176
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextFloat()F
    .registers 1

    .line 141
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextFloat(Ljava/util/Random;)F

    move-result v0

    return v0
.end method

.method public static nextFloat(Ljava/util/Random;)F
    .registers 2
    .param p0, "random"    # Ljava/util/Random;

    .line 153
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static nextInt()I
    .registers 1

    .line 51
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(Ljava/util/Random;)I

    move-result v0

    return v0
.end method

.method public static nextInt(I)I
    .registers 2
    .param p0, "n"    # I

    .line 74
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0, p0}, Lorg/apache/commons/lang/math/RandomUtils;->nextInt(Ljava/util/Random;I)I

    move-result v0

    return v0
.end method

.method public static nextInt(Ljava/util/Random;)I
    .registers 2
    .param p0, "random"    # Ljava/util/Random;

    .line 62
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextInt(Ljava/util/Random;I)I
    .registers 3
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "n"    # I

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static nextLong()J
    .registers 2

    .line 98
    sget-object v0, Lorg/apache/commons/lang/math/RandomUtils;->JVM_RANDOM:Ljava/util/Random;

    invoke-static {v0}, Lorg/apache/commons/lang/math/RandomUtils;->nextLong(Ljava/util/Random;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(Ljava/util/Random;)J
    .registers 3
    .param p0, "random"    # Ljava/util/Random;

    .line 109
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
