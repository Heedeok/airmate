.class Lorg/apache/ws/commons/util/Base64$2;
.super Ljava/io/Writer;
.source "Base64.java"


# instance fields
.field private final decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

.field private final synthetic this$0:Lorg/apache/ws/commons/util/Base64;

.field private final synthetic val$pStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lorg/apache/ws/commons/util/Base64;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$2;->this$0:Lorg/apache/ws/commons/util/Base64;

    iput-object p2, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    .line 477
    new-instance p1, Lorg/apache/ws/commons/util/Base64$2$1;

    const/16 p2, 0x400

    invoke-direct {p1, p0, p2}, Lorg/apache/ws/commons/util/Base64$2$1;-><init>(Lorg/apache/ws/commons/util/Base64$2;I)V

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ws/commons/util/Base64$2;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "x0"    # Lorg/apache/ws/commons/util/Base64$2;

    .line 489
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lorg/apache/ws/commons/util/Base64$2;->flush()V

    .line 484
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0}, Lorg/apache/ws/commons/util/Base64$Decoder;->flush()V

    .line 487
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->val$pStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 488
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$2;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Decoder;->write([CII)V

    .line 491
    return-void
.end method
