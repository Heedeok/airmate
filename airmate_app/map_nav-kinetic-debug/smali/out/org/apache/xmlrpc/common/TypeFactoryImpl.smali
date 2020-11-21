.class public Lorg/apache/xmlrpc/common/TypeFactoryImpl;
.super Ljava/lang/Object;
.source "TypeFactoryImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeFactory;


# static fields
.field private static final BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;


# instance fields
.field private final controller:Lorg/apache/xmlrpc/common/XmlRpcController;

.field private dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lorg/apache/xmlrpc/serializer/NullSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/NullSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 80
    new-instance v0, Lorg/apache/xmlrpc/serializer/StringSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/StringSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 81
    new-instance v0, Lorg/apache/xmlrpc/serializer/I4Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I4Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 82
    new-instance v0, Lorg/apache/xmlrpc/serializer/BooleanSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BooleanSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 83
    new-instance v0, Lorg/apache/xmlrpc/serializer/DoubleSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DoubleSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 84
    new-instance v0, Lorg/apache/xmlrpc/serializer/I1Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I1Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 85
    new-instance v0, Lorg/apache/xmlrpc/serializer/I2Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I2Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 86
    new-instance v0, Lorg/apache/xmlrpc/serializer/I8Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I8Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 87
    new-instance v0, Lorg/apache/xmlrpc/serializer/FloatSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/FloatSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 88
    new-instance v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/NodeSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 89
    new-instance v0, Lorg/apache/xmlrpc/serializer/SerializableSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/SerializableSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 90
    new-instance v0, Lorg/apache/xmlrpc/serializer/BigDecimalSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BigDecimalSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 91
    new-instance v0, Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    .line 92
    new-instance v0, Lorg/apache/xmlrpc/serializer/CalendarSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/CalendarSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V
    .registers 2
    .param p1, "pController"    # Lorg/apache/xmlrpc/common/XmlRpcController;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)Lorg/apache/xmlrpc/common/XmlRpcController;
    .registers 2
    .param p0, "x0"    # Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    .line 78
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object v0
.end method


# virtual methods
.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .registers 2

    .line 110
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object v0
.end method

.method public getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;
    .registers 7
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pContext"    # Lorg/apache/ws/commons/util/NamespaceContextImpl;
    .param p3, "pURI"    # Ljava/lang/String;
    .param p4, "pLocalName"    # Ljava/lang/String;

    .line 206
    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    .line 207
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-nez v0, :cond_10

    .line 208
    return-object v1

    .line 210
    :cond_10
    const-string v0, "nil"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 211
    new-instance v0, Lorg/apache/xmlrpc/parser/NullParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/NullParser;-><init>()V

    return-object v0

    .line 212
    :cond_1e
    const-string v0, "i1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 213
    new-instance v0, Lorg/apache/xmlrpc/parser/I1Parser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/I1Parser;-><init>()V

    return-object v0

    .line 214
    :cond_2c
    const-string v0, "i2"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 215
    new-instance v0, Lorg/apache/xmlrpc/parser/I2Parser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/I2Parser;-><init>()V

    return-object v0

    .line 216
    :cond_3a
    const-string v0, "i8"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 217
    new-instance v0, Lorg/apache/xmlrpc/parser/I8Parser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/I8Parser;-><init>()V

    return-object v0

    .line 218
    :cond_48
    const-string v0, "float"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 219
    new-instance v0, Lorg/apache/xmlrpc/parser/FloatParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/FloatParser;-><init>()V

    return-object v0

    .line 220
    :cond_56
    const-string v0, "dom"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 221
    new-instance v0, Lorg/apache/xmlrpc/parser/NodeParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/NodeParser;-><init>()V

    return-object v0

    .line 222
    :cond_64
    const-string v0, "bigdecimal"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 223
    new-instance v0, Lorg/apache/xmlrpc/parser/BigDecimalParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/BigDecimalParser;-><init>()V

    return-object v0

    .line 224
    :cond_72
    const-string v0, "biginteger"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 225
    new-instance v0, Lorg/apache/xmlrpc/parser/BigIntegerParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/BigIntegerParser;-><init>()V

    return-object v0

    .line 226
    :cond_80
    const-string v0, "serializable"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 227
    new-instance v0, Lorg/apache/xmlrpc/parser/SerializableParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/SerializableParser;-><init>()V

    return-object v0

    .line 228
    :cond_8e
    const-string v0, "dateTime"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 229
    new-instance v0, Lorg/apache/xmlrpc/parser/CalendarParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/CalendarParser;-><init>()V

    return-object v0

    .line 231
    :cond_9c
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 232
    const-string v0, "int"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    const-string v0, "i4"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    goto :goto_11c

    .line 234
    :cond_b5
    const-string v0, "boolean"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 235
    new-instance v0, Lorg/apache/xmlrpc/parser/BooleanParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/BooleanParser;-><init>()V

    return-object v0

    .line 236
    :cond_c3
    const-string v0, "double"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 237
    new-instance v0, Lorg/apache/xmlrpc/parser/DoubleParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/DoubleParser;-><init>()V

    return-object v0

    .line 238
    :cond_d1
    const-string v0, "dateTime.iso8601"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 239
    new-instance v0, Lorg/apache/xmlrpc/parser/DateParser;

    new-instance v1, Lorg/apache/xmlrpc/common/TypeFactoryImpl$2;

    invoke-direct {v1, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl$2;-><init>(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)V

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/parser/DateParser;-><init>(Ljava/text/Format;)V

    return-object v0

    .line 245
    :cond_e4
    const-string v0, "array"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 246
    new-instance v0, Lorg/apache/xmlrpc/parser/ObjectArrayParser;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xmlrpc/parser/ObjectArrayParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object v0

    .line 247
    :cond_f2
    const-string v0, "struct"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 248
    new-instance v0, Lorg/apache/xmlrpc/parser/MapParser;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xmlrpc/parser/MapParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object v0

    .line 249
    :cond_100
    const-string v0, "base64"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 250
    new-instance v0, Lorg/apache/xmlrpc/parser/ByteArrayParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;-><init>()V

    return-object v0

    .line 251
    :cond_10e
    const-string v0, "string"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 252
    new-instance v0, Lorg/apache/xmlrpc/parser/StringParser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/StringParser;-><init>()V

    return-object v0

    .line 233
    :cond_11c
    :goto_11c
    new-instance v0, Lorg/apache/xmlrpc/parser/I4Parser;

    invoke-direct {v0}, Lorg/apache/xmlrpc/parser/I4Parser;-><init>()V

    return-object v0

    .line 255
    :cond_122
    return-object v1
.end method

.method public getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
    .registers 6
    .param p1, "pConfig"    # Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;
    .param p2, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    if-nez p2, :cond_18

    .line 115
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 118
    :cond_b
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Null values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 120
    :cond_18
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 121
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 122
    :cond_1f
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_39

    .line 123
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 124
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 126
    :cond_2c
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Byte values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 128
    :cond_39
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_53

    .line 129
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 130
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 132
    :cond_46
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Short values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 134
    :cond_53
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5a

    .line 135
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 136
    :cond_5a
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_74

    .line 137
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 138
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 140
    :cond_67
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Long values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 142
    :cond_74
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7b

    .line 143
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 144
    :cond_7b
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_95

    .line 145
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 146
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 148
    :cond_88
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Float values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 150
    :cond_95
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9c

    .line 151
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 152
    :cond_9c
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_b6

    .line 153
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 154
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 156
    :cond_a9
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Calendar values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 158
    :cond_b6
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_cd

    .line 159
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    if-nez v0, :cond_ca

    .line 160
    new-instance v0, Lorg/apache/xmlrpc/serializer/DateSerializer;

    new-instance v1, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;

    invoke-direct {v1, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;-><init>(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)V

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/serializer/DateSerializer;-><init>(Ljava/text/Format;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    .line 167
    :cond_ca
    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    return-object v0

    .line 168
    :cond_cd
    instance-of v0, p2, [B

    if-eqz v0, :cond_d7

    .line 169
    new-instance v0, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;-><init>()V

    return-object v0

    .line 170
    :cond_d7
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_e1

    .line 171
    new-instance v0, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object v0

    .line 172
    :cond_e1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_eb

    .line 173
    new-instance v0, Lorg/apache/xmlrpc/serializer/ListSerializer;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/serializer/ListSerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object v0

    .line 174
    :cond_eb
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_f5

    .line 175
    new-instance v0, Lorg/apache/xmlrpc/serializer/MapSerializer;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/serializer/MapSerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object v0

    .line 176
    :cond_f5
    instance-of v0, p2, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_10f

    .line 177
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 178
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 180
    :cond_102
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "DOM nodes aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 182
    :cond_10f
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_129

    .line 183
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 184
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 186
    :cond_11c
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "BigInteger values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 188
    :cond_129
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-eqz v0, :cond_143

    .line 189
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 190
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 192
    :cond_136
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "BigDecimal values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 194
    :cond_143
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_15d

    .line 195
    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 196
    sget-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object v0

    .line 198
    :cond_150
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v2, "Serializable objects aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 201
    :cond_15d
    const/4 v0, 0x0

    return-object v0
.end method
