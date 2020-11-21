.class public Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field final _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BII)V

    .line 43
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method protected declared-synchronized peek()I
    .registers 3

    monitor-enter p0

    .line 112
    :try_start_1
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->count:I

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->buf:[B

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    and-int/lit16 v0, v0, 0xff

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readByte()I
    .registers 2

    .line 56
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .registers 4
    .param p1, "len"    # I

    .line 68
    new-array v0, p1, [B

    .line 69
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read([BII)I

    .line 70
    return-object v0
.end method

.method public readInt()I
    .registers 3

    .line 64
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readName()Ljava/lang/String;
    .registers 10

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/StringBuilder;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 119
    .local v2, "finished":Z
    :goto_b
    if-nez v2, :cond_f6

    .line 120
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v3

    .line 121
    .local v3, "len":I
    if-nez v3, :cond_16

    .line 122
    const/4 v2, 0x1

    .line 123
    goto/16 :goto_f6

    .line 125
    :cond_16
    sget-object v4, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    invoke-static {v3}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_120

    .line 154
    sget-object v4, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported dns label type: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v6, v3, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_f4

    .line 150
    :pswitch_48
    sget-object v4, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    const-string v5, "Extended label are not currently supported."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 151
    goto/16 :goto_f4

    .line 136
    :pswitch_51
    invoke-static {v3}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v5

    or-int/2addr v4, v5

    .line 137
    .local v4, "index":I
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 138
    .local v5, "compressedLabel":Ljava/lang/String;
    if-nez v5, :cond_96

    .line 139
    sget-object v6, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad domain name: possible circular name detected. Bad offset: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v8, v8, -0x2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 140
    const-string v5, ""

    .line 142
    :cond_96
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 144
    .local v7, "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local v7    # "previousLabel":Ljava/lang/StringBuilder;
    goto :goto_a1

    .line 146
    :cond_b1
    const/4 v2, 0x1

    .line 147
    goto :goto_f4

    .line 127
    .end local v4    # "index":I
    .end local v5    # "compressedLabel":Ljava/lang/String;
    :pswitch_b3
    iget v4, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v4, v4, -0x1

    .line 128
    .local v4, "offset":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 131
    .restart local v7    # "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .end local v7    # "previousLabel":Ljava/lang/StringBuilder;
    goto :goto_d7

    .line 133
    :cond_e7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    nop

    .line 156
    .end local v3    # "len":I
    .end local v4    # "offset":I
    .end local v5    # "label":Ljava/lang/String;
    :goto_f4
    goto/16 :goto_b

    .line 157
    :cond_f6
    :goto_f6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 158
    .local v4, "index":Ljava/lang/Integer;
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v4    # "index":Ljava/lang/Integer;
    goto :goto_fe

    .line 160
    :cond_11a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_51
        :pswitch_48
    .end packed-switch
.end method

.method public readNonNameString()Ljava/lang/String;
    .registers 3

    .line 164
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    .line 165
    .local v0, "len":I
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readUTF(I)Ljava/lang/String;
    .registers 7
    .param p1, "len"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_6
    if-ge v1, p1, :cond_54

    .line 76
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v2

    .line 77
    .local v2, "ch":I
    shr-int/lit8 v3, v2, 0x4

    packed-switch v3, :pswitch_data_5a

    packed-switch v3, :pswitch_data_6e

    .line 102
    and-int/lit8 v3, v2, 0x3f

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int v2, v3, v4

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 96
    :pswitch_23
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0xc

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v2, v3, v4

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_4d

    .line 91
    :pswitch_3d
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v3, v3, 0x6

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v2, v3, v4

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_4d

    .line 87
    :pswitch_4c
    nop

    .line 106
    :goto_4d
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .end local v2    # "ch":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 108
    .end local v1    # "index":I
    :cond_54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0xc
        :pswitch_3d
        :pswitch_3d
        :pswitch_23
    .end packed-switch
.end method

.method public readUnsignedShort()I
    .registers 3

    .line 60
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
