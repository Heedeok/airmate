.class public Lorg/xbill/DNS/CompressionTest;
.super Ljunit/framework/TestCase;
.source "CompressionTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 2

    .line 45
    const-string v0, "verbosecompression"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->set(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public test()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 51
    .local v0, "c":Lorg/xbill/DNS/Compression;
    const-string v1, "www.amazon.com."

    invoke-static {v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 53
    .local v1, "n":Lorg/xbill/DNS/Name;
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 54
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/xbill/DNS/CompressionTest;->assertEquals(II)V

    .line 56
    const-string v3, "www.cnn.com."

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 58
    .local v3, "n2":Lorg/xbill/DNS/Name;
    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 59
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/xbill/DNS/CompressionTest;->assertEquals(II)V

    .line 60
    return-void
.end method
