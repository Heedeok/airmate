.class public Lorg/apache/ws/commons/serialize/DOMSerializer;
.super Ljava/lang/Object;
.source "DOMSerializer.java"


# instance fields
.field private namespaceDeclarationAttribute:Z

.field private parentsNamespaceDeclarationDisabled:Z

.field private startingDocument:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    return-void
.end method

.method private characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "pValue"    # Ljava/lang/String;
    .param p3, "pCdata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    if-eqz p3, :cond_c

    .line 201
    instance-of v1, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    nop

    .line 202
    .local v0, "lh":Lorg/xml/sax/ext/LexicalHandler;
    :cond_b
    goto :goto_d

    .line 203
    .end local v0    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :cond_c
    nop

    .line 205
    .restart local v0    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    :goto_d
    if-eqz v0, :cond_12

    .line 206
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 208
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 209
    if-eqz v0, :cond_23

    .line 210
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 212
    :cond_23
    return-void
.end method

.method private endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 8
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 186
    .local v0, "nnm":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_28

    .line 187
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_28

    .line 188
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 189
    .local v2, "attr":Lorg/w3c/dom/Node;
    const-string v3, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 190
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 187
    .end local v2    # "attr":Lorg/w3c/dom/Node;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 195
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method private parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_13

    .line 141
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 142
    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 144
    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 146
    :cond_13
    return-void
.end method

.method private parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_13

    .line 123
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 124
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 125
    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 128
    :cond_13
    return-void
.end method

.method private startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 9
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 156
    .local v0, "nnm":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_68

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 158
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 159
    .local v2, "attr":Lorg/w3c/dom/Node;
    const-string v3, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 161
    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 162
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "prefix":Ljava/lang/String;
    goto :goto_3d

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2e
    const-string v3, "xmlns"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 164
    const-string v3, ""

    .line 165
    .restart local v3    # "prefix":Ljava/lang/String;
    nop

    .line 166
    :goto_3d
    nop

    .line 168
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "uri":Ljava/lang/String;
    if-nez v4, :cond_46

    .line 170
    const-string v4, ""

    .line 172
    :cond_46
    invoke-interface {p2, v3, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 166
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_4a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to parse namespace declaration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v2    # "attr":Lorg/w3c/dom/Node;
    :cond_65
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 176
    .end local v1    # "i":I
    :cond_68
    return-void
.end method


# virtual methods
.method protected doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 19
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_10e

    .line 321
    :pswitch_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown node type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :pswitch_27
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 261
    goto/16 :goto_10c

    .line 250
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isStartingDocument()Z

    move-result v2

    .line 251
    .local v2, "startDocumentEvent":Z
    if-eqz v2, :cond_35

    .line 252
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 254
    :cond_35
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 255
    if-eqz v2, :cond_10c

    .line 256
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 257
    goto/16 :goto_10c

    .line 315
    .end local v2    # "startDocumentEvent":Z
    :pswitch_3f
    instance-of v2, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_10c

    .line 316
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "s":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v4, v5, v3, v6}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 318
    .end local v2    # "s":Ljava/lang/String;
    goto/16 :goto_10c

    .line 309
    :pswitch_57
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    goto/16 :goto_10c

    .line 312
    :pswitch_64
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 313
    goto/16 :goto_10c

    .line 306
    :pswitch_6d
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ws/commons/serialize/DOMSerializer;->characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V

    .line 307
    goto/16 :goto_10c

    .line 303
    :pswitch_77
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ws/commons/serialize/DOMSerializer;->characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V

    .line 304
    goto/16 :goto_10c

    .line 263
    :pswitch_80
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 264
    .local v2, "attr":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v10

    .line 265
    .local v10, "isNamespaceDeclarationAttribute":Z
    if-nez v10, :cond_8e

    .line 266
    invoke-direct/range {p0 .. p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 268
    :cond_8e
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 269
    .local v11, "nnm":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v11, :cond_e5

    .line 270
    nop

    .local v3, "i":I
    :goto_95
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_e5

    .line 271
    invoke-interface {v11, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 272
    .local v12, "a":Lorg/w3c/dom/Node;
    if-nez v10, :cond_ad

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    .line 274
    :cond_ad
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, "aUri":Ljava/lang/String;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "aLocalName":Ljava/lang/String;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "aNodeName":Ljava/lang/String;
    if-nez v4, :cond_ce

    .line 278
    if-eqz v13, :cond_cc

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c4

    goto :goto_cc

    .line 281
    :cond_c4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "aLocalName is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 279
    :cond_cc
    :goto_cc
    move-object v4, v14

    .line 280
    nop

    .line 284
    .end local v4    # "aLocalName":Ljava/lang/String;
    .local v15, "aLocalName":Ljava/lang/String;
    :cond_ce
    move-object v15, v4

    if-nez v13, :cond_d5

    const-string v4, ""

    move-object v5, v4

    goto :goto_d6

    :cond_d5
    move-object v5, v13

    :goto_d6
    const-string v8, "CDATA"

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v4 .. v9}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v12    # "a":Lorg/w3c/dom/Node;
    .end local v13    # "aUri":Ljava/lang/String;
    .end local v14    # "aNodeName":Ljava/lang/String;
    .end local v15    # "aLocalName":Ljava/lang/String;
    :cond_e2
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 289
    .end local v3    # "i":I
    :cond_e5
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "nUri":Ljava/lang/String;
    if-nez v3, :cond_ed

    .line 291
    const-string v3, ""

    .line 293
    :cond_ed
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 295
    invoke-virtual/range {p0 .. p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 296
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez v10, :cond_10c

    .line 299
    invoke-direct/range {p0 .. p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 300
    nop

    .line 323
    .end local v2    # "attr":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v3    # "nUri":Ljava/lang/String;
    .end local v10    # "isNamespaceDeclarationAttribute":Z
    .end local v11    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_10c
    :goto_10c
    return-void

    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_80
        :pswitch_c
        :pswitch_77
        :pswitch_6d
        :pswitch_64
        :pswitch_c
        :pswitch_57
        :pswitch_3f
        :pswitch_2c
        :pswitch_c
        :pswitch_27
    .end packed-switch
.end method

.method protected doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v0, :cond_e

    .line 108
    invoke-virtual {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 107
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 110
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_e
    return-void
.end method

.method public isNamespaceDeclarationAttribute()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->namespaceDeclarationAttribute:Z

    return v0
.end method

.method public isParentsNamespaceDeclarationDisabled()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsNamespaceDeclarationDisabled:Z

    return v0
.end method

.method public isStartingDocument()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .param p1, "pNode"    # Lorg/w3c/dom/Node;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isParentsNamespaceDeclarationDisabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 225
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 227
    :cond_13
    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 228
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isParentsNamespaceDeclarationDisabled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 230
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    .line 232
    :cond_29
    return-void
.end method

.method public setNamespaceDeclarationAttribute(Z)V
    .registers 2
    .param p1, "pXmlDeclarationAttribute"    # Z

    .line 40
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->namespaceDeclarationAttribute:Z

    .line 41
    return-void
.end method

.method public setParentsNamespaceDeclarationDisabled(Z)V
    .registers 2
    .param p1, "pParentsXmlDeclarationDisabled"    # Z

    .line 61
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsNamespaceDeclarationDisabled:Z

    .line 62
    return-void
.end method

.method public setStartingDocument(Z)V
    .registers 2
    .param p1, "pStartingDocument"    # Z

    .line 96
    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    .line 97
    return-void
.end method
