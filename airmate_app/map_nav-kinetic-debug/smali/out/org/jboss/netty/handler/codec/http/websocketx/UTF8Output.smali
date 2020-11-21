.class final Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;
.super Ljava/lang/Object;
.source "UTF8Output.java"


# static fields
.field private static final STATES:[B

.field private static final TYPES:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field private codep:I

.field private state:I

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->TYPES:[B

    .line 56
    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_98

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->STATES:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_98
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write([B)V

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 95
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-nez v0, :cond_b

    .line 98
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_b
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;

    const-string v1, "bytes are not UTF-8"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I

    .line 80
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->TYPES:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    .line 82
    .local v0, "type":B
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-eqz v1, :cond_12

    and-int/lit8 v1, p1, 0x3f

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    goto :goto_16

    :cond_12
    const/16 v1, 0xff

    shr-int/2addr v1, v0

    and-int/2addr v1, p1

    :goto_16
    iput v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    .line 84
    sget-object v1, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->STATES:[B

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    iput v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    .line 86
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-nez v1, :cond_2e

    .line 87
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 88
    :cond_2e
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_35

    .line 91
    :goto_34
    return-void

    .line 89
    :cond_35
    new-instance v1, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;

    const-string v2, "bytes are not UTF-8"

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([B)V
    .registers 6
    .param p1, "bytes"    # [B

    .line 74
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v1, :cond_d

    aget-byte v3, v0, v2

    .line 75
    .local v3, "b":B
    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write(I)V

    .line 74
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 77
    .end local v0    # "arr$":[B
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_d
    return-void
.end method
