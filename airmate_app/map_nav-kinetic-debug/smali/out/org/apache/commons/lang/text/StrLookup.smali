.class public abstract Lorg/apache/commons/lang/text/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;
    }
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .line 50
    move-object v0, v1

    .line 52
    .local v0, "lookup":Lorg/apache/commons/lang/text/StrLookup;
    :try_start_9
    new-instance v1, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_12} :catch_14

    move-object v0, v1

    .line 55
    goto :goto_17

    .line 53
    :catch_14
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-object v0, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .line 56
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :goto_17
    sput-object v0, Lorg/apache/commons/lang/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    .line 57
    .end local v0    # "lookup":Lorg/apache/commons/lang/text/StrLookup;
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;
    .registers 2
    .param p0, "map"    # Ljava/util/Map;

    .line 94
    new-instance v0, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/apache/commons/lang/text/StrLookup;
    .registers 1

    .line 66
    sget-object v0, Lorg/apache/commons/lang/text/StrLookup;->NONE_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/apache/commons/lang/text/StrLookup;
    .registers 1

    .line 81
    sget-object v0, Lorg/apache/commons/lang/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method
