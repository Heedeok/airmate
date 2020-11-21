.class final Lorg/xbill/DNS/TypeBitmap;
.super Ljava/lang/Object;
.source "TypeBitmap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bd58d9f278bf4bL


# instance fields
.field private types:Ljava/util/TreeSet;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .registers 12
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    .line 37
    const/4 v0, -0x1

    .line 38
    .local v0, "lastbase":I
    :goto_4
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_68

    .line 39
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_60

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 43
    .local v1, "mapbase":I
    if-lt v1, v0, :cond_58

    .line 45
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 46
    .local v2, "maplength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_50

    .line 48
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v2, :cond_4f

    .line 49
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 50
    .local v5, "current":I
    if-nez v5, :cond_2c

    .line 51
    goto :goto_4c

    .line 52
    :cond_2c
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2d
    const/16 v7, 0x8

    if-ge v6, v7, :cond_4c

    .line 53
    rsub-int/lit8 v7, v6, 0x7

    const/4 v8, 0x1

    shl-int v7, v8, v7

    and-int/2addr v7, v5

    if-nez v7, :cond_3a

    .line 54
    goto :goto_49

    .line 55
    :cond_3a
    mul-int/lit16 v7, v1, 0x100

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 56
    .local v7, "typecode":I
    iget-object v8, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {v7}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v7    # "typecode":I
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 48
    .end local v5    # "current":I
    .end local v6    # "j":I
    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 59
    .end local v1    # "mapbase":I
    .end local v2    # "maplength":I
    .end local v4    # "i":I
    :cond_4f
    goto :goto_4

    .line 47
    .restart local v1    # "mapbase":I
    .restart local v2    # "maplength":I
    :cond_50
    new-instance v3, Lorg/xbill/DNS/WireParseException;

    const-string v4, "invalid bitmap"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    .end local v2    # "maplength":I
    :cond_58
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v3, "invalid ordering"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    .end local v1    # "mapbase":I
    :cond_60
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid bitmap descriptor"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_68
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Tokenizer;)V
    .registers 6
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    .line 66
    :goto_3
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 67
    .local v0, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_12

    .line 68
    nop

    .line 75
    .end local v0    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 76
    return-void

    .line 69
    .restart local v0    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    :cond_12
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "typecode":I
    if-ltz v1, :cond_24

    .line 73
    iget-object v2, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {v1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v0    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .end local v1    # "typecode":I
    goto :goto_3

    .line 71
    .restart local v0    # "t":Lorg/xbill/DNS/Tokenizer$Token;
    .restart local v1    # "typecode":I
    :cond_24
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public constructor <init>([I)V
    .registers 6
    .param p1, "array"    # [I

    .line 27
    invoke-direct {p0}, Lorg/xbill/DNS/TypeBitmap;-><init>()V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 29
    aget v1, p1, v0

    invoke-static {v1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 30
    iget-object v1, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 32
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private static mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V
    .registers 12
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "map"    # Ljava/util/TreeSet;
    .param p2, "mapbase"    # I

    .line 100
    invoke-virtual {p1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 101
    .local v0, "arraymax":I
    div-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 102
    .local v1, "arraylength":I
    new-array v3, v1, [I

    .line 103
    .local v3, "array":[I
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 104
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 105
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    .local v5, "typecode":I
    and-int/lit16 v6, v5, 0xff

    div-int/lit8 v6, v6, 0x8

    aget v7, v3, v6

    rem-int/lit8 v8, v5, 0x8

    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    aput v7, v3, v6

    .line 108
    .end local v5    # "typecode":I
    goto :goto_1c

    .line 109
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3c
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3d
    if-ge v2, v1, :cond_47

    .line 110
    aget v4, v3, v2

    invoke-virtual {p0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 111
    .end local v2    # "j":I
    :cond_47
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 4
    .param p1, "typecode"    # I

    .line 143
    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public empty()Z
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toArray()[I
    .registers 6

    .line 80
    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 81
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 82
    .local v1, "n":I
    iget-object v2, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 83
    add-int/lit8 v3, v1, 0x1

    .local v3, "n":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 82
    move v1, v3

    goto :goto_f

    .line 84
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "n":I
    :cond_25
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    .local v2, "t":I
    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    .end local v2    # "t":I
    goto :goto_b

    .line 95
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;)V
    .registers 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 116
    return-void

    .line 118
    :cond_9
    const/4 v0, -0x1

    .line 119
    .local v0, "mapbase":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 121
    .local v1, "map":Ljava/util/TreeSet;
    iget-object v2, p0, Lorg/xbill/DNS/TypeBitmap;->types:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 123
    .local v3, "t":I
    shr-int/lit8 v4, v3, 0x8

    .line 124
    .local v4, "base":I
    if-eq v4, v0, :cond_36

    .line 125
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v5

    if-lez v5, :cond_35

    .line 126
    invoke-static {p1, v1, v0}, Lorg/xbill/DNS/TypeBitmap;->mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V

    .line 127
    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 129
    :cond_35
    move v0, v4

    .line 131
    :cond_36
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3    # "t":I
    .end local v4    # "base":I
    goto :goto_15

    .line 133
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_3f
    invoke-static {p1, v1, v0}, Lorg/xbill/DNS/TypeBitmap;->mapToWire(Lorg/xbill/DNS/DNSOutput;Ljava/util/TreeSet;I)V

    .line 134
    return-void
.end method
