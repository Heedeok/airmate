.class public final Lorg/jboss/netty/util/internal/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# static fields
.field private static final INTEGERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "9"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "10"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "11"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "12"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "13"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "14"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "15"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 43
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 45
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 48
    :cond_1e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_29

    .line 50
    return v2

    .line 54
    :cond_29
    :try_start_29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_32

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1

    .line 55
    :catch_32
    move-exception v3

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x54

    if-eq v3, v4, :cond_44

    const/16 v4, 0x59

    if-eq v3, v4, :cond_44

    .line 63
    return v2

    .line 61
    :cond_44
    return v1
.end method

.method public static toInt(Ljava/lang/Object;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 31
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 32
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 34
    :cond_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 96
    if-ltz p0, :cond_c

    sget-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 97
    sget-object v0, Lorg/jboss/netty/util/internal/ConversionUtil;->INTEGERS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 99
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 72
    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 75
    :cond_8
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_3e

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_29

    .line 79
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 81
    :cond_29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "v":Ljava/lang/Object;
    :goto_30
    goto :goto_18

    .line 84
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 87
    .end local v0    # "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[, \\t\\n\\r\\f\\e\\a]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
