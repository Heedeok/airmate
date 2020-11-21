.class public Lorg/ros/internal/message/MessageProxyInvocationHandler;
.super Ljava/lang/Object;
.source "MessageProxyInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final messageImpl:Lorg/ros/internal/message/MessageImpl;


# direct methods
.method constructor <init>(Lorg/ros/internal/message/MessageImpl;)V
    .registers 2
    .param p1, "messageImpl"    # Lorg/ros/internal/message/MessageImpl;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ros/internal/message/MessageProxyInvocationHandler;->messageImpl:Lorg/ros/internal/message/MessageImpl;

    .line 34
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "methodName":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/internal/message/MessageProxyInvocationHandler;->messageImpl:Lorg/ros/internal/message/MessageImpl;

    invoke-virtual {v1}, Lorg/ros/internal/message/MessageImpl;->getMessageFields()Lorg/ros/internal/message/field/MessageFields;

    move-result-object v1

    .line 40
    .local v1, "mesageFields":Lorg/ros/internal/message/field/MessageFields;
    invoke-virtual {v1, v0}, Lorg/ros/internal/message/field/MessageFields;->getGetterField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v2

    .line 41
    .local v2, "getterField":Lorg/ros/internal/message/field/Field;
    if-eqz v2, :cond_15

    .line 42
    invoke-virtual {v2}, Lorg/ros/internal/message/field/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 44
    :cond_15
    invoke-virtual {v1, v0}, Lorg/ros/internal/message/field/MessageFields;->getSetterField(Ljava/lang/String;)Lorg/ros/internal/message/field/Field;

    move-result-object v3

    .line 45
    .local v3, "setterField":Lorg/ros/internal/message/field/Field;
    if-eqz v3, :cond_23

    .line 46
    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v3, v4}, Lorg/ros/internal/message/field/Field;->setValue(Ljava/lang/Object;)V

    .line 47
    const/4 v4, 0x0

    return-object v4

    .line 49
    :cond_23
    iget-object v4, p0, Lorg/ros/internal/message/MessageProxyInvocationHandler;->messageImpl:Lorg/ros/internal/message/MessageImpl;

    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
