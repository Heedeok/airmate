.class public Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;
.super Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;
.source "XmlRpcResponseParser.java"


# instance fields
.field private errorCause:Ljava/lang/Throwable;

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private isSuccess:Z

.field private level:I


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/TypeFactory;)V
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .param p2, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;

    .line 53
    new-instance v0, Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-direct {v0}, Lorg/apache/ws/commons/util/NamespaceContextImpl;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected addResult(Ljava/lang/Object;)V
    .registers 9
    .param p1, "pResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_8

    .line 58
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->setResult(Ljava/lang/Object;)V

    goto :goto_4d

    .line 60
    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 61
    .local v0, "map":Ljava/util/Map;
    const-string v1, "faultCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 62
    .local v1, "faultCode":Ljava/lang/Integer;
    if-eqz v1, :cond_6a

    .line 66
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorCode:I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_4e

    .line 70
    nop

    .line 71
    const-string v2, "faultString"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorMessage:Ljava/lang/String;

    .line 72
    const-string v2, "faultCause"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "exception":Ljava/lang/Object;
    if-eqz v2, :cond_4d

    .line 75
    :try_start_2e
    move-object v3, v2

    check-cast v3, [B

    check-cast v3, [B

    .line 76
    .local v3, "bytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    iput-object v6, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorCause:Ljava/lang/Throwable;

    .line 79
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 80
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_4b} :catch_4c

    .line 83
    .end local v3    # "bytes":[B
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4d

    .line 81
    :catch_4c
    move-exception v3

    .line 86
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "faultCode":Ljava/lang/Integer;
    .end local v2    # "exception":Ljava/lang/Object;
    :cond_4d
    :goto_4d
    return-void

    .line 67
    .restart local v0    # "map":Ljava/util/Map;
    .restart local v1    # "faultCode":Ljava/lang/Integer;
    :catch_4e
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xml/sax/SAXParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid faultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    .line 63
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6a
    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    const-string v4, "Missing faultCode"

    invoke-direct {v2, v4, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 154
    iget v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->level:I

    packed-switch v0, :pswitch_data_12a

    .line 208
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_128

    .line 195
    :pswitch_e
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_47

    .line 196
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 197
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->endValueTag()V

    goto/16 :goto_128

    .line 199
    :cond_27
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 204
    :cond_47
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    goto/16 :goto_128

    .line 178
    :pswitch_4c
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_82

    .line 179
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "param"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto/16 :goto_128

    .line 180
    :cond_62
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /param, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 185
    :cond_82
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 186
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->endValueTag()V

    goto/16 :goto_128

    .line 188
    :cond_97
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 165
    :pswitch_b7
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_be

    .line 166
    const-string v0, "params"

    goto :goto_c0

    .line 168
    :cond_be
    const-string v0, "fault"

    .line 170
    .local v0, "tag":Ljava/lang/String;
    :goto_c0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .end local v0    # "tag":Ljava/lang/String;
    goto :goto_128

    .line 171
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_cf
    new-instance v1, Lorg/xml/sax/SAXParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 156
    .end local v0    # "tag":Ljava/lang/String;
    :pswitch_f7
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    const-string v0, "methodResponse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    goto :goto_128

    .line 157
    :cond_108
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /methodResponse element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 211
    :goto_128
    return-void

    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_b7
        :pswitch_4c
        :pswitch_e
    .end packed-switch
.end method

.method public getErrorCause()Ljava/lang/Throwable;
    .registers 2

    .line 235
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 225
    iget v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    return v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startDocument()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->level:I

    .line 91
    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    .line 92
    iput v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorCode:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->errorMessage:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .param p1, "pURI"    # Ljava/lang/String;
    .param p2, "pLocalName"    # Ljava/lang/String;
    .param p3, "pQName"    # Ljava/lang/String;
    .param p4, "pAttrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->level:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->level:I

    packed-switch v0, :pswitch_data_132

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_130

    .line 135
    :pswitch_e
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_47

    .line 136
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 137
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->startValueTag()V

    goto/16 :goto_130

    .line 139
    :cond_27
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected value element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 144
    :cond_47
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 146
    goto/16 :goto_130

    .line 118
    :pswitch_4c
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    if-eqz v0, :cond_82

    .line 119
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "param"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto/16 :goto_130

    .line 120
    :cond_62
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected param element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 125
    :cond_82
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 126
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->startValueTag()V

    goto/16 :goto_130

    .line 128
    :cond_97
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected value element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 107
    :pswitch_b7
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string v0, "params"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    goto :goto_130

    .line 109
    :cond_cb
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string v0, "fault"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess:Z

    goto :goto_130

    .line 112
    :cond_df
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected params or fault element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 100
    :pswitch_ff
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "methodResponse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    goto :goto_130

    .line 101
    :cond_110
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected methodResponse element, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 151
    :goto_130
    return-void

    nop

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_b7
        :pswitch_4c
        :pswitch_e
    .end packed-switch
.end method
