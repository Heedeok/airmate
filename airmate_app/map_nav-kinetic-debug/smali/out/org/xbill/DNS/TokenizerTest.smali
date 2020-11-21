.class public Lorg/xbill/DNS/TokenizerTest;
.super Ljunit/framework/TestCase;
.source "TokenizerTest.java"


# instance fields
.field private m_t:Lorg/xbill/DNS/Tokenizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private assertEquals([B[B)V
    .registers 4
    .param p1, "exp"    # [B
    .param p2, "act"    # [B

    .line 55
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method protected setUp()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 51
    return-void
.end method

.method public test_File_input()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const-string v0, "dnsjava"

    const-string v1, "tmp"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 218
    .local v0, "tmp":Ljava/io/File;
    :try_start_8
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 219
    .local v1, "fw":Ljava/io/FileWriter;
    const-string v2, "file\ninput; test"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 222
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 224
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    .line 225
    .local v2, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget v3, v2, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 226
    const-string v3, "file"

    iget-object v5, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v3, v5}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    move-object v2, v3

    .line 229
    iget v3, v2, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x1

    invoke-static {v5, v3}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 231
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    move-object v2, v3

    .line 232
    iget v3, v2, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v4, v3}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 233
    const-string v3, "input"

    iget-object v4, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    move-object v2, v3

    .line 236
    const/4 v3, 0x5

    iget v4, v2, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 237
    const-string v3, " test"

    iget-object v4, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3}, Lorg/xbill/DNS/Tokenizer;->close()V
    :try_end_69
    .catchall {:try_start_8 .. :try_end_69} :catchall_6e

    .line 242
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "tt":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    nop

    .line 244
    return-void

    .line 242
    :catchall_6e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public test_empty_string()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 275
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 276
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 278
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v3, " "

    invoke-direct {v1, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 279
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 280
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v2, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 281
    return-void
.end method

.method public test_get()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "AnIdentifier \"a quoted \\\" string\"\r\n; this is \"my\"\t(comment)\nanotherIdentifier (\ramultilineIdentifier\n)"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 62
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 63
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 64
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 65
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 66
    const-string v2, "AnIdentifier"

    iget-object v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 69
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x2

    invoke-static {v4, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 70
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 71
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 72
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 75
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 76
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 77
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 78
    const-string v2, "a quoted \\\" string"

    iget-object v5, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v5}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 81
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 83
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 84
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 87
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v5, 0x5

    invoke-static {v5, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 88
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 89
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 90
    const-string v2, " this is \"my\"\t(comment)"

    iget-object v6, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 93
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 94
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 95
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 96
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 99
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 100
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 101
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 102
    const-string v2, "anotherIdentifier"

    iget-object v6, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 105
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v4, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 107
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 108
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 109
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 110
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 111
    const-string v2, "amultilineIdentifier"

    iget-object v6, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 114
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v4, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 116
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 117
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v6, 0x0

    invoke-static {v6, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 118
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 119
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 120
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 123
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 124
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v6, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 125
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertFalse(Z)V

    .line 126
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isEOL()Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertTrue(Z)V

    .line 127
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 129
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v7, "onlyOneIdentifier"

    invoke-direct {v2, v7}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 130
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 131
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 132
    const-string v2, "onlyOneIdentifier"

    iget-object v7, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v7, "identifier ;"

    invoke-direct {v2, v7}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 135
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 136
    const-string v2, "identifier"

    iget-object v7, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 138
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v6, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 142
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v7, "identifier \nidentifier2; junk comment"

    invoke-direct {v2, v7}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 143
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 144
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 145
    const-string v2, "identifier"

    iget-object v7, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 149
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 150
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 151
    const-string v2, "identifier"

    iget-object v7, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 154
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v4, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 156
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 157
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 158
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v4, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 160
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 161
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 163
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 164
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 165
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 167
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 168
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 169
    const-string v2, "identifier2"

    iget-object v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 172
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v5, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 173
    const-string v2, " junk comment"

    iget-object v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 176
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 177
    iget v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v5, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 178
    const-string v2, " junk comment"

    iget-object v4, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-static {v2, v4}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 181
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v6, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 183
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "identifier ( junk ; comment\n )"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 184
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 185
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 186
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    iget v1, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v3, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 187
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    iget v1, v1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    invoke-static {v6, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 188
    return-void
.end method

.method public test_getBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_92

    .line 506
    .local v0, "exp":[B
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "AQIDBAUGBwgJ"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 507
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v1

    .line 508
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 511
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "AQIDB AUGB   wgJ"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 512
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v1

    .line 513
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 516
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "AQIDBAUGBwgJ\nAB23DK"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 517
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v1

    .line 518
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 521
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 522
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getBase64()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 524
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 526
    const/4 v2, 0x1

    :try_start_59
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    .line 527
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_63
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_59 .. :try_end_63} :catch_64

    .line 529
    goto :goto_65

    :catch_64
    move-exception v3

    .line 532
    :goto_65
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "not_base64"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 534
    :try_start_6e
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    .line 535
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_6e .. :try_end_79} :catch_7a

    .line 537
    goto :goto_7b

    :catch_7a
    move-exception v3

    .line 539
    :goto_7b
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "not_base64"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 541
    :try_start_84
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    .line 542
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_8e
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_84 .. :try_end_8e} :catch_8f

    .line 544
    goto :goto_90

    :catch_8f
    move-exception v2

    .line 545
    :goto_90
    return-void

    nop

    :array_92
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public test_getEOL()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "id"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    .line 479
    :try_start_e
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V
    :try_end_13
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_e .. :try_end_13} :catch_14

    .line 483
    goto :goto_1c

    .line 481
    :catch_14
    move-exception v0

    .line 482
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V

    .line 485
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    :goto_1c
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 487
    :try_start_25
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 488
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V
    :try_end_2f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_25 .. :try_end_2f} :catch_30

    .line 492
    goto :goto_38

    .line 490
    :catch_30
    move-exception v0

    .line 491
    .restart local v0    # "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V

    .line 494
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    :goto_38
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "id"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 496
    :try_start_41
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getEOL()V

    .line 497
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_41 .. :try_end_4b} :catch_4c

    .line 499
    goto :goto_4d

    :catch_4c
    move-exception v0

    .line 500
    :goto_4d
    return-void
.end method

.method public test_getHex()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_92

    .line 551
    .local v0, "exp":[B
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "0102030405060708090A0B0C0D0E0F"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 552
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v1

    .line 553
    .local v1, "out":[B
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 556
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "0102030 405 060708090A0B0C      0D0E0F"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 557
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v1

    .line 558
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 561
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "0102030405060708090A0B0C0D0E0F\n01AB3FE"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 562
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v1

    .line 563
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals([B[B)V

    .line 566
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 567
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->assertNull(Ljava/lang/Object;)V

    .line 569
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 571
    const/4 v2, 0x1

    :try_start_59
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    .line 572
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_63
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_59 .. :try_end_63} :catch_64

    .line 574
    goto :goto_65

    :catch_64
    move-exception v3

    .line 577
    :goto_65
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "not_hex"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 579
    :try_start_6e
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    .line 580
    const-string v3, "TextParseException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_6e .. :try_end_79} :catch_7a

    .line 582
    goto :goto_7b

    :catch_7a
    move-exception v3

    .line 584
    :goto_7b
    new-instance v3, Lorg/xbill/DNS/Tokenizer;

    const-string v4, "not_hex"

    invoke-direct {v3, v4}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 586
    :try_start_84
    iget-object v3, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    .line 587
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_8e
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_84 .. :try_end_8e} :catch_8f

    .line 589
    goto :goto_90

    :catch_8f
    move-exception v2

    .line 590
    :goto_90
    return-void

    nop

    :array_92
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method public test_getIdentifier()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "just_an_identifier"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 317
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "out":Ljava/lang/String;
    const-string v1, "just_an_identifier"

    invoke-static {v1, v0}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "\"just a string\""

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 322
    :try_start_1d
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getIdentifier()Ljava/lang/String;

    .line 323
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1d .. :try_end_27} :catch_28

    .line 325
    goto :goto_29

    :catch_28
    move-exception v1

    .line 326
    :goto_29
    return-void
.end method

.method public test_getLong()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2147483648"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 331
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 332
    .local v0, "out":J
    const-wide v2, 0x80000000L

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 334
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "-10"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 336
    :try_start_20
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    .line 337
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 339
    goto :goto_2c

    :catch_2b
    move-exception v2

    .line 341
    :goto_2c
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "19_identifier"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 343
    :try_start_35
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    .line 344
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_3f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_35 .. :try_end_3f} :catch_40

    .line 346
    goto :goto_41

    :catch_40
    move-exception v2

    .line 347
    :goto_41
    return-void
.end method

.method public test_getName()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 452
    const-string v0, "."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 453
    .local v0, "root":Lorg/xbill/DNS/Name;
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "junk"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 454
    const-string v1, "junk."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 455
    .local v1, "exp":Lorg/xbill/DNS/Name;
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 456
    .local v2, "out":Lorg/xbill/DNS/Name;
    invoke-static {v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    const-string v3, "you.dig"

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 459
    .local v3, "rel":Lorg/xbill/DNS/Name;
    new-instance v4, Lorg/xbill/DNS/Tokenizer;

    const-string v5, "junk"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 461
    :try_start_2d
    iget-object v4, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    .line 462
    const-string v4, "RelativeNameException not thrown"

    invoke-static {v4}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_37
    .catch Lorg/xbill/DNS/RelativeNameException; {:try_start_2d .. :try_end_37} :catch_38

    .line 464
    goto :goto_39

    :catch_38
    move-exception v4

    .line 466
    :goto_39
    new-instance v4, Lorg/xbill/DNS/Tokenizer;

    const-string v5, ""

    invoke-direct {v4, v5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 468
    :try_start_42
    iget-object v4, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    .line 469
    const-string v4, "TextParseException not thrown"

    invoke-static {v4}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_42 .. :try_end_4c} :catch_4d

    .line 471
    goto :goto_4e

    :catch_4d
    move-exception v4

    .line 472
    :goto_4e
    return-void
.end method

.method public test_getString()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "just_an_identifier"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 299
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "out":Ljava/lang/String;
    const-string v1, "just_an_identifier"

    invoke-static {v1, v0}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "\"just a string\""

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 303
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "just a string"

    invoke-static {v1, v0}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "; just a comment"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 308
    :try_start_31
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 309
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_31 .. :try_end_3d} :catch_3e

    .line 311
    goto :goto_3f

    :catch_3e
    move-exception v1

    .line 312
    :goto_3f
    return-void
.end method

.method public test_getTTL()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "59S"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 415
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v0

    const-wide/16 v2, 0x3b

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 417
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2147483647"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 418
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 420
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2147483648"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 421
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 423
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "Junk"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 425
    :try_start_44
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTL()J

    .line 426
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_44 .. :try_end_4e} :catch_4f

    .line 428
    goto :goto_50

    :catch_4f
    move-exception v0

    .line 429
    :goto_50
    return-void
.end method

.method public test_getTTLLike()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "59S"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 434
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    const-wide/16 v2, 0x3b

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 436
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2147483647"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 437
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 439
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2147483648"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 440
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 442
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "Junk"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 444
    :try_start_49
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getTTLLike()J

    .line 445
    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_49 .. :try_end_53} :catch_54

    .line 447
    goto :goto_55

    :catch_54
    move-exception v0

    .line 448
    :goto_55
    return-void
.end method

.method public test_getUInt16()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "43981"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 373
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    .line 374
    .local v0, "out":I
    int-to-long v1, v0

    const-wide/32 v3, 0xabcd

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 376
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "65536"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 378
    :try_start_1f
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    .line 379
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1f .. :try_end_29} :catch_2a

    .line 381
    goto :goto_2b

    :catch_2a
    move-exception v1

    .line 383
    :goto_2b
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "-125"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 385
    :try_start_34
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    .line 386
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_3e
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_34 .. :try_end_3e} :catch_3f

    .line 388
    goto :goto_40

    :catch_3f
    move-exception v1

    .line 389
    :goto_40
    return-void
.end method

.method public test_getUInt32()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "2882400018"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 352
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    move-result-wide v0

    .line 353
    .local v0, "out":J
    const-wide v2, 0xabcdef12L

    invoke-static {v2, v3, v0, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 355
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "4294967296"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 357
    :try_start_20
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    .line 358
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 360
    goto :goto_2c

    :catch_2b
    move-exception v2

    .line 362
    :goto_2c
    new-instance v2, Lorg/xbill/DNS/Tokenizer;

    const-string v3, "-12345"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 364
    :try_start_35
    iget-object v2, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer;->getUInt32()J

    .line 365
    const-string v2, "TextParseException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_3f
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_35 .. :try_end_3f} :catch_40

    .line 367
    goto :goto_41

    :catch_40
    move-exception v2

    .line 368
    :goto_41
    return-void
.end method

.method public test_getUInt8()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "205"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 394
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    .line 395
    .local v0, "out":I
    int-to-long v1, v0

    const-wide/16 v3, 0xcd

    invoke-static {v3, v4, v1, v2}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(JJ)V

    .line 397
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "256"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 399
    :try_start_1e
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    .line 400
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1e .. :try_end_28} :catch_29

    .line 402
    goto :goto_2a

    :catch_29
    move-exception v1

    .line 404
    :goto_2a
    new-instance v1, Lorg/xbill/DNS/Tokenizer;

    const-string v2, "-12"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 406
    :try_start_33
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    .line 407
    const-string v1, "TextParseException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_33 .. :try_end_3d} :catch_3e

    .line 409
    goto :goto_3f

    :catch_3e
    move-exception v1

    .line 410
    :goto_3f
    return-void
.end method

.method public test_get_invalid()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "(this ;"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 193
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    .line 194
    :try_start_e
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_e .. :try_end_18} :catch_19

    .line 195
    goto :goto_1a

    :catch_19
    move-exception v0

    .line 197
    :goto_1a
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "\"bad"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 198
    :try_start_23
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_2d
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_23 .. :try_end_2d} :catch_2e

    .line 199
    goto :goto_2f

    :catch_2e
    move-exception v0

    .line 201
    :goto_2f
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, ")"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 202
    :try_start_38
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_42
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_38 .. :try_end_42} :catch_43

    .line 203
    goto :goto_44

    :catch_43
    move-exception v0

    .line 205
    :goto_44
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 206
    :try_start_4d
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_57
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_4d .. :try_end_57} :catch_58

    .line 207
    goto :goto_59

    :catch_58
    move-exception v0

    .line 209
    :goto_59
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "\"\n"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 210
    :try_start_62
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    const-string v0, "TextParseException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_62 .. :try_end_6c} :catch_6d

    .line 211
    goto :goto_6e

    :catch_6d
    move-exception v0

    .line 212
    :goto_6e
    return-void
.end method

.method public test_multiple_ungets()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "a simple one"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 286
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 288
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 290
    :try_start_14
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 291
    const-string v1, "IllegalStateException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/TokenizerTest;->fail(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1e} :catch_1f

    .line 293
    goto :goto_20

    :catch_1f
    move-exception v1

    .line 294
    :goto_20
    return-void
.end method

.method public test_unwanted_comment()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "; this whole thing is a comment\n"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 249
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 251
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 252
    return-void
.end method

.method public test_unwanted_ungotten_comment()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, "; this whole thing is a comment"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 266
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 267
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 268
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 269
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 270
    return-void
.end method

.method public test_unwanted_ungotten_whitespace()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Lorg/xbill/DNS/Tokenizer;

    const-string v1, " "

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    .line 257
    iget-object v0, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 258
    .local v0, "tt":Lorg/xbill/DNS/Tokenizer$Token;
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 259
    iget-object v1, p0, Lorg/xbill/DNS/TokenizerTest;->m_t:Lorg/xbill/DNS/Tokenizer;

    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 260
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/xbill/DNS/TokenizerTest;->assertEquals(II)V

    .line 261
    return-void
.end method
