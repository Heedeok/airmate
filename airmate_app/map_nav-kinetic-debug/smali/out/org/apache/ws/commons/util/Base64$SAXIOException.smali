.class public Lorg/apache/ws/commons/util/Base64$SAXIOException;
.super Ljava/io/IOException;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAXIOException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37353237313537L


# instance fields
.field final saxException:Lorg/xml/sax/SAXException;


# direct methods
.method constructor <init>(Lorg/xml/sax/SAXException;)V
    .registers 2
    .param p1, "e"    # Lorg/xml/sax/SAXException;

    .line 52
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$SAXIOException;->saxException:Lorg/xml/sax/SAXException;

    .line 54
    return-void
.end method


# virtual methods
.method public getSAXException()Lorg/xml/sax/SAXException;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$SAXIOException;->saxException:Lorg/xml/sax/SAXException;

    return-object v0
.end method
