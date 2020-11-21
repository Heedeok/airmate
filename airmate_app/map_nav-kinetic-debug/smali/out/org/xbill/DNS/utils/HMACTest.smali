.class public Lorg/xbill/DNS/utils/HMACTest;
.super Ljunit/framework/TestCase;
.source "HMACTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/utils/HMACTest$test_data;
    }
.end annotation


# static fields
.field private static tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/xbill/DNS/utils/HMACTest$test_data;

    sput-object v0, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 58
    sget-object v2, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    new-instance v3, Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/xbill/DNS/utils/HMACTest$test_data;-><init>(Lorg/xbill/DNS/utils/HMACTest$1;)V

    aput-object v3, v2, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 62
    .end local v1    # "i":I
    :cond_19
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v0

    const-string v2, "0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 63
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v0

    const-string v2, "Hi There"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 64
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v0

    const-string v2, "9294727a3638bb1c13f48ef8158bfc9d"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 67
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "Jefe"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 68
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v3, "what do ya want for nothing?"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 69
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v2, "750c783e6ab0b503eaa86e310a5db738"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 72
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v3, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

    invoke-static {v3}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 73
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const/16 v3, 0x32

    new-array v4, v3, [B

    iput-object v4, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 74
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7a
    sget-object v4, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_90

    .line 75
    sget-object v4, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    const/16 v5, -0x23

    aput-byte v5, v4, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 77
    .end local v1    # "i":I
    :cond_90
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v2, "56be34521d144c88dbb8c733f0e8b3f6"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 80
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v4, "0102030405060708090a0b0c0d0e0f10111213141516171819"

    invoke-static {v4}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 81
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    new-array v3, v3, [B

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 82
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b2
    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    array-length v3, v3

    if-ge v1, v3, :cond_c8

    .line 83
    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    const/16 v4, -0x33

    aput-byte v4, v3, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    .line 85
    .end local v1    # "i":I
    :cond_c8
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v2, "697eaf0aca3a3aea3a75164746ffaa79"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 88
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string v3, "0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c"

    invoke-static {v3}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 89
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v3, "Test With Truncation"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 90
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v2, "56461ef2342edc00f9bab995690efd4c"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 93
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/16 v3, 0x50

    new-array v4, v3, [B

    iput-object v4, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 94
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_105
    sget-object v4, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    array-length v4, v4

    const/16 v5, -0x56

    if-ge v1, v4, :cond_11b

    .line 95
    sget-object v4, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    aput-byte v5, v4, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    .line 97
    .end local v1    # "i":I
    :cond_11b
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v4, "Test Using Larger Than Block-Size Key - Hash Key First"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 98
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    const-string v2, "6b1ab7fe4bd7bf8f0b62e6ce61b9d0cd"

    invoke-static {v2}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 101
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v3, v3, [B

    iput-object v3, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    .line 102
    nop

    .local v0, "i":I
    :goto_13d
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    array-length v1, v1

    if-ge v0, v1, :cond_151

    .line 103
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    aput-byte v5, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_13d

    .line 105
    .end local v0    # "i":I
    :cond_151
    sget-object v0, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v0, v0, v2

    const-string v1, "Test Using Larger Than Block-Size Key and Larger Than One Block-Size Data"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    .line 106
    sget-object v0, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v0, v0, v2

    const-string v1, "6f630fad67cda0ee1fb1f562db3aa53e"

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private do_test(ILorg/xbill/DNS/utils/HMAC;)V
    .registers 9
    .param p1, "i"    # I
    .param p2, "h"    # Lorg/xbill/DNS/utils/HMAC;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 118
    invoke-virtual {p2}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v0

    .line 120
    .local v0, "out":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "test="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    array-length v3, v3

    array-length v4, v0

    invoke-static {v1, v3, v4}, Lorg/xbill/DNS/utils/HMACTest;->assertEquals(Ljava/lang/String;II)V

    .line 121
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_32
    array-length v3, v0

    if-ge v1, v3, :cond_56

    .line 122
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "test="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v4, v4, p1

    iget-object v4, v4, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    aget-byte v4, v4, v1

    aget-byte v5, v0, v1

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/utils/HMACTest;->assertEquals(Ljava/lang/String;BB)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 126
    .end local v1    # "j":I
    :cond_56
    invoke-virtual {p2}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 127
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    invoke-virtual {p2, v1}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 128
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    invoke-virtual {p2, v1}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/utils/HMACTest;->assertTrue(Z)V

    .line 131
    invoke-virtual {p2}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 132
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->data:[B

    array-length v3, v3

    invoke-virtual {p2, v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 133
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/xbill/DNS/utils/HMACTest$test_data;->digest:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 134
    .local v1, "tmp":[B
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    const/16 v3, -0x55

    aput-byte v3, v1, v2

    .line 135
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/utils/HMACTest;->assertFalse(Z)V

    .line 136
    return-void
.end method


# virtual methods
.method public test_ctor_digestName_key()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 152
    new-instance v1, Lorg/xbill/DNS/utils/HMAC;

    const-string v2, "md5"

    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    invoke-direct {v1, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 153
    .local v1, "h":Lorg/xbill/DNS/utils/HMAC;
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/utils/HMACTest;->do_test(ILorg/xbill/DNS/utils/HMAC;)V

    .line 151
    .end local v1    # "h":Lorg/xbill/DNS/utils/HMAC;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public test_ctor_digestName_key_invalid()V
    .registers 4

    .line 160
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    const-string v1, "no name"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 161
    const-string v0, "IllegalArgumentException not thrown"

    invoke-static {v0}, Lorg/xbill/DNS/utils/HMACTest;->fail(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_10

    .line 163
    goto :goto_11

    :catch_10
    move-exception v0

    .line 164
    :goto_11
    return-void
.end method

.method public test_ctor_digest_key()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 142
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 143
    .local v1, "md":Ljava/security/MessageDigest;
    new-instance v2, Lorg/xbill/DNS/utils/HMAC;

    sget-object v3, Lorg/xbill/DNS/utils/HMACTest;->tests:[Lorg/xbill/DNS/utils/HMACTest$test_data;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/xbill/DNS/utils/HMACTest$test_data;->key:[B

    invoke-direct {v2, v1, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/security/MessageDigest;[B)V

    .line 144
    .local v2, "h":Lorg/xbill/DNS/utils/HMAC;
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/utils/HMACTest;->do_test(ILorg/xbill/DNS/utils/HMAC;)V

    .line 141
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "h":Lorg/xbill/DNS/utils/HMAC;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method
