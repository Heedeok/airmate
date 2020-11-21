.class Lorg/apache/xmlrpc/client/util/ClientFactory$1;
.super Ljava/lang/Object;
.source "ClientFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

.field final synthetic val$pRemoteName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/util/ClientFactory;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/apache/xmlrpc/client/util/ClientFactory;

    .line 127
    iput-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "pProxy"    # Ljava/lang/Object;
    .param p2, "pMethod"    # Ljava/lang/reflect/Method;
    .param p3, "pArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;->isObjectMethodLocal()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 133
    :cond_19
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_41

    .line 136
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 134
    :cond_41
    :goto_41
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "methodName":Ljava/lang/String;
    :goto_45
    nop

    .line 140
    :try_start_46
    iget-object v1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-static {v1}, Lorg/apache/xmlrpc/client/util/ClientFactory;->access$000(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_50
    .catch Lorg/apache/xmlrpc/common/XmlRpcInvocationException; {:try_start_46 .. :try_end_50} :catch_65

    .line 154
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 153
    nop

    .line 155
    iget-object v2, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-static {v2}, Lorg/apache/xmlrpc/client/util/ClientFactory;->access$100(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object v2

    .line 156
    .local v2, "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    invoke-interface {v2, v1}, Lorg/apache/xmlrpc/common/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 141
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    :catch_65
    move-exception v1

    .line 142
    .local v1, "e":Lorg/apache/xmlrpc/common/XmlRpcInvocationException;
    iget-object v2, v1, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;->linkedException:Ljava/lang/Throwable;

    .line 143
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_8a

    .line 146
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 147
    .local v3, "exceptionTypes":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    array-length v5, v3

    if-ge v4, v5, :cond_84

    .line 148
    aget-object v5, v3, v4

    .line 149
    .local v5, "c":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_83

    .line 147
    .end local v5    # "c":Ljava/lang/Class;
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 150
    .restart local v5    # "c":Ljava/lang/Class;
    :cond_83
    throw v2

    .line 153
    .end local v4    # "i":I
    .end local v5    # "c":Ljava/lang/Class;
    :cond_84
    new-instance v4, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v4, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 144
    .end local v3    # "exceptionTypes":[Ljava/lang/Class;
    :cond_8a
    throw v2
.end method
