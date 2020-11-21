.class final Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;
.super Ljava/lang/Object;
.source "TypeConverterFactoryImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 168
    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 161
    if-nez p1, :cond_4

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_4
    new-instance v0, Ljava/util/Hashtable;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public isConvertable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 157
    if-eqz p1, :cond_9

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method
