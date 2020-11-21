.class public Lorg/apache/xmlrpc/serializer/ByteArraySerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "ByteArraySerializer.java"


# static fields
.field public static final BASE_64_TAG:Ljava/lang/String; = "base64"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
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

    .line 38
    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 39
    const-string v0, ""

    const-string v1, "base64"

    const-string v2, "base64"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 40
    move-object v0, p2

    check-cast v0, [B

    .line 41
    .local v0, "buffer":[B
    array-length v1, v0

    if-lez v1, :cond_47

    .line 42
    array-length v1, v0

    const/16 v2, 0x400

    if-lt v1, v2, :cond_22

    goto :goto_29

    :cond_22
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v1, 0x4

    :goto_29
    new-array v1, v2, [C

    .line 43
    .local v1, "charBuffer":[C
    new-instance v2, Lorg/apache/ws/commons/util/Base64$SAXEncoder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, p1}, Lorg/apache/ws/commons/util/Base64$SAXEncoder;-><init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 45
    .local v2, "encoder":Lorg/apache/ws/commons/util/Base64$Encoder;
    :try_start_32
    array-length v3, v0

    invoke-virtual {v2, v0, v4, v3}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    .line 46
    invoke-virtual {v2}, Lorg/apache/ws/commons/util/Base64$Encoder;->flush()V
    :try_end_39
    .catch Lorg/apache/ws/commons/util/Base64$SAXIOException; {:try_start_32 .. :try_end_39} :catch_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 51
    goto :goto_47

    .line 49
    :catch_3a
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 47
    .end local v3    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v3

    .line 48
    .local v3, "e":Lorg/apache/ws/commons/util/Base64$SAXIOException;
    invoke-virtual {v3}, Lorg/apache/ws/commons/util/Base64$SAXIOException;->getSAXException()Lorg/xml/sax/SAXException;

    move-result-object v4

    throw v4

    .line 53
    .end local v1    # "charBuffer":[C
    .end local v2    # "encoder":Lorg/apache/ws/commons/util/Base64$Encoder;
    .end local v3    # "e":Lorg/apache/ws/commons/util/Base64$SAXIOException;
    :cond_47
    :goto_47
    const-string v1, ""

    const-string v2, "base64"

    const-string v3, "base64"

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, ""

    const-string v2, "value"

    const-string v3, "value"

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
