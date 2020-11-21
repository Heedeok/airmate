.class Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;
.super Ljava/lang/Object;
.source "TypeConverterFactoryImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveTypeConverter"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;->clazz:Ljava/lang/Class;

    .line 97
    return-void
.end method


# virtual methods
.method public backConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 105
    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 102
    return-object p1
.end method

.method public isConvertable(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
