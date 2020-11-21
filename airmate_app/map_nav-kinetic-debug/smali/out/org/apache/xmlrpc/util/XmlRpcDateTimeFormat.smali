.class public abstract Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;
.super Ljava/text/Format;
.source "XmlRpcDateTimeFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x6f22f3194a1af262L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private append(Ljava/lang/StringBuffer;II)V
    .registers 7
    .param p1, "pBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "pNum"    # I
    .param p3, "pMinLen"    # I

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_8
    if-ge v1, p3, :cond_12

    .line 148
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 150
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I
    .registers 8
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "pOffset"    # I
    .param p3, "pDigits"    # Ljava/lang/StringBuffer;
    .param p4, "pMaxDigits"    # I

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 49
    :goto_8
    add-int/lit8 v1, p4, -0x1

    .local v1, "pMaxDigits":I
    if-lez p4, :cond_20

    .end local p4    # "pMaxDigits":I
    if-ge p2, v0, :cond_20

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 51
    .local p4, "c":C
    invoke-static {p4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 52
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 57
    .end local p4    # "c":C
    nop

    .line 49
    move p4, v1

    goto :goto_8

    .line 58
    :cond_20
    return p2
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 9
    .param p1, "pCalendar"    # Ljava/lang/Object;
    .param p2, "pBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "pPos"    # Ljava/text/FieldPosition;

    .line 154
    if-eqz p1, :cond_5c

    .line 157
    if-eqz p2, :cond_54

    .line 160
    if-eqz p3, :cond_4c

    .line 164
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 165
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 166
    .local v2, "year":I
    const/4 v3, 0x4

    invoke-direct {p0, p2, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 167
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, p2, v4, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 168
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 169
    const/16 v1, 0x54

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 171
    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, p2, v4, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    .line 175
    return-object p2

    .line 161
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "year":I
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The FieldPosition argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The StringBuffer argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Calendar argument must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 23
    .param p1, "pString"    # Ljava/lang/String;
    .param p2, "pParsePosition"    # Ljava/text/ParsePosition;

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_f4

    .line 65
    if-eqz v2, :cond_ec

    .line 68
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 69
    .local v3, "offset":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 71
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v5, "digits":Ljava/lang/StringBuffer;
    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v5, v6}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x0

    if-ge v7, v6, :cond_27

    .line 76
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 77
    return-object v8

    .line 79
    :cond_27
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 81
    .local v6, "year":I
    const/4 v7, 0x2

    invoke-direct {v0, v1, v3, v5, v7}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v7, :cond_3e

    .line 83
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 84
    return-object v8

    .line 86
    :cond_3e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 88
    .local v16, "month":I
    invoke-direct {v0, v1, v3, v5, v7}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v7, :cond_54

    .line 90
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 91
    return-object v8

    .line 93
    :cond_54
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 95
    .local v17, "mday":I
    if-ge v3, v4, :cond_e8

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_e8

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 103
    invoke-direct {v0, v1, v3, v5, v7}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v7, :cond_76

    .line 105
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 106
    return-object v8

    .line 108
    :cond_76
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 110
    .local v18, "hour":I
    if-ge v3, v4, :cond_e4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_e4

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 117
    invoke-direct {v0, v1, v3, v5, v7}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v7, :cond_98

    .line 119
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 120
    return-object v8

    .line 122
    :cond_98
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 124
    .local v19, "minute":I
    if-ge v3, v4, :cond_e0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_e0

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 131
    invoke-direct {v0, v1, v3, v5, v7}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v3

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v7, :cond_b8

    .line 133
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 134
    return-object v8

    .line 136
    :cond_b8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 138
    .local v7, "second":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 139
    .local v8, "cal":Ljava/util/Calendar;
    add-int/lit8 v11, v16, -0x1

    move-object v9, v8

    move v10, v6

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move v15, v7

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 140
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 141
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 142
    return-object v8

    .line 127
    .end local v7    # "second":I
    .end local v8    # "cal":Ljava/util/Calendar;
    :cond_e0
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 128
    return-object v8

    .line 113
    .end local v19    # "minute":I
    :cond_e4
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 114
    return-object v8

    .line 98
    .end local v18    # "hour":I
    :cond_e8
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 99
    return-object v8

    .line 66
    .end local v3    # "offset":I
    .end local v4    # "length":I
    .end local v5    # "digits":Ljava/lang/StringBuffer;
    .end local v6    # "year":I
    .end local v16    # "month":I
    .end local v17    # "mday":I
    :cond_ec
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The ParsePosition argument must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_f4
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The String argument must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
