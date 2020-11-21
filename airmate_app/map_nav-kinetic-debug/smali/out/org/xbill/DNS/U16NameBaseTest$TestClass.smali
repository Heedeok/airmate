.class Lorg/xbill/DNS/U16NameBaseTest$TestClass;
.super Lorg/xbill/DNS/U16NameBase;
.source "U16NameBaseTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/U16NameBaseTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestClass"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .registers 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .line 54
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/U16NameBase;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .registers 10
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "u16Field"    # I
    .param p7, "u16Description"    # Ljava/lang/String;
    .param p8, "nameField"    # Lorg/xbill/DNS/Name;
    .param p9, "nameDescription"    # Ljava/lang/String;

    .line 60
    invoke-direct/range {p0 .. p9}, Lorg/xbill/DNS/U16NameBase;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getNameField()Lorg/xbill/DNS/Name;
    .registers 2

    .line 70
    invoke-super {p0}, Lorg/xbill/DNS/U16NameBase;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lorg/xbill/DNS/Record;
    .registers 2

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getU16Field()I
    .registers 2

    .line 65
    invoke-super {p0}, Lorg/xbill/DNS/U16NameBase;->getU16Field()I

    move-result v0

    return v0
.end method
