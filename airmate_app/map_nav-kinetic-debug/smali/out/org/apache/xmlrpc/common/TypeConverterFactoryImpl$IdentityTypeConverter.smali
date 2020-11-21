.class Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;
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
    name = "IdentityTypeConverter"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;->clazz:Ljava/lang/Class;

    .line 44
    return-void
.end method


# virtual methods
.method public backConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 52
    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 49
    return-object p1
.end method

.method public isConvertable(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;

    .line 46
    if-eqz p1, :cond_11

    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
