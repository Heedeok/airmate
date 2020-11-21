.class Lorg/apache/commons/httpclient/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# static fields
.field public static CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

.field public static HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;


# instance fields
.field private log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lorg/apache/commons/httpclient/Wire;

    const-string v1, "httpclient.wire.header"

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    sput-object v0, Lorg/apache/commons/httpclient/Wire;->HEADER_WIRE:Lorg/apache/commons/httpclient/Wire;

    .line 50
    new-instance v0, Lorg/apache/commons/httpclient/Wire;

    const-string v1, "httpclient.wire.content"

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    sput-object v0, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/logging/Log;)V
    .registers 2
    .param p1, "log"    # Lorg/apache/commons/logging/Log;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    .line 57
    return-void
.end method

.method private wire(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "ch":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_56

    .line 64
    const/16 v1, 0xd

    if-ne v2, v1, :cond_18

    .line 65
    const-string v1, "[\\r]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 66
    :cond_18
    const/16 v1, 0xa

    if-ne v2, v1, :cond_36

    .line 67
    const-string v1, "[\\n]\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "\""

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v1, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_5

    .line 72
    :cond_36
    const/16 v1, 0x20

    if-lt v2, v1, :cond_44

    const/16 v1, 0x7f

    if-le v2, v1, :cond_3f

    goto :goto_44

    .line 77
    :cond_3f
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 73
    :cond_44
    :goto_44
    const-string v1, "[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 80
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_72

    .line 81
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "\""

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 86
    :cond_72
    return-void
.end method


# virtual methods
.method public enabled()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/apache/commons/httpclient/Wire;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public input(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->input([B)V

    .line 149
    return-void
.end method

.method public input(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_8

    .line 106
    const-string v0, "<< "

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 107
    return-void

    .line 104
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    if-eqz p1, :cond_a

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->input([B)V

    .line 165
    return-void

    .line 162
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_d

    .line 138
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 139
    return-void

    .line 136
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public input([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_d

    .line 122
    const-string v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 123
    return-void

    .line 120
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    .line 144
    return-void
.end method

.method public output(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "outstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-eqz p1, :cond_8

    .line 98
    const-string v0, ">> "

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 99
    return-void

    .line 96
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    if-eqz p1, :cond_a

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/Wire;->output([B)V

    .line 157
    return-void

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-eqz p1, :cond_d

    .line 130
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 131
    return-void

    .line 128
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-eqz p1, :cond_d

    .line 114
    const-string v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/Wire;->wire(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 115
    return-void

    .line 112
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
