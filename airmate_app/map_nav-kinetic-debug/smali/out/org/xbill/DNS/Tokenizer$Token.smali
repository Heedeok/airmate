.class public Lorg/xbill/DNS/Tokenizer$Token;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/Tokenizer$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/xbill/DNS/Tokenizer$1;

    .line 67
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer$Token;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    .registers 4
    .param p0, "x0"    # Lorg/xbill/DNS/Tokenizer$Token;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/StringBuffer;

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method private set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/StringBuffer;

    .line 82
    if-ltz p1, :cond_f

    .line 84
    iput p1, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    .line 85
    if-nez p2, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 86
    return-object p0

    .line 83
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public isEOL()Z
    .registers 3

    .line 122
    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_c
    :goto_c
    return v1
.end method

.method public isString()Z
    .registers 3

    .line 116
    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 95
    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    packed-switch v0, :pswitch_data_5c

    .line 109
    const-string v0, "<unknown>"

    return-object v0

    .line 107
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<quoted_string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_3a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_53
    const-string v0, "<whitespace>"

    return-object v0

    .line 99
    :pswitch_56
    const-string v0, "<eol>"

    return-object v0

    .line 97
    :pswitch_59
    const-string v0, "<eof>"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_3a
        :pswitch_21
        :pswitch_8
    .end packed-switch
.end method
