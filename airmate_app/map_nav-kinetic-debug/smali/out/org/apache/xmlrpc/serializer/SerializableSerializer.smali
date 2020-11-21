.class public Lorg/apache/xmlrpc/serializer/SerializableSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "SerializableSerializer.java"


# static fields
.field private static final EX_SERIALIZABLE_TAG:Ljava/lang/String; = "ex:serializable"

.field public static final SERIALIZABLE_TAG:Ljava/lang/String; = "serializable"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .registers 8
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 42
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/SerializableSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 43
    const-string v0, ""

    const-string v1, "serializable"

    const-string v2, "ex:serializable"

    sget-object v3, Lorg/apache/xmlrpc/serializer/SerializableSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 44
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 45
    .local v0, "buffer":[C
    new-instance v1, Lorg/apache/ws/commons/util/Base64$SAXEncoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/apache/ws/commons/util/Base64$SAXEncoder;-><init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 47
    .local v1, "encoder":Lorg/apache/ws/commons/util/Base64$Encoder;
    :try_start_21
    new-instance v2, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;

    invoke-direct {v2, v1}, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;-><init>(Lorg/apache/ws/commons/util/Base64$Encoder;)V

    .line 48
    .local v2, "ostream":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_31
    .catch Lorg/apache/ws/commons/util/Base64$SAXIOException; {:try_start_21 .. :try_end_31} :catch_4c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_31} :catch_45

    .line 55
    .end local v2    # "ostream":Ljava/io/OutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 56
    const-string v2, ""

    const-string v3, "serializable"

    const-string v4, "ex:serializable"

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, ""

    const-string v3, "value"

    const-string v4, "value"

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 53
    :catch_45
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v2

    .line 52
    .local v2, "e":Lorg/apache/ws/commons/util/Base64$SAXIOException;
    invoke-virtual {v2}, Lorg/apache/ws/commons/util/Base64$SAXIOException;->getSAXException()Lorg/xml/sax/SAXException;

    move-result-object v3

    throw v3
.end method
