.class public Lorg/xbill/DNS/NameTest$Test_compareTo;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_compareTo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1119
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public test_close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1148
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "a.name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "a.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1152
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_24

    const/4 v3, 0x1

    nop

    :cond_24
    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1153
    return-void
.end method

.method public test_disjoint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1157
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "b"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "c"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1161
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_24

    const/4 v3, 0x1

    nop

    :cond_24
    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1162
    return-void
.end method

.method public test_equal()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1139
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "a.name."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertEquals(II)V

    .line 1143
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v3, v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertEquals(II)V

    .line 1144
    return-void
.end method

.method public test_label_prefix()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1166
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "thisIs.a."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "thisIsGreater.a."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1170
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_24

    const/4 v3, 0x1

    nop

    :cond_24
    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1171
    return-void
.end method

.method public test_more_labels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1175
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "c.b.a."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, "n1":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Name;

    const-string v2, "d.c.b.a."

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1178
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1179
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_24

    const/4 v3, 0x1

    nop

    :cond_24
    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertTrue(Z)V

    .line 1180
    return-void
.end method

.method public test_notName()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1123
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v0, "n":Lorg/xbill/DNS/Name;
    :try_start_7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    .line 1126
    const-string v1, "ClassCastException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_compareTo;->fail(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_14} :catch_15

    .line 1128
    goto :goto_16

    :catch_15
    move-exception v1

    .line 1129
    :goto_16
    return-void
.end method

.method public test_same()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 1133
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "A.Name"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v0}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_compareTo;->assertEquals(II)V

    .line 1135
    return-void
.end method
