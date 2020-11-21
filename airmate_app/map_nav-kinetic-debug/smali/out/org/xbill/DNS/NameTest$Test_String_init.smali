.class public Lorg/xbill/DNS/NameTest$Test_String_init;
.super Ljunit/framework/TestCase;
.source "NameTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/NameTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Test_String_init"
.end annotation


# instance fields
.field private final m_abs:Ljava/lang/String;

.field private m_abs_origin:Lorg/xbill/DNS/Name;

.field private final m_rel:Ljava/lang/String;

.field private m_rel_origin:Lorg/xbill/DNS/Name;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 49
    const-string v0, "WWW.DnsJava.org."

    iput-object v0, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs:Ljava/lang/String;

    .line 51
    const-string v0, "WWW.DnsJava"

    iput-object v0, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 56
    const-string v0, "Orig."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    .line 57
    const-string v0, "Orig"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    .line 58
    return-void
.end method

.method public test_ctor_7label()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "a.b.c.d.e.f."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 151
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 152
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 153
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 154
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_dc

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 155
    const-string v2, "a"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-array v2, v1, [B

    fill-array-data v2, :array_e2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 157
    const-string v2, "b"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-array v2, v1, [B

    fill-array-data v2, :array_e8

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 159
    const-string v2, "c"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-array v2, v1, [B

    fill-array-data v2, :array_ee

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 161
    const-string v2, "d"

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-array v2, v1, [B

    fill-array-data v2, :array_f4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 163
    const-string v2, "e"

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-array v1, v1, [B

    fill-array-data v1, :array_fa

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 165
    const-string v1, "f"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 167
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    :array_dc
    .array-data 1
        0x1t
        0x61t
    .end array-data

    nop

    :array_e2
    .array-data 1
        0x1t
        0x62t
    .end array-data

    nop

    :array_e8
    .array-data 1
        0x1t
        0x63t
    .end array-data

    nop

    :array_ee
    .array-data 1
        0x1t
        0x64t
    .end array-data

    nop

    :array_f4
    .array-data 1
        0x1t
        0x65t
    .end array-data

    nop

    :array_fa
    .array-data 1
        0x1t
        0x66t
    .end array-data
.end method

.method public test_ctor_8label()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "a.b.c.d.e.f.g."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 175
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 176
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 177
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 178
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_f8

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 179
    const-string v2, "a"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-array v2, v1, [B

    fill-array-data v2, :array_fe

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 181
    const-string v2, "b"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-array v2, v1, [B

    fill-array-data v2, :array_104

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 183
    const-string v2, "c"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-array v2, v1, [B

    fill-array-data v2, :array_10a

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 185
    const-string v2, "d"

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-array v2, v1, [B

    fill-array-data v2, :array_110

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 187
    const-string v2, "e"

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-array v2, v1, [B

    fill-array-data v2, :array_116

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 189
    const-string v2, "f"

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-array v1, v1, [B

    fill-array-data v1, :array_11c

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 191
    const-string v1, "g"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 193
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    nop

    :array_f8
    .array-data 1
        0x1t
        0x61t
    .end array-data

    nop

    :array_fe
    .array-data 1
        0x1t
        0x62t
    .end array-data

    nop

    :array_104
    .array-data 1
        0x1t
        0x63t
    .end array-data

    nop

    :array_10a
    .array-data 1
        0x1t
        0x64t
    .end array-data

    nop

    :array_110
    .array-data 1
        0x1t
        0x65t
    .end array-data

    nop

    :array_116
    .array-data 1
        0x1t
        0x66t
    .end array-data

    nop

    :array_11c
    .array-data 1
        0x1t
        0x67t
    .end array-data
.end method

.method public test_ctor_abs()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava.org."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 114
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 115
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 116
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 117
    new-array v1, v2, [B

    fill-array-data v1, :array_90

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 119
    const-string v1, "WWW"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_96

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 122
    const-string v1, "DnsJava"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-array v1, v2, [B

    fill-array-data v1, :array_9e

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 125
    const-string v1, "org"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 128
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    :array_90
    .array-data 1
        0x3t
        0x57t
        0x57t
        0x57t
    .end array-data

    :array_96
    .array-data 1
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
    .end array-data

    :array_9e
    .array-data 1
        0x3t
        0x6ft
        0x72t
        0x67t
    .end array-data
.end method

.method public test_ctor_abs_abs_origin()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 198
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava.org."

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 199
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 200
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 201
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 202
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 203
    new-array v1, v2, [B

    fill-array-data v1, :array_92

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 205
    const-string v1, "WWW"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_98

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 208
    const-string v1, "DnsJava"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-array v1, v2, [B

    fill-array-data v1, :array_a0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 211
    const-string v1, "org"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 214
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    :array_92
    .array-data 1
        0x3t
        0x57t
        0x57t
        0x57t
    .end array-data

    :array_98
    .array-data 1
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
    .end array-data

    :array_a0
    .array-data 1
        0x3t
        0x6ft
        0x72t
        0x67t
    .end array-data
.end method

.method public test_ctor_abs_rel_origin()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava.org."

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 220
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 221
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 222
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 223
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 224
    new-array v1, v2, [B

    fill-array-data v1, :array_92

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 226
    const-string v1, "WWW"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_98

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 229
    const-string v1, "DnsJava"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-array v1, v2, [B

    fill-array-data v1, :array_a0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 232
    const-string v1, "org"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 235
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    :array_92
    .array-data 1
        0x3t
        0x57t
        0x57t
        0x57t
    .end array-data

    :array_98
    .array-data 1
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
    .end array-data

    :array_a0
    .array-data 1
        0x3t
        0x6ft
        0x72t
        0x67t
    .end array-data
.end method

.method public test_ctor_at_abs_origin()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "@"

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 81
    .local v0, "n":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public test_ctor_at_null_origin()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "@"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 73
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 74
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 75
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 76
    return-void
.end method

.method public test_ctor_at_rel_origin()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "@"

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 87
    .local v0, "n":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public test_ctor_dot()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "n":Lorg/xbill/DNS/Name;
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 96
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 97
    return-void
.end method

.method public test_ctor_empty()V
    .registers 3

    .line 63
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 66
    goto :goto_e

    :catch_d
    move-exception v0

    .line 67
    :goto_e
    return-void
.end method

.method public test_ctor_empty_escaped_end()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 358
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 359
    const-string v0, "TextParseException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 361
    goto :goto_e

    :catch_d
    move-exception v0

    .line 362
    :goto_e
    return-void
.end method

.method public test_ctor_escaped()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 319
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\123cd"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 321
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 322
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 323
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 324
    new-array v1, v2, [B

    fill-array-data v1, :array_38

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 325
    return-void

    nop

    :array_38
    .array-data 1
        0x5t
        0x61t
        0x62t
        0x7bt
        0x63t
        0x64t
    .end array-data
.end method

.method public test_ctor_escaped_end()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "abcd\\123"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 331
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 332
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 333
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 334
    new-array v1, v2, [B

    fill-array-data v1, :array_38

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 335
    return-void

    nop

    :array_38
    .array-data 1
        0x5t
        0x61t
        0x62t
        0x63t
        0x64t
        0x7bt
    .end array-data
.end method

.method public test_ctor_invalid_label()V
    .registers 3

    .line 262
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "junk..junk."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 265
    goto :goto_e

    :catch_d
    move-exception v0

    .line 266
    :goto_e
    return-void
.end method

.method public test_ctor_max_label()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 271
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.b."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 273
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 274
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 275
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0x43

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 276
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_76

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 278
    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x2

    new-array v3, v1, [B

    fill-array-data v3, :array_9a

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 281
    const-string v3, "b"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-array v3, v4, [B

    aput-byte v2, v3, v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 284
    const-string v2, ""

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    :array_76
    .array-data 1
        0x3ft
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
    .end array-data

    :array_9a
    .array-data 1
        0x1t
        0x62t
    .end array-data
.end method

.method public test_ctor_max_label_escaped()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 385
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaa\\100aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.b."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 387
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 388
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 389
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0x43

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 390
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_6e

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 392
    const/4 v1, 0x2

    new-array v3, v1, [B

    fill-array-data v3, :array_92

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 394
    const-string v3, "b"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-array v3, v4, [B

    aput-byte v2, v3, v2

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 397
    const-string v2, ""

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    nop

    :array_6e
    .array-data 1
        0x3ft
        0x61t
        0x61t
        0x61t
        0x61t
        0x64t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
        0x61t
    .end array-data

    :array_92
    .array-data 1
        0x1t
        0x62t
    .end array-data
.end method

.method public test_ctor_max_labels()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/16 v3, 0x7f

    if-ge v2, v3, :cond_13

    .line 404
    const-string v3, "a."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 406
    .end local v2    # "i":I
    :cond_13
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 408
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 409
    const/16 v4, 0x80

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    invoke-static {v4, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 410
    const/16 v4, 0xff

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->length()S

    move-result v5

    invoke-static {v4, v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 411
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    if-ge v4, v3, :cond_5c

    .line 412
    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_76

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 413
    const-string v5, "a"

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 415
    .end local v4    # "i":I
    :cond_5c
    const/4 v4, 0x1

    new-array v4, v4, [B

    aput-byte v1, v4, v1

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v1

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 416
    const-string v1, ""

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void

    :array_76
    .array-data 1
        0x1t
        0x61t
    .end array-data
.end method

.method public test_ctor_max_length_abs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 310
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc.ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 312
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 313
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 314
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 315
    return-void
.end method

.method public test_ctor_max_length_rel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 300
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc.dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 302
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 303
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 304
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0xff

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 305
    return-void
.end method

.method public test_ctor_rel()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 135
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 136
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 137
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 138
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_5e

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 140
    const-string v1, "WWW"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_64

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 143
    const-string v1, "DnsJava"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    :array_5e
    .array-data 1
        0x3t
        0x57t
        0x57t
        0x57t
    .end array-data

    :array_64
    .array-data 1
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
    .end array-data
.end method

.method public test_ctor_rel_abs_origin()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava"

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 241
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 242
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 243
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 244
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/16 v3, 0x12

    invoke-static {v3, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 245
    new-array v1, v2, [B

    fill-array-data v1, :array_94

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 247
    const-string v1, "WWW"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_9a

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 250
    const-string v1, "DnsJava"

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_a2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 253
    const-string v1, "Orig"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-array v1, v3, [B

    aput-byte v2, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 256
    const-string v1, ""

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    nop

    :array_94
    .array-data 1
        0x3t
        0x57t
        0x57t
        0x57t
    .end array-data

    :array_9a
    .array-data 1
        0x7t
        0x44t
        0x6et
        0x73t
        0x4at
        0x61t
        0x76t
        0x61t
    .end array-data

    :array_a2
    .array-data 1
        0x4t
        0x4ft
        0x72t
        0x69t
        0x67t
    .end array-data
.end method

.method public test_ctor_short_escaped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 340
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\12cd"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 341
    const-string v0, "TextParseException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 343
    goto :goto_e

    :catch_d
    move-exception v0

    .line 344
    :goto_e
    return-void
.end method

.method public test_ctor_short_escaped_end()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 349
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\12"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v0, "TextParseException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 352
    goto :goto_e

    :catch_d
    move-exception v0

    .line 353
    :goto_e
    return-void
.end method

.method public test_ctor_toobig_escaped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 367
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\256cd"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v0, "TextParseException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 370
    goto :goto_e

    :catch_d
    move-exception v0

    .line 371
    :goto_e
    return-void
.end method

.method public test_ctor_toobig_escaped_end()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 376
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "ab\\256"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 377
    const-string v0, "TextParseException not throw"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 379
    goto :goto_e

    :catch_d
    move-exception v0

    .line 380
    :goto_e
    return-void
.end method

.method public test_ctor_toobig_label()V
    .registers 3

    .line 291
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.b."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 292
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 294
    goto :goto_e

    :catch_d
    move-exception v0

    .line 295
    :goto_e
    return-void
.end method

.method public test_ctor_toobig_label_escaped()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 433
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaa\\001aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.b."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 436
    goto :goto_e

    :catch_d
    move-exception v0

    .line 437
    :goto_e
    return-void
.end method

.method public test_ctor_toobig_label_escaped_end()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 423
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\090.b."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 424
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 426
    goto :goto_e

    :catch_d
    move-exception v0

    .line 427
    :goto_e
    return-void
.end method

.method public test_ctor_wildcard()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "n":Lorg/xbill/DNS/Name;
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertFalse(Z)V

    .line 103
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 104
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 105
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(II)V

    .line 106
    new-array v1, v2, [B

    fill-array-data v1, :array_40

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabel(I)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertTrue(Z)V

    .line 107
    const-string v1, "*"

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->getLabelString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    :array_40
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method public test_fromConstantString()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 460
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava.org."

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "WWW.DnsJava.org."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 462
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-static {v0, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public test_fromConstantString_invalid()V
    .registers 2

    .line 468
    :try_start_0
    const-string v0, "junk..junk"

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    .line 469
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->fail(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    .line 471
    goto :goto_c

    :catch_b
    move-exception v0

    .line 472
    :goto_c
    return-void
.end method

.method public test_fromString()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 441
    new-instance v0, Lorg/xbill/DNS/Name;

    const-string v1, "WWW.DnsJava"

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 442
    .local v0, "n":Lorg/xbill/DNS/Name;
    const-string v1, "WWW.DnsJava"

    iget-object v2, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_abs_origin:Lorg/xbill/DNS/Name;

    invoke-static {v1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 443
    .local v1, "n2":Lorg/xbill/DNS/Name;
    invoke-static {v0, v1}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public test_fromString_at()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 448
    const-string v0, "@"

    iget-object v1, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 449
    .local v0, "n":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/NameTest$Test_String_init;->m_rel_origin:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public test_fromString_dot()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 454
    const-string v0, "."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 455
    .local v0, "n":Lorg/xbill/DNS/Name;
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v1, v0}, Lorg/xbill/DNS/NameTest$Test_String_init;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    return-void
.end method
