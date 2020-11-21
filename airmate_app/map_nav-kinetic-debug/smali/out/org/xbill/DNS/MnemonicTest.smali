.class public Lorg/xbill/DNS/MnemonicTest;
.super Ljunit/framework/TestCase;
.source "MnemonicTest.java"


# static fields
.field static synthetic class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;


# instance fields
.field private m_mn:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public setUp()V
    .registers 4

    .line 52
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "org.xbill.DNS.MnemonicTest"

    invoke-static {v2}, Lorg/xbill/DNS/MnemonicTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    goto :goto_16

    :cond_14
    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    :goto_16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " UPPER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    .line 53
    return-void
.end method

.method public test_addAll()V
    .registers 8

    .line 250
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Ten"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Twenty"

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 253
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "second test Mnemonic"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 254
    .local v0, "mn2":Lorg/xbill/DNS/Mnemonic;
    const-string v1, "Twenty"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 255
    const-string v1, "Veinte"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 256
    const-string v1, "Thirty"

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 258
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Mnemonic;->addAll(Lorg/xbill/DNS/Mnemonic;)V

    .line 260
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "text":Ljava/lang/String;
    const-string v5, "TEN"

    invoke-static {v5, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v5, v3}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v5, "TWENTY"

    invoke-static {v5, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v5, v4}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v5, "THIRTY"

    invoke-static {v5, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    const-string v5, "40"

    invoke-static {v5, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v6, "tEn"

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v5

    .line 273
    .local v5, "value":I
    invoke-static {v2, v5}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 275
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v6, "twenty"

    invoke-virtual {v2, v6}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v2

    .line 276
    .end local v5    # "value":I
    .local v2, "value":I
    invoke-static {v3, v2}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 278
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v6, "VeiNTe"

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v2

    .line 279
    invoke-static {v3, v2}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 281
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "THIRTY"

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v2

    .line 282
    invoke-static {v4, v2}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 283
    return-void
.end method

.method public test_basic_operation()V
    .registers 7

    .line 139
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Ten"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Twenty"

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Veinte"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 142
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Thirty"

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "text":Ljava/lang/String;
    const-string v1, "TEN"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "TWENTY"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "THIRTY"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "40"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "tEn"

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "value":I
    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 159
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "twenty"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 160
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 162
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "VeiNTe"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 163
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 165
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "THIRTY"

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 166
    invoke-static {v4, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 167
    return-void
.end method

.method public test_basic_operation_lower()V
    .registers 7

    .line 171
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "org.xbill.DNS.MnemonicTest"

    invoke-static {v2}, Lorg/xbill/DNS/MnemonicTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    goto :goto_16

    :cond_14
    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    :goto_16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " LOWER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    .line 172
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Ten"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Twenty"

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Veinte"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Thirty"

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 177
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "text":Ljava/lang/String;
    const-string v1, "ten"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "twenty"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "thirty"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "40"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "tEn"

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "value":I
    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 192
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "twenty"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 193
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 195
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "VeiNTe"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 198
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "THIRTY"

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 199
    invoke-static {v4, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 200
    return-void
.end method

.method public test_basic_operation_sensitive()V
    .registers 8

    .line 204
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    if-nez v2, :cond_14

    const-string v2, "org.xbill.DNS.MnemonicTest"

    invoke-static {v2}, Lorg/xbill/DNS/MnemonicTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    goto :goto_16

    :cond_14
    sget-object v2, Lorg/xbill/DNS/MnemonicTest;->class$org$xbill$DNS$MnemonicTest:Ljava/lang/Class;

    :goto_16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " SENSITIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Ten"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Twenty"

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Veinte"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Thirty"

    const/16 v4, 0x1e

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "text":Ljava/lang/String;
    const-string v1, "Ten"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "Twenty"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "Thirty"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, "40"

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "Ten"

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "value":I
    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 225
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "twenty"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 226
    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 228
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v6, "Twenty"

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 229
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 231
    iget-object v5, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v6, "VEINTE"

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 232
    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 234
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "Veinte"

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 235
    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 237
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "Thirty"

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 238
    invoke-static {v4, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 239
    return-void
.end method

.method public test_invalid_numeric()V
    .registers 3

    .line 243
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 244
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Not-A-Number"

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "value":I
    const/4 v1, -0x1

    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 246
    return-void
.end method

.method public test_no_maximum()V
    .registers 6

    .line 84
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    const-string v1, "IllegalArgumentException not thrown"

    invoke-static {v1}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v1

    .line 85
    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Mnemonic;->check(I)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V

    .line 86
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1c
    const v2, 0x7fffffff

    :try_start_1f
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Mnemonic;->check(I)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V

    .line 88
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2d
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 90
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "val":I
    invoke-static {v0, v3}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 93
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 94
    .end local v3    # "val":I
    .local v0, "val":I
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 96
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "2147483647"

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-static {v2, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 98
    return-void
.end method

.method public test_setMaximum()V
    .registers 7

    .line 102
    iget-object v0, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 103
    const/4 v0, -0x1

    :try_start_8
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    const-string v2, "IllegalArgumentException not thrown"

    invoke-static {v2}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v2

    .line 104
    :goto_14
    const/4 v2, 0x0

    :try_start_15
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/Mnemonic;->check(I)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V

    .line 105
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_23
    :try_start_23
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/Mnemonic;->check(I)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V

    .line 106
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_31
    :try_start_31
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    const-string v3, "IllegalArgumentException not thrown"

    invoke-static {v3}, Lorg/xbill/DNS/MnemonicTest;->fail(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v3

    .line 109
    :goto_3f
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 111
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "val":I
    invoke-static {v0, v3}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 114
    iget-object v4, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 115
    invoke-static {v2, v3}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 117
    iget-object v2, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "15"

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v2

    .line 118
    .end local v3    # "val":I
    .local v2, "val":I
    invoke-static {v1, v2}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "16"

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 121
    .end local v2    # "val":I
    .local v1, "val":I
    invoke-static {v0, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 122
    return-void
.end method

.method public test_setPrefix()V
    .registers 6

    .line 126
    const-string v0, "A mixed CASE Prefix"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "out":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lorg/xbill/DNS/MnemonicTest;->m_mn:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 133
    .local v3, "i":I
    invoke-static {v2, v3}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(II)V

    .line 134
    return-void
.end method

.method public test_toInteger()V
    .registers 5

    .line 57
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {v0}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    .local v0, "i2":Ljava/lang/Integer;
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const/4 v2, -0x1

    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 70
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    const/16 v2, 0x3f

    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-static {v2}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    invoke-static {v1, v0}, Lorg/xbill/DNS/MnemonicTest;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
