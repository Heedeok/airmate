.class public Lorg/apache/ws/commons/serialize/PassThroughXMLWriter;
.super Lorg/apache/ws/commons/serialize/XMLWriterImpl;
.source "PassThroughXMLWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lorg/apache/ws/commons/serialize/XMLWriterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 24
    const/4 v0, 0x1

    return v0
.end method
