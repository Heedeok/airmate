.class public Lorg/apache/xmlrpc/parser/MapParser;
.super Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;
.source "MapParser.java"


# instance fields
.field private doneValue:Z

.field private inName:Z

.field private inValue:Z

.field private level:I

.field private map:Ljava/util/Map;

.field private nameBuffer:Ljava/lang/StringBuffer;

.field private nameObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pContext"    # Lorg/apache/ws/commons/util/NamespaceContextImpl;
    .param p3, "pFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    .line 55
    return-void
.end method


# virtual methods
.method protected addResult(Ljava/lang/Object;)V
    .registers 5
    .param p1, "pResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_7

    .line 59
    iput-object p1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    goto :goto_1c

    .line 61
    :cond_7
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    .line 65
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 69
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_1c
    return-void

    .line 66
    :cond_1d
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 62
    :cond_3a
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 63
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: Expected name"

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public characters([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    if-nez v0, :cond_e

    .line 84
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 86
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->characters([CII)V

    .line 88
    :goto_11
    return-void
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

    .line 165
    iget v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    packed-switch v0, :pswitch_data_78

    .line 197
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 190
    :pswitch_e
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    if-eqz v0, :cond_2a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 191
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->endValueTag()V

    goto :goto_77

    .line 193
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    goto :goto_77

    .line 172
    :pswitch_2e
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_66

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    .line 174
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    if-nez v1, :cond_42

    .line 175
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    goto :goto_77

    .line 177
    :cond_42
    nop

    .local v0, "i":I
    :goto_43
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 178
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 179
    :cond_5a
    new-instance v1, Lorg/xml/sax/SAXParseException;

    .line 180
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    const-string v3, "Unexpected non-whitespace character in member name"

    invoke-direct {v1, v3, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1

    .line 184
    .end local v0    # "i":I
    :cond_66
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    if-eqz v0, :cond_77

    .line 185
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->endValueTag()V

    .line 186
    iput-boolean v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->doneValue:Z

    goto :goto_77

    .line 170
    :pswitch_70
    goto :goto_77

    .line 167
    :pswitch_71
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->map:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/MapParser;->setResult(Ljava/lang/Object;)V

    .line 168
    nop

    .line 199
    :cond_77
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_71
        :pswitch_70
        :pswitch_2e
        :pswitch_e
    .end packed-switch
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_8

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/MapParser;->characters([CII)V

    goto :goto_b

    .line 94
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->ignorableWhitespace([CII)V

    .line 96
    :goto_b
    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    invoke-super {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startDocument()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->map:Ljava/util/Map;

    .line 79
    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    .line 80
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

    .line 100
    iget v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->level:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_160

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_15f

    .line 145
    :pswitch_f
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    if-eqz v0, :cond_52

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 146
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 147
    iput-boolean v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    .line 148
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->startValueTag()V

    goto/16 :goto_15f

    .line 150
    :cond_32
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /name, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 155
    :cond_52
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 157
    goto/16 :goto_15f

    .line 119
    :pswitch_57
    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->doneValue:Z

    if-nez v0, :cond_ce

    .line 124
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 125
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    if-nez v0, :cond_73

    .line 126
    iput-boolean v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    goto/16 :goto_15f

    .line 128
    :cond_73
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected value, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 132
    :cond_93
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    const-string v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 133
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    if-eqz v0, :cond_ae

    .line 138
    iput-boolean v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    .line 139
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->startValueTag()V

    goto/16 :goto_15f

    .line 134
    :cond_ae
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected name, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 120
    :cond_ce
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected /member, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 109
    :pswitch_ee
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "member"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inValue:Z

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->inName:Z

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/MapParser;->doneValue:Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameObject:Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lorg/apache/xmlrpc/parser/MapParser;->nameBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 117
    goto :goto_15f

    .line 110
    :cond_10e
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected member, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 102
    :pswitch_12e
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    const-string v0, "struct"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    goto :goto_15f

    .line 103
    :cond_13f
    new-instance v0, Lorg/xml/sax/SAXParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected struct, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/MapParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 162
    :cond_15f
    :goto_15f
    return-void

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_ee
        :pswitch_57
        :pswitch_f
    .end packed-switch
.end method
