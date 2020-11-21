.class public Lorg/xbill/DNS/KEYRecord$Flags;
.super Ljava/lang/Object;
.source "KEYRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# static fields
.field public static final EXTEND:I = 0x1000

.field public static final FLAG10:I = 0x20

.field public static final FLAG11:I = 0x10

.field public static final FLAG2:I = 0x2000

.field public static final FLAG4:I = 0x800

.field public static final FLAG5:I = 0x400

.field public static final FLAG8:I = 0x80

.field public static final FLAG9:I = 0x40

.field public static final HOST:I = 0x200

.field public static final NOAUTH:I = 0x8000

.field public static final NOCONF:I = 0x4000

.field public static final NOKEY:I = 0xc000

.field public static final NTYP3:I = 0x300

.field public static final OWNER_MASK:I = 0x300

.field public static final SIG0:I = 0x0

.field public static final SIG1:I = 0x1

.field public static final SIG10:I = 0xa

.field public static final SIG11:I = 0xb

.field public static final SIG12:I = 0xc

.field public static final SIG13:I = 0xd

.field public static final SIG14:I = 0xe

.field public static final SIG15:I = 0xf

.field public static final SIG2:I = 0x2

.field public static final SIG3:I = 0x3

.field public static final SIG4:I = 0x4

.field public static final SIG5:I = 0x5

.field public static final SIG6:I = 0x6

.field public static final SIG7:I = 0x7

.field public static final SIG8:I = 0x8

.field public static final SIG9:I = 0x9

.field public static final USER:I = 0x0

.field public static final USE_MASK:I = 0xc000

.field public static final ZONE:I = 0x100

.field private static flags:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 187
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "KEY flags"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    .line 191
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 192
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "NOCONF"

    const/16 v4, 0x4000

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "NOAUTH"

    const v4, 0x8000

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "NOKEY"

    const v4, 0xc000

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG2"

    const/16 v4, 0x2000

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "EXTEND"

    const/16 v4, 0x1000

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG4"

    const/16 v4, 0x800

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG5"

    const/16 v4, 0x400

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 201
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "USER"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 202
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "ZONE"

    const/16 v4, 0x100

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 203
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "HOST"

    const/16 v4, 0x200

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 204
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "NTYP3"

    const/16 v4, 0x300

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 205
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG8"

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 206
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG9"

    const/16 v4, 0x40

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 207
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG10"

    const/16 v4, 0x20

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 208
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "FLAG11"

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 209
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v3, "SIG0"

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 210
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG1"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 211
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG2"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 212
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG3"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 213
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG4"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 214
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG5"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 215
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG6"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 216
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG7"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 217
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG8"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 218
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG9"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 219
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG10"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 220
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG11"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 221
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG12"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 222
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG13"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 223
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG14"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 224
    sget-object v0, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    const-string v1, "SIG15"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static value(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 237
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_e

    .line 238
    .local v1, "value":I
    if-ltz v1, :cond_d

    const v2, 0xffff

    if-gt v1, v2, :cond_d

    .line 239
    return v1

    .line 241
    :cond_d
    return v0

    .line 242
    .end local v1    # "value":I
    :catch_e
    move-exception v1

    .line 244
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v1, "st":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 246
    .local v2, "value":I
    :goto_17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 247
    sget-object v3, Lorg/xbill/DNS/KEYRecord$Flags;->flags:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v3

    .line 248
    .local v3, "val":I
    if-gez v3, :cond_2a

    .line 249
    return v0

    .line 251
    :cond_2a
    or-int/2addr v2, v3

    .line 252
    .end local v3    # "val":I
    goto :goto_17

    .line 253
    :cond_2c
    return v2
.end method
