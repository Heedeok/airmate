.class public Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;
.super Ljava/io/OutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderOutputStream"
.end annotation


# instance fields
.field private final encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Lorg/apache/ws/commons/util/Base64$Encoder;)V
    .registers 3
    .param p1, "pEncoder"    # Lorg/apache/ws/commons/util/Base64$Encoder;

    .line 229
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    .line 230
    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    .line 231
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/util/Base64$Encoder;->flush()V

    .line 242
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 235
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->oneByte:[B

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    .line 236
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "pBuffer"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;->encoder:Lorg/apache/ws/commons/util/Base64$Encoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    .line 239
    return-void
.end method
