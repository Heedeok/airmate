.class Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;
.super Ljava/lang/Object;
.source "XmlRpcClientFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

.field final synthetic val$pRemoteName:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    .line 122
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;"
    iput-object p1, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->this$0:Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    iput-object p2, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    iput p3, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$timeout:I

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

    .line 125
    .local p0, "this":Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;, "Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;"
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->this$0:Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    invoke-virtual {v0}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->isObjectMethodLocal()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 126
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 129
    :cond_19
    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    goto :goto_41

    .line 132
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 130
    :cond_41
    :goto_41
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "methodName":Ljava/lang/String;
    :goto_45
    nop

    .line 136
    :try_start_46
    new-instance v1, Lorg/apache/xmlrpc/client/TimingOutCallback;

    iget v2, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->val$timeout:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/xmlrpc/client/TimingOutCallback;-><init>(J)V

    .line 137
    .local v1, "callback":Lorg/apache/xmlrpc/client/TimingOutCallback;
    iget-object v2, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->this$0:Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    invoke-static {v2}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->access$000(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v2

    invoke-virtual {v2, v0, p3, v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    .line 138
    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/TimingOutCallback;->waitForResponse()Ljava/lang/Object;

    move-result-object v2
    :try_end_5b
    .catch Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException; {:try_start_46 .. :try_end_5b} :catch_a8
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_5b} :catch_a1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_46 .. :try_end_5b} :catch_9a
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_46 .. :try_end_5b} :catch_71

    move-object v1, v2

    .line 158
    .local v1, "result":Ljava/lang/Object;
    nop

    .line 157
    nop

    .line 159
    iget-object v2, p0, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory$1;->this$0:Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;

    .line 160
    invoke-static {v2}, Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;->access$100(Lorg/ros/internal/node/xmlrpc/XmlRpcClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object v2

    .line 161
    .local v2, "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    invoke-interface {v2, v1}, Lorg/apache/xmlrpc/common/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 145
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "typeConverter":Lorg/apache/xmlrpc/common/TypeConverter;
    :catch_71
    move-exception v1

    .line 146
    .local v1, "e":Lorg/apache/xmlrpc/XmlRpcException;
    iget-object v2, v1, Lorg/apache/xmlrpc/XmlRpcException;->linkedException:Ljava/lang/Throwable;

    .line 147
    .local v2, "linkedException":Ljava/lang/Throwable;
    if-eqz v2, :cond_94

    .line 150
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 151
    .local v3, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7b
    array-length v5, v3

    if-ge v4, v5, :cond_8e

    .line 152
    aget-object v5, v3, v4

    .line 153
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 151
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 154
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8d
    throw v2

    .line 157
    .end local v4    # "i":I
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8e
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v3    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_94
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 143
    .end local v1    # "e":Lorg/apache/xmlrpc/XmlRpcException;
    .end local v2    # "linkedException":Ljava/lang/Throwable;
    :catch_9a
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/reflect/UndeclaredThrowableException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v1    # "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_a1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;

    invoke-direct {v2, v1}, Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 139
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_a8
    move-exception v1

    .line 140
    .local v1, "e":Lorg/apache/xmlrpc/client/TimingOutCallback$TimeoutException;
    new-instance v2, Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;

    invoke-direct {v2, v1}, Lorg/ros/internal/node/xmlrpc/XmlRpcTimeoutException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
