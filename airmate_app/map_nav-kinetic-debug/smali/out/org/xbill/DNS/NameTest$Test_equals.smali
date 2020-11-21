.class public Lorg/xbill/DNS/NameTest$Test_equals;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_equals"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1062
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_abs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1084
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "a.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertTrue(Z)V

    .line 1088
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertTrue(Z)V

    .line 1089
    return-void
.end method

.method public test_mixed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1102
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "a.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1106
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1107
    return-void
.end method

.method public test_notName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1078
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v0, "n":Lorg/xbill/DNS/Name;
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1080
    return-void
.end method

.method public test_null()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1072
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v0, "n":Lorg/xbill/DNS/Name;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1074
    return-void
.end method

.method public test_rel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1093
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Relative.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "a.relative.name"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertTrue(Z)V

    .line 1097
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertTrue(Z)V

    .line 1098
    return-void
.end method

.method public test_same()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1066
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_equals;->assertTrue(Z)V

    .line 1068
    return-void
.end method

.method public test_weird()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1111
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab.c"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "abc."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1115
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_equals;->assertFalse(Z)V

    .line 1116
    return-void
.end method
