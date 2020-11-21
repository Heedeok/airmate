.class Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
.super Ljava/lang/Object;
.source "ReflectiveXmlRpcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodData"
.end annotation


# instance fields
.field final method:Ljava/lang/reflect/Method;

.field final typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .registers 7
    .param p1, "pMethod"    # Ljava/lang/reflect/Method;
    .param p2, "pTypeConverterFactory"    # Lorg/apache/xmlrpc/common/TypeConverterFactory;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    .line 44
    iget-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "paramClasses":[Ljava/lang/Class;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/xmlrpc/common/TypeConverter;

    iput-object v1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 47
    iget-object v2, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    aget-object v3, v0, v1

    invoke-interface {p2, v3}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object v3

    aput-object v3, v2, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 49
    .end local v1    # "i":I
    :cond_21
    return-void
.end method
