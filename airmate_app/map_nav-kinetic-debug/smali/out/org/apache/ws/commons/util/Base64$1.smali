.class Lorg/apache/ws/commons/util/Base64$1;
.super Lorg/apache/ws/commons/util/Base64$Encoder;
.source "Base64.java"


# instance fields
.field private final synthetic val$pWriter:Ljava/io/Writer;


# direct methods
.method constructor <init>([CILjava/lang/String;Ljava/io/Writer;)V
    .registers 5
    .param p1, "x0"    # [C
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;-><init>([CILjava/lang/String;)V

    iput-object p4, p0, Lorg/apache/ws/commons/util/Base64$1;->val$pWriter:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method protected writeBuffer([CII)V
    .registers 5
    .param p1, "pBuffer"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$1;->val$pWriter:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 275
    return-void
.end method
