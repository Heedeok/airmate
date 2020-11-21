.class public Lorg/apache/ws/commons/util/Base64$SAXEncoder;
.super Lorg/apache/ws/commons/util/Base64$Encoder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAXEncoder"
.end annotation


# instance fields
.field private final handler:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .param p1, "pBuffer"    # [C
    .param p2, "pWrapSize"    # I
    .param p3, "pSep"    # Ljava/lang/String;
    .param p4, "pHandler"    # Lorg/xml/sax/ContentHandler;

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Encoder;-><init>([CILjava/lang/String;)V

    .line 301
    iput-object p4, p0, Lorg/apache/ws/commons/util/Base64$SAXEncoder;->handler:Lorg/xml/sax/ContentHandler;

    .line 302
    return-void
.end method


# virtual methods
.method protected writeBuffer([CII)V
    .registers 6
    .param p1, "pChars"    # [C
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$SAXEncoder;->handler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_5} :catch_7

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catch_7
    move-exception v0

    .line 311
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/apache/ws/commons/util/Base64$SAXIOException;

    invoke-direct {v1, v0}, Lorg/apache/ws/commons/util/Base64$SAXIOException;-><init>(Lorg/xml/sax/SAXException;)V

    throw v1
.end method
