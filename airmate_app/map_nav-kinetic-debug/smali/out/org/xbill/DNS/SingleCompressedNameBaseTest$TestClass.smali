.class Lorg/xbill/DNS/SingleCompressedNameBaseTest$TestClass;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "SingleCompressedNameBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SingleCompressedNameBaseTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestClass"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "singleName"    # Lorg/xbill/DNS/Name;
    .param p7, "desc"    # Ljava/lang/String;

    .line 53
    invoke-direct/range {p0 .. p7}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleName()Lorg/xbill/DNS/Name;
    .registers 2

    .line 58
    invoke-super {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
