.class Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;
.super Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;
.source "TypeFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x567e79b107994aL


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/common/TypeFactoryImpl;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)V
    .registers 2
    .param p1, "this$0"    # Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    .line 160
    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;->this$0:Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    invoke-direct {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeDateFormat;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;->this$0:Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    invoke-static {v0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->access$000(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcConfig;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method
