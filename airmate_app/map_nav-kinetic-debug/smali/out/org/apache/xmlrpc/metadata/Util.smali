.class public Lorg/apache/xmlrpc/metadata/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final jaxbElementClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    :try_start_0
    const-string v0, "javax.xml.bind.Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    .line 48
    .local v0, "c":Ljava/lang/Class;
    goto :goto_9

    .line 46
    .end local v0    # "c":Ljava/lang/Class;
    :catch_7
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 49
    .local v0, "c":Ljava/lang/Class;
    :goto_9
    sput-object v0, Lorg/apache/xmlrpc/metadata/Util;->jaxbElementClass:Ljava/lang/Class;

    .line 50
    .end local v0    # "c":Ljava/lang/Class;
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMethodHelp(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 6
    .param p0, "pClass"    # Ljava/lang/Class;
    .param p1, "pMethod"    # Ljava/lang/reflect/Method;

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Invokes the method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 182
    .local v1, "paramClasses":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    array-length v3, v1

    if-ge v2, v3, :cond_3d

    .line 183
    if-lez v2, :cond_31

    .line 184
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :cond_31
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 188
    .end local v2    # "i":I
    :cond_3d
    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 6
    .param p0, "pClass"    # Ljava/lang/Class;
    .param p1, "pMethods"    # [Ljava/lang/reflect/Method;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_18

    .line 149
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lorg/apache/xmlrpc/metadata/Util;->getMethodHelp(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "help":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v3    # "help":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 154
    .end local v2    # "i":I
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    .line 160
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v2, "sb":Ljava/lang/StringBuffer;
    goto :goto_2e

    .line 158
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :pswitch_25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 156
    :pswitch_2c
    const/4 v1, 0x0

    return-object v1

    .line 161
    .local v1, "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4d

    .line 162
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 165
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 167
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method public static getSignature([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "args"    # [Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 198
    if-lez v1, :cond_10

    .line 199
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_10
    aget-object v2, p0, v1

    if-nez v2, :cond_1a

    .line 202
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 204
    :cond_1a
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 207
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSignature(Ljava/lang/reflect/Method;)[Ljava/lang/String;
    .registers 7
    .param p0, "pMethod"    # Ljava/lang/reflect/Method;

    .line 126
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "paramClasses":[Ljava/lang/Class;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 128
    .local v1, "sig":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlrpc/metadata/Util;->getSignatureType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 130
    return-object v3

    .line 132
    :cond_15
    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 133
    nop

    .local v4, "i":I
    :goto_19
    array-length v5, v0

    if-ge v4, v5, :cond_2c

    .line 134
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/apache/xmlrpc/metadata/Util;->getSignatureType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 135
    if-nez v2, :cond_25

    .line 136
    return-object v3

    .line 138
    :cond_25
    add-int/lit8 v5, v4, 0x1

    aput-object v2, v1, v5

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 140
    .end local v4    # "i":I
    :cond_2c
    return-object v1
.end method

.method public static getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;
    .registers 4
    .param p0, "pMethods"    # [Ljava/lang/reflect/Method;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 111
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/xmlrpc/metadata/Util;->getSignature(Ljava/lang/reflect/Method;)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "sig":[Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 113
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "sig":[Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 116
    .end local v1    # "i":I
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    return-object v1
.end method

.method public static getSignatureType(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "pType"    # Ljava/lang/Class;

    .line 59
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_c4

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_a

    goto/16 :goto_c4

    .line 61
    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_c1

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_14

    goto/16 :goto_c1

    .line 63
    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_be

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1e

    goto/16 :goto_be

    .line 65
    :cond_1e
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_25

    .line 66
    const-string v0, "string"

    return-object v0

    .line 67
    :cond_25
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_bb

    const-class v0, Ljava/util/List;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto/16 :goto_bb

    .line 70
    :cond_37
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 71
    const-string v0, "struct"

    return-object v0

    .line 72
    :cond_42
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-class v0, Ljava/util/Calendar;

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_b8

    .line 75
    :cond_53
    const-class v0, [B

    if-ne p0, v0, :cond_5a

    .line 76
    const-string v0, "base64"

    return-object v0

    .line 79
    :cond_5a
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_61

    .line 80
    const-string v0, "ex:nil"

    return-object v0

    .line 81
    :cond_61
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_b5

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_6a

    goto :goto_b5

    .line 83
    :cond_6a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_b2

    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_73

    goto :goto_b2

    .line 85
    :cond_73
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_af

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_7c

    goto :goto_af

    .line 87
    :cond_7c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_ac

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_85

    goto :goto_ac

    .line 89
    :cond_85
    const-class v0, Lorg/w3c/dom/Node;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 90
    const-string v0, "ex:node"

    return-object v0

    .line 91
    :cond_90
    sget-object v0, Lorg/apache/xmlrpc/metadata/Util;->jaxbElementClass:Ljava/lang/Class;

    if-eqz v0, :cond_9f

    sget-object v0, Lorg/apache/xmlrpc/metadata/Util;->jaxbElementClass:Ljava/lang/Class;

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 93
    const-string v0, "ex:jaxbElement"

    return-object v0

    .line 95
    :cond_9f
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 96
    const-string v0, "base64"

    return-object v0

    .line 99
    :cond_aa
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_ac
    :goto_ac
    const-string v0, "ex:float"

    return-object v0

    .line 86
    :cond_af
    :goto_af
    const-string v0, "ex:i8"

    return-object v0

    .line 84
    :cond_b2
    :goto_b2
    const-string v0, "ex:i2"

    return-object v0

    .line 82
    :cond_b5
    :goto_b5
    const-string v0, "ex:i1"

    return-object v0

    .line 74
    :cond_b8
    :goto_b8
    const-string v0, "dateTime.iso8601"

    return-object v0

    .line 69
    :cond_bb
    :goto_bb
    const-string v0, "array"

    return-object v0

    .line 64
    :cond_be
    :goto_be
    const-string v0, "boolean"

    return-object v0

    .line 62
    :cond_c1
    :goto_c1
    const-string v0, "double"

    return-object v0

    .line 60
    :cond_c4
    :goto_c4
    const-string v0, "int"

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "pClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 218
    :catch_5
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access when instantiating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 216
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_21
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
