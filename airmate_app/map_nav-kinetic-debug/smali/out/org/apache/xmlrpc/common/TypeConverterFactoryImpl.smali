.class public Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.super Ljava/lang/Object;
.source "TypeConverterFactoryImpl.java"

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;
    }
.end annotation


# static fields
.field private static final bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 110
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 111
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 112
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, [B

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 113
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 114
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 115
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 116
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 117
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 118
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 119
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 120
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 121
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 122
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 123
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 124
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 125
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 126
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 127
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 128
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 129
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 130
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 131
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 132
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 133
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 134
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 136
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$1;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$1;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 155
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 172
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$3;

    const-class v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$3;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    .line 178
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$4;

    const-class v1, Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$4;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;
    .registers 5
    .param p1, "pClass"    # Ljava/lang/Class;

    .line 203
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 206
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 207
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 209
    :cond_16
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 210
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 212
    :cond_21
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 213
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 215
    :cond_2c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 216
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 218
    :cond_37
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 219
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 221
    :cond_42
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 222
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 224
    :cond_4d
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 225
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 227
    :cond_58
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 228
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 230
    :cond_63
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 231
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 233
    :cond_6e
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 234
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 236
    :cond_79
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 237
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 239
    :cond_84
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 240
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 242
    :cond_8f
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 243
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 245
    :cond_9a
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 246
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 248
    :cond_a5
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 249
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 251
    :cond_b0
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 252
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 254
    :cond_bb
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 255
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 257
    :cond_c6
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 258
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 260
    :cond_d1
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 261
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 263
    :cond_dc
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 264
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 266
    :cond_e7
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 267
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 269
    :cond_f2
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 270
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 272
    :cond_fd
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 273
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 275
    :cond_108
    const-class v0, Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 276
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 278
    :cond_113
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 279
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 281
    :cond_11e
    const-class v0, Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 282
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 284
    :cond_129
    const-class v0, Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 285
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 287
    :cond_134
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 288
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 290
    :cond_13f
    const-class v0, Lorg/w3c/dom/Document;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 291
    sget-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object v0

    .line 293
    :cond_14a
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 294
    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 296
    :cond_158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter or result type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
