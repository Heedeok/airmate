.class public Lorg/jboss/netty/handler/logging/LoggingHandler;
.super Ljava/lang/Object;
.source "LoggingHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final BYTE2CHAR:[C

.field private static final BYTE2HEX:[Ljava/lang/String;

.field private static final BYTEPADDING:[Ljava/lang/String;

.field private static final DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

.field private static final HEXPADDING:[Ljava/lang/String;

.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private final hexDump:Z

.field private final level:Lorg/jboss/netty/logging/InternalLogLevel;

.field private final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 41
    sget-object v0, Lorg/jboss/netty/logging/InternalLogLevel;->DEBUG:Lorg/jboss/netty/logging/InternalLogLevel;

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 42
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    .line 44
    const/16 v0, 0x100

    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    .line 45
    const/16 v2, 0x10

    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    .line 46
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    .line 47
    new-array v0, v0, [C

    sput-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    const/16 v3, 0xa

    const/4 v4, 0x3

    if-ge v0, v3, :cond_41

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v3, "buf":Ljava/lang/StringBuilder;
    const-string v4, " 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    sget-object v4, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 53
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 59
    :cond_41
    :goto_41
    if-ge v0, v2, :cond_5f

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v5, "buf":Ljava/lang/StringBuilder;
    const-string v6, " 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v6, v0, 0x61

    sub-int/2addr v6, v3

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    sget-object v6, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 59
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 65
    :cond_5f
    :goto_5f
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x20

    if-ge v0, v2, :cond_80

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    sget-object v3, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 65
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 73
    :cond_80
    const/4 v0, 0x0

    :goto_81
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a7

    .line 74
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 75
    .local v2, "padding":I
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_92
    if-ge v5, v2, :cond_9c

    .line 77
    const-string v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 79
    .end local v5    # "j":I
    :cond_9c
    sget-object v5, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 73
    .end local v2    # "padding":I
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 83
    :cond_a7
    const/4 v0, 0x0

    :goto_a8
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_ca

    .line 84
    sget-object v2, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 85
    .restart local v2    # "padding":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .restart local v4    # "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_b7
    if-ge v5, v2, :cond_bf

    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    .line 89
    .end local v5    # "j":I
    :cond_bf
    sget-object v5, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 83
    .end local v2    # "padding":I
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 93
    :cond_ca
    const/4 v0, 0x0

    :goto_cb
    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_e8

    .line 94
    const/16 v1, 0x1f

    if-le v0, v1, :cond_df

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_d9

    goto :goto_df

    .line 97
    :cond_d9
    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    goto :goto_e5

    .line 95
    :cond_df
    :goto_df
    sget-object v1, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    const/16 v2, 0x2e

    aput-char v2, v1, v0

    .line 93
    :goto_e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    .line 100
    .end local v0    # "i":I
    :cond_e8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Z)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 159
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;)V
    .registers 4
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            ")V"
        }
    .end annotation

    .line 178
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .registers 6
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p3, "hexDump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/jboss/netty/logging/InternalLogLevel;",
            "Z)V"
        }
    .end annotation

    .line 188
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    if-eqz p1, :cond_1a

    .line 192
    if-eqz p2, :cond_12

    .line 195
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 196
    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 197
    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 198
    return-void

    .line 193
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 4
    .param p2, "hexDump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 169
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/Class;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p3, "hexDump"    # Z

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    if-eqz p1, :cond_1a

    .line 229
    if-eqz p2, :cond_12

    .line 232
    invoke-static {p1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 233
    iput-object p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 234
    iput-boolean p3, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 235
    return-void

    .line 230
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hexDump"    # Z

    .line 215
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Ljava/lang/String;Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;)V
    .registers 3
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V
    .registers 5
    .param p1, "level"    # Lorg/jboss/netty/logging/InternalLogLevel;
    .param p2, "hexDump"    # Z

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_14

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 150
    iput-object p1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    .line 151
    iput-boolean p2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    .line 152
    return-void

    .line 146
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "hexDump"    # Z

    .line 133
    sget-object v0, Lorg/jboss/netty/handler/logging/LoggingHandler;->DEFAULT_LEVEL:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/logging/LoggingHandler;-><init>(Lorg/jboss/netty/logging/InternalLogLevel;Z)V

    .line 134
    return-void
.end method

.method private static formatBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .registers 15
    .param p0, "buf"    # Lorg/jboss/netty/buffer/ChannelBuffer;

    .line 281
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    .line 282
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x10

    rem-int/lit8 v2, v0, 0xf

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    const/4 v2, 0x1

    :goto_d
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    .line 283
    .local v1, "rows":I
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    .local v2, "dump":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "         +-------------------------------------------------+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    .line 291
    .local v3, "startIndex":I
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v4

    .line 294
    .local v4, "endIndex":I
    move v5, v3

    .local v5, "i":I
    :goto_4a
    const/16 v6, 0x7c

    const/16 v7, 0xf

    if-ge v5, v4, :cond_a5

    .line 295
    sub-int v8, v5, v3

    .line 296
    .local v8, "relIdx":I
    and-int/lit8 v9, v8, 0xf

    .line 297
    .local v9, "relIdxMod16":I
    if-nez v9, :cond_7b

    .line 298
    sget-object v10, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    int-to-long v10, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const-wide v12, 0x100000000L

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x9

    invoke-virtual {v2, v10, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 301
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_7b
    sget-object v10, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2HEX:[Ljava/lang/String;

    invoke-interface {p0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    if-ne v9, v7, :cond_a2

    .line 305
    const-string v7, " |"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v7, v5, -0xf

    .local v7, "j":I
    :goto_8f
    if-gt v7, v5, :cond_9f

    .line 307
    sget-object v10, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    invoke-interface {p0, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v11

    aget-char v10, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    .line 309
    .end local v7    # "j":I
    :cond_9f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    .end local v8    # "relIdx":I
    .end local v9    # "relIdxMod16":I
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 313
    :cond_a5
    sub-int v8, v5, v3

    and-int/2addr v7, v8

    if-eqz v7, :cond_d4

    .line 314
    and-int/lit8 v7, v0, 0xf

    .line 315
    .local v7, "remainder":I
    sget-object v8, Lorg/jboss/netty/handler/logging/LoggingHandler;->HEXPADDING:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v8, " |"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    sub-int v8, v5, v7

    .local v8, "j":I
    :goto_ba
    if-ge v8, v5, :cond_ca

    .line 318
    sget-object v9, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTE2CHAR:[C

    invoke-interface {p0, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v10

    aget-char v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 320
    .end local v8    # "j":I
    :cond_ca
    sget-object v8, Lorg/jboss/netty/handler/logging/LoggingHandler;->BYTEPADDING:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    .end local v7    # "remainder":I
    :cond_d4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/jboss/netty/handler/logging/LoggingHandler;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+--------+-------------------------------------------------+----------------+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public getLevel()Lorg/jboss/netty/logging/InternalLogLevel;
    .registers 2

    .line 250
    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    return-object v0
.end method

.method public getLogger()Lorg/jboss/netty/logging/InternalLogger;
    .registers 2

    .line 242
    iget-object v0, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 339
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 340
    return-void
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 3
    .param p1, "ctx"    # Lorg/jboss/netty/channel/ChannelHandlerContext;
    .param p2, "e"    # Lorg/jboss/netty/channel/ChannelEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/logging/LoggingHandler;->log(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 333
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    .line 334
    return-void
.end method

.method public log(Lorg/jboss/netty/channel/ChannelEvent;)V
    .registers 6
    .param p1, "e"    # Lorg/jboss/netty/channel/ChannelEvent;

    .line 260
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->isEnabled(Lorg/jboss/netty/logging/InternalLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->hexDump:Z

    if-eqz v1, :cond_3c

    instance-of v1, p1, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_3c

    .line 265
    move-object v1, p1

    check-cast v1, Lorg/jboss/netty/channel/MessageEvent;

    .line 266
    .local v1, "me":Lorg/jboss/netty/channel/MessageEvent;
    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v2, :cond_3c

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v3}, Lorg/jboss/netty/handler/logging/LoggingHandler;->formatBuffer(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .end local v1    # "me":Lorg/jboss/netty/channel/MessageEvent;
    :cond_3c
    instance-of v1, p1, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_51

    .line 273
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    move-object v3, p1

    check-cast v3, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v3}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 275
    :cond_51
    invoke-virtual {p0}, Lorg/jboss/netty/handler/logging/LoggingHandler;->getLogger()Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/logging/LoggingHandler;->level:Lorg/jboss/netty/logging/InternalLogLevel;

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->log(Lorg/jboss/netty/logging/InternalLogLevel;Ljava/lang/String;)V

    .line 278
    .end local v0    # "msg":Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-void
.end method
