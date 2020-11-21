.class public Lorg/ros/internal/transport/ConnectionHeader;
.super Ljava/lang/Object;
.source "ConnectionHeader.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/ros/internal/transport/ConnectionHeader;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public static decode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/ros/internal/transport/ConnectionHeader;
    .registers 11
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 52
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 53
    .local v0, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 54
    .local v1, "position":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    .line 55
    .local v2, "readableBytes":I
    :goto_9
    if-ge v1, v2, :cond_63

    .line 56
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v3

    .line 57
    .local v3, "fieldSize":I
    add-int/lit8 v1, v1, 0x4

    .line 58
    if-eqz v3, :cond_5b

    .line 61
    add-int v4, v1, v3

    if-gt v4, v2, :cond_53

    .line 64
    invoke-static {p0, v3}, Lorg/ros/internal/transport/ConnectionHeader;->decodeAsciiString(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 66
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    const-string v8, "Invalid field in handshake header: \"%s\""

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v6

    .line 67
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-static {v5, v8}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 68
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "keyAndValue":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v7, :cond_4b

    .line 70
    aget-object v6, v5, v6

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 72
    :cond_4b
    aget-object v6, v5, v6

    aget-object v7, v5, v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v3    # "fieldSize":I
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "keyAndValue":[Ljava/lang/String;
    :goto_52
    goto :goto_9

    .line 62
    .restart local v3    # "fieldSize":I
    :cond_53
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid line length handshake header field."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_5b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid 0 length handshake header field."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    .end local v3    # "fieldSize":I
    :cond_63
    new-instance v3, Lorg/ros/internal/transport/ConnectionHeader;

    invoke-direct {v3}, Lorg/ros/internal/transport/ConnectionHeader;-><init>()V

    .line 79
    .local v3, "connectionHeader":Lorg/ros/internal/transport/ConnectionHeader;
    invoke-virtual {v3, v0}, Lorg/ros/internal/transport/ConnectionHeader;->mergeFields(Ljava/util/Map;)V

    .line 80
    return-object v3
.end method

.method private static decodeAsciiString(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;
    .registers 4
    .param p0, "buffer"    # Lorg/jboss/netty/buffer/ChannelBuffer;
    .param p1, "length"    # I

    .line 84
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_35

    .line 124
    :cond_17
    new-instance v0, Lorg/ros/exception/RosRuntimeException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    .line 125
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    const-string v2, "Unable to merge field %s: %s != %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ros/exception/RosRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_35
    :goto_35
    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public encode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .registers 6

    .line 98
    invoke-static {}, Lorg/ros/internal/message/MessageBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    .line 99
    .local v0, "buffer":Lorg/jboss/netty/buffer/ChannelBuffer;
    iget-object v1, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 100
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    .line 102
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    .line 103
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/String;
    goto :goto_e

    .line 104
    :cond_4f
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 157
    return v0

    .line 158
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 159
    return v1

    .line 160
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 161
    return v1

    .line 162
    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ros/internal/transport/ConnectionHeader;

    .line 163
    .local v2, "other":Lorg/ros/internal/transport/ConnectionHeader;
    iget-object v3, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    if-nez v3, :cond_1f

    .line 164
    iget-object v3, v2, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    if-eqz v3, :cond_2a

    .line 165
    return v1

    .line 166
    :cond_1f
    iget-object v3, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    iget-object v4, v2, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 167
    return v1

    .line 168
    :cond_2a
    return v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 148
    const/16 v0, 0x1f

    .line 149
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 150
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_11

    :cond_b
    iget-object v3, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v2, v3

    .line 151
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public merge(Lorg/ros/internal/transport/ConnectionHeader;)V
    .registers 3
    .param p1, "other"    # Lorg/ros/internal/transport/ConnectionHeader;

    .line 108
    invoke-virtual {p1}, Lorg/ros/internal/transport/ConnectionHeader;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 109
    .local v0, "otherFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lorg/ros/internal/transport/ConnectionHeader;->mergeFields(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public mergeFields(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    .local v1, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lorg/ros/internal/transport/ConnectionHeader;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v1    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_8

    .line 118
    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 143
    const-string v0, "ConnectionHeader <%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/ros/internal/transport/ConnectionHeader;->fields:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
