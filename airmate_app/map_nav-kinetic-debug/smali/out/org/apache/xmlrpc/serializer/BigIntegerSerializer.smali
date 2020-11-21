.class public Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "BigIntegerSerializer.java"


# static fields
.field public static final BIGINTEGER_TAG:Ljava/lang/String; = "biginteger"

.field private static final EX_BIGINTEGER_TAG:Ljava/lang/String; = "ex:biginteger"


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

    .line 34
    const-string v0, "biginteger"

    const-string v1, "ex:biginteger"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
