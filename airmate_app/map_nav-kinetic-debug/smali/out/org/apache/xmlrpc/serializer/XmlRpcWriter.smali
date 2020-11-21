.class public Lorg/apache/xmlrpc/serializer/XmlRpcWriter;
.super Ljava/lang/Object;
.source "XmlRpcWriter.java"


# static fields
.field public static final EXTENSIONS_URI:Ljava/lang/String; = "http://ws.apache.org/xmlrpc/namespaces/extensions"

.field private static final ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;


# instance fields
.field private final config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

.field private final handler:Lorg/xml/sax/ContentHandler;

.field private final typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/xml/sax/ContentHandler;Lorg/apache/xmlrpc/common/TypeFactory;)V
    .registers 4
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pHandler"    # Lorg/xml/sax/ContentHandler;
    .param p3, "pTypeFactory"    # Lorg/apache/xmlrpc/common/TypeFactory;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    .line 57
    iput-object p2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    .line 58
    iput-object p3, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    .line 59
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .registers 11
    .param p1, "pRequest"    # Lorg/apache/xmlrpc/XmlRpcRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 67
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    .line 68
    .local v0, "extensions":Z
    if-eqz v0, :cond_18

    .line 69
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, "ex"

    const-string v3, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_18
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "methodCall"

    const-string v4, "methodCall"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "methodName"

    const-string v4, "methodName"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 75
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    const-string v4, "methodName"

    const-string v6, "methodName"

    invoke-interface {v2, v3, v4, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    const-string v4, "params"

    const-string v6, "params"

    sget-object v7, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v2, v3, v4, v6, v7}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameterCount()I

    move-result v2

    .line 78
    .local v2, "num":I
    nop

    .local v5, "i":I
    :goto_61
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_86

    .line 79
    iget-object v4, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v5, ""

    const-string v6, "param"

    const-string v7, "param"

    sget-object v8, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 80
    invoke-interface {p1, v3}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameter(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->writeValue(Ljava/lang/Object;)V

    .line 81
    iget-object v4, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v5, ""

    const-string v6, "param"

    const-string v7, "param"

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v5, v3, 0x1

    goto :goto_61

    .line 83
    .end local v3    # "i":I
    :cond_86
    iget-object v3, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v4, ""

    const-string v5, "params"

    const-string v6, "params"

    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v4, ""

    const-string v5, "methodCall"

    const-string v6, "methodCall"

    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz v0, :cond_a5

    .line 86
    iget-object v3, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v4, "ex"

    invoke-interface {v3, v4}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 88
    :cond_a5
    iget-object v3, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 89
    return-void
.end method

.method public write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;ILjava/lang/String;)V
    .registers 5
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .param p2, "pCode"    # I
    .param p3, "pMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .param p2, "pCode"    # I
    .param p3, "pMessage"    # Ljava/lang/String;
    .param p4, "pThrowable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 135
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    .line 136
    .local v0, "extensions":Z
    if-eqz v0, :cond_14

    .line 137
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, "ex"

    const-string v3, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_14
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "methodResponse"

    const-string v4, "methodResponse"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 140
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "fault"

    const-string v4, "fault"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v1, "map":Ljava/util/Map;
    const-string v2, "faultCode"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "faultString"

    if-nez p3, :cond_44

    const-string v3, ""

    goto :goto_45

    :cond_44
    move-object v3, p3

    :goto_45
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    if-eqz p4, :cond_77

    if-eqz v0, :cond_77

    instance-of v2, p1, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    if-eqz v2, :cond_77

    move-object v2, p1

    check-cast v2, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    .line 145
    invoke-interface {v2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExceptions()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 147
    :try_start_59
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 151
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 152
    const-string v4, "faultCause"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_75} :catch_76

    .line 155
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_77

    .line 153
    :catch_76
    move-exception v2

    .line 157
    :cond_77
    :goto_77
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->writeValue(Ljava/lang/Object;)V

    .line 158
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    const-string v4, "fault"

    const-string v5, "fault"

    invoke-interface {v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    const-string v4, "methodResponse"

    const-string v5, "methodResponse"

    invoke-interface {v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz v0, :cond_99

    .line 161
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v3, "ex"

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 163
    :cond_99
    iget-object v2, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 164
    return-void
.end method

.method public write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/Object;)V
    .registers 9
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .param p2, "pResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 98
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    .line 99
    .local v0, "extensions":Z
    if-eqz v0, :cond_14

    .line 100
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, "ex"

    const-string v3, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_14
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "methodResponse"

    const-string v4, "methodResponse"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 103
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "params"

    const-string v4, "params"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 104
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "param"

    const-string v4, "param"

    sget-object v5, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 105
    invoke-virtual {p0, p2}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->writeValue(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "param"

    const-string v4, "param"

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "params"

    const-string v4, "params"

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, ""

    const-string v3, "methodResponse"

    const-string v4, "methodResponse"

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz v0, :cond_68

    .line 110
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    const-string v2, "ex"

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 112
    :cond_68
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 113
    return-void
.end method

.method protected writeValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {v0, v1, p1}, Lorg/apache/xmlrpc/common/TypeFactory;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object v0

    .line 172
    .local v0, "serializer":Lorg/apache/xmlrpc/serializer/TypeSerializer;
    if-eqz v0, :cond_10

    .line 175
    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v1, p1}, Lorg/apache/xmlrpc/serializer/TypeSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    .line 176
    return-void

    .line 173
    :cond_10
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Java type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
