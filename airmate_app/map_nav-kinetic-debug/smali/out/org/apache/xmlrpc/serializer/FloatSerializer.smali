.class public Lorg/apache/xmlrpc/serializer/FloatSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "FloatSerializer.java"


# static fields
.field public static final EX_FLOAT_TAG:Ljava/lang/String; = "ex:float"

.field public static final FLOAT_TAG:Ljava/lang/String; = "float"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 6
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 36
    const-string v0, "float"

    const-string v1, "ex:float"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlrpc/serializer/FloatSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
