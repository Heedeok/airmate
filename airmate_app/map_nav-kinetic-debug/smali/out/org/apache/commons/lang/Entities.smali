.class Lorg/apache/commons/lang/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/Entities$BinaryEntityMap;,
        Lorg/apache/commons/lang/Entities$ArrayEntityMap;,
        Lorg/apache/commons/lang/Entities$LookupEntityMap;,
        Lorg/apache/commons/lang/Entities$TreeEntityMap;,
        Lorg/apache/commons/lang/Entities$HashEntityMap;,
        Lorg/apache/commons/lang/Entities$MapIntMap;,
        Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;,
        Lorg/apache/commons/lang/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lorg/apache/commons/lang/Entities;

.field public static final HTML40:Lorg/apache/commons/lang/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lorg/apache/commons/lang/Entities;


# instance fields
.field map:Lorg/apache/commons/lang/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 45
    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "quot"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "34"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "amp"

    aput-object v4, v3, v5

    const-string v4, "38"

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "lt"

    aput-object v4, v3, v5

    const-string v4, "60"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "gt"

    aput-object v4, v3, v5

    const-string v4, "62"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v3, v1, v4

    sput-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 51
    new-array v1, v6, [[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "apos"

    aput-object v7, v3, v5

    const-string v7, "39"

    aput-object v7, v3, v6

    aput-object v3, v1, v5

    sput-object v1, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    .line 55
    const/16 v1, 0x60

    new-array v3, v1, [[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "nbsp"

    aput-object v8, v7, v5

    const-string v8, "160"

    aput-object v8, v7, v6

    aput-object v7, v3, v5

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "iexcl"

    aput-object v8, v7, v5

    const-string v8, "161"

    aput-object v8, v7, v6

    aput-object v7, v3, v6

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "cent"

    aput-object v8, v7, v5

    const-string v8, "162"

    aput-object v8, v7, v6

    aput-object v7, v3, v2

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "pound"

    aput-object v8, v7, v5

    const-string v8, "163"

    aput-object v8, v7, v6

    aput-object v7, v3, v4

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "curren"

    aput-object v8, v7, v5

    const-string v8, "164"

    aput-object v8, v7, v6

    aput-object v7, v3, v0

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "yen"

    aput-object v8, v7, v5

    const-string v8, "165"

    aput-object v8, v7, v6

    const/4 v8, 0x5

    aput-object v7, v3, v8

    new-array v7, v2, [Ljava/lang/String;

    const-string v9, "brvbar"

    aput-object v9, v7, v5

    const-string v9, "166"

    aput-object v9, v7, v6

    const/4 v9, 0x6

    aput-object v7, v3, v9

    new-array v7, v2, [Ljava/lang/String;

    const-string v10, "sect"

    aput-object v10, v7, v5

    const-string v10, "167"

    aput-object v10, v7, v6

    const/4 v10, 0x7

    aput-object v7, v3, v10

    new-array v7, v2, [Ljava/lang/String;

    const-string v11, "uml"

    aput-object v11, v7, v5

    const-string v11, "168"

    aput-object v11, v7, v6

    const/16 v11, 0x8

    aput-object v7, v3, v11

    new-array v7, v2, [Ljava/lang/String;

    const-string v12, "copy"

    aput-object v12, v7, v5

    const-string v12, "169"

    aput-object v12, v7, v6

    const/16 v12, 0x9

    aput-object v7, v3, v12

    new-array v7, v2, [Ljava/lang/String;

    const-string v13, "ordf"

    aput-object v13, v7, v5

    const-string v13, "170"

    aput-object v13, v7, v6

    const/16 v13, 0xa

    aput-object v7, v3, v13

    new-array v7, v2, [Ljava/lang/String;

    const-string v14, "laquo"

    aput-object v14, v7, v5

    const-string v14, "171"

    aput-object v14, v7, v6

    const/16 v14, 0xb

    aput-object v7, v3, v14

    new-array v7, v2, [Ljava/lang/String;

    const-string v15, "not"

    aput-object v15, v7, v5

    const-string v15, "172"

    aput-object v15, v7, v6

    const/16 v15, 0xc

    aput-object v7, v3, v15

    new-array v7, v2, [Ljava/lang/String;

    const-string v16, "shy"

    aput-object v16, v7, v5

    const-string v16, "173"

    aput-object v16, v7, v6

    const/16 v16, 0xd

    aput-object v7, v3, v16

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "reg"

    aput-object v17, v7, v5

    const-string v17, "174"

    aput-object v17, v7, v6

    const/16 v17, 0xe

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "macr"

    aput-object v17, v7, v5

    const-string v17, "175"

    aput-object v17, v7, v6

    const/16 v17, 0xf

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "deg"

    aput-object v17, v7, v5

    const-string v17, "176"

    aput-object v17, v7, v6

    const/16 v17, 0x10

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "plusmn"

    aput-object v17, v7, v5

    const-string v17, "177"

    aput-object v17, v7, v6

    const/16 v17, 0x11

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "sup2"

    aput-object v17, v7, v5

    const-string v17, "178"

    aput-object v17, v7, v6

    const/16 v17, 0x12

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "sup3"

    aput-object v17, v7, v5

    const-string v17, "179"

    aput-object v17, v7, v6

    const/16 v17, 0x13

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "acute"

    aput-object v17, v7, v5

    const-string v17, "180"

    aput-object v17, v7, v6

    const/16 v17, 0x14

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "micro"

    aput-object v17, v7, v5

    const-string v17, "181"

    aput-object v17, v7, v6

    const/16 v17, 0x15

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "para"

    aput-object v17, v7, v5

    const-string v17, "182"

    aput-object v17, v7, v6

    const/16 v17, 0x16

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "middot"

    aput-object v17, v7, v5

    const-string v17, "183"

    aput-object v17, v7, v6

    const/16 v17, 0x17

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "cedil"

    aput-object v17, v7, v5

    const-string v17, "184"

    aput-object v17, v7, v6

    const/16 v17, 0x18

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "sup1"

    aput-object v17, v7, v5

    const-string v17, "185"

    aput-object v17, v7, v6

    const/16 v17, 0x19

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ordm"

    aput-object v17, v7, v5

    const-string v17, "186"

    aput-object v17, v7, v6

    const/16 v17, 0x1a

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "raquo"

    aput-object v17, v7, v5

    const-string v17, "187"

    aput-object v17, v7, v6

    const/16 v17, 0x1b

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "frac14"

    aput-object v17, v7, v5

    const-string v17, "188"

    aput-object v17, v7, v6

    const/16 v17, 0x1c

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "frac12"

    aput-object v17, v7, v5

    const-string v17, "189"

    aput-object v17, v7, v6

    const/16 v17, 0x1d

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "frac34"

    aput-object v17, v7, v5

    const-string v17, "190"

    aput-object v17, v7, v6

    const/16 v17, 0x1e

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "iquest"

    aput-object v17, v7, v5

    const-string v17, "191"

    aput-object v17, v7, v6

    const/16 v17, 0x1f

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Agrave"

    aput-object v17, v7, v5

    const-string v17, "192"

    aput-object v17, v7, v6

    const/16 v17, 0x20

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Aacute"

    aput-object v17, v7, v5

    const-string v17, "193"

    aput-object v17, v7, v6

    const/16 v17, 0x21

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Acirc"

    aput-object v17, v7, v5

    const-string v17, "194"

    aput-object v17, v7, v6

    const/16 v17, 0x22

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Atilde"

    aput-object v17, v7, v5

    const-string v17, "195"

    aput-object v17, v7, v6

    const/16 v17, 0x23

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Auml"

    aput-object v17, v7, v5

    const-string v17, "196"

    aput-object v17, v7, v6

    const/16 v17, 0x24

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Aring"

    aput-object v17, v7, v5

    const-string v17, "197"

    aput-object v17, v7, v6

    const/16 v17, 0x25

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "AElig"

    aput-object v17, v7, v5

    const-string v17, "198"

    aput-object v17, v7, v6

    const/16 v17, 0x26

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ccedil"

    aput-object v17, v7, v5

    const-string v17, "199"

    aput-object v17, v7, v6

    const/16 v17, 0x27

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Egrave"

    aput-object v17, v7, v5

    const-string v17, "200"

    aput-object v17, v7, v6

    const/16 v17, 0x28

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Eacute"

    aput-object v17, v7, v5

    const-string v17, "201"

    aput-object v17, v7, v6

    const/16 v17, 0x29

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ecirc"

    aput-object v17, v7, v5

    const-string v17, "202"

    aput-object v17, v7, v6

    const/16 v17, 0x2a

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Euml"

    aput-object v17, v7, v5

    const-string v17, "203"

    aput-object v17, v7, v6

    const/16 v17, 0x2b

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Igrave"

    aput-object v17, v7, v5

    const-string v17, "204"

    aput-object v17, v7, v6

    const/16 v17, 0x2c

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Iacute"

    aput-object v17, v7, v5

    const-string v17, "205"

    aput-object v17, v7, v6

    const/16 v17, 0x2d

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Icirc"

    aput-object v17, v7, v5

    const-string v17, "206"

    aput-object v17, v7, v6

    const/16 v17, 0x2e

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Iuml"

    aput-object v17, v7, v5

    const-string v17, "207"

    aput-object v17, v7, v6

    const/16 v17, 0x2f

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ETH"

    aput-object v17, v7, v5

    const-string v17, "208"

    aput-object v17, v7, v6

    const/16 v17, 0x30

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ntilde"

    aput-object v17, v7, v5

    const-string v17, "209"

    aput-object v17, v7, v6

    const/16 v17, 0x31

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ograve"

    aput-object v17, v7, v5

    const-string v17, "210"

    aput-object v17, v7, v6

    const/16 v17, 0x32

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Oacute"

    aput-object v17, v7, v5

    const-string v17, "211"

    aput-object v17, v7, v6

    const/16 v17, 0x33

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ocirc"

    aput-object v17, v7, v5

    const-string v17, "212"

    aput-object v17, v7, v6

    const/16 v17, 0x34

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Otilde"

    aput-object v17, v7, v5

    const-string v17, "213"

    aput-object v17, v7, v6

    const/16 v17, 0x35

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ouml"

    aput-object v17, v7, v5

    const-string v17, "214"

    aput-object v17, v7, v6

    const/16 v17, 0x36

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "times"

    aput-object v17, v7, v5

    const-string v17, "215"

    aput-object v17, v7, v6

    const/16 v17, 0x37

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Oslash"

    aput-object v17, v7, v5

    const-string v17, "216"

    aput-object v17, v7, v6

    const/16 v17, 0x38

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ugrave"

    aput-object v17, v7, v5

    const-string v17, "217"

    aput-object v17, v7, v6

    const/16 v17, 0x39

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Uacute"

    aput-object v17, v7, v5

    const-string v17, "218"

    aput-object v17, v7, v6

    const/16 v17, 0x3a

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Ucirc"

    aput-object v17, v7, v5

    const-string v17, "219"

    aput-object v17, v7, v6

    const/16 v17, 0x3b

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Uuml"

    aput-object v17, v7, v5

    const-string v17, "220"

    aput-object v17, v7, v6

    const/16 v17, 0x3c

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Yacute"

    aput-object v17, v7, v5

    const-string v17, "221"

    aput-object v17, v7, v6

    const/16 v17, 0x3d

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "THORN"

    aput-object v17, v7, v5

    const-string v17, "222"

    aput-object v17, v7, v6

    const/16 v17, 0x3e

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "szlig"

    aput-object v17, v7, v5

    const-string v17, "223"

    aput-object v17, v7, v6

    const/16 v17, 0x3f

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "agrave"

    aput-object v17, v7, v5

    const-string v17, "224"

    aput-object v17, v7, v6

    const/16 v17, 0x40

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "aacute"

    aput-object v17, v7, v5

    const-string v17, "225"

    aput-object v17, v7, v6

    const/16 v17, 0x41

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "acirc"

    aput-object v17, v7, v5

    const-string v17, "226"

    aput-object v17, v7, v6

    const/16 v17, 0x42

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "atilde"

    aput-object v17, v7, v5

    const-string v17, "227"

    aput-object v17, v7, v6

    const/16 v17, 0x43

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "auml"

    aput-object v17, v7, v5

    const-string v17, "228"

    aput-object v17, v7, v6

    const/16 v17, 0x44

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "aring"

    aput-object v17, v7, v5

    const-string v17, "229"

    aput-object v17, v7, v6

    const/16 v17, 0x45

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "aelig"

    aput-object v17, v7, v5

    const-string v17, "230"

    aput-object v17, v7, v6

    const/16 v17, 0x46

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ccedil"

    aput-object v17, v7, v5

    const-string v17, "231"

    aput-object v17, v7, v6

    const/16 v17, 0x47

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "egrave"

    aput-object v17, v7, v5

    const-string v17, "232"

    aput-object v17, v7, v6

    const/16 v17, 0x48

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "eacute"

    aput-object v17, v7, v5

    const-string v17, "233"

    aput-object v17, v7, v6

    const/16 v17, 0x49

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ecirc"

    aput-object v17, v7, v5

    const-string v17, "234"

    aput-object v17, v7, v6

    const/16 v17, 0x4a

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "euml"

    aput-object v17, v7, v5

    const-string v17, "235"

    aput-object v17, v7, v6

    const/16 v17, 0x4b

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "igrave"

    aput-object v17, v7, v5

    const-string v17, "236"

    aput-object v17, v7, v6

    const/16 v17, 0x4c

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "iacute"

    aput-object v17, v7, v5

    const-string v17, "237"

    aput-object v17, v7, v6

    const/16 v17, 0x4d

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "icirc"

    aput-object v17, v7, v5

    const-string v17, "238"

    aput-object v17, v7, v6

    const/16 v17, 0x4e

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "iuml"

    aput-object v17, v7, v5

    const-string v17, "239"

    aput-object v17, v7, v6

    const/16 v17, 0x4f

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "eth"

    aput-object v17, v7, v5

    const-string v17, "240"

    aput-object v17, v7, v6

    const/16 v17, 0x50

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ntilde"

    aput-object v17, v7, v5

    const-string v17, "241"

    aput-object v17, v7, v6

    const/16 v17, 0x51

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ograve"

    aput-object v17, v7, v5

    const-string v17, "242"

    aput-object v17, v7, v6

    const/16 v17, 0x52

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "oacute"

    aput-object v17, v7, v5

    const-string v17, "243"

    aput-object v17, v7, v6

    const/16 v17, 0x53

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ocirc"

    aput-object v17, v7, v5

    const-string v17, "244"

    aput-object v17, v7, v6

    const/16 v17, 0x54

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "otilde"

    aput-object v17, v7, v5

    const-string v17, "245"

    aput-object v17, v7, v6

    const/16 v17, 0x55

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ouml"

    aput-object v17, v7, v5

    const-string v17, "246"

    aput-object v17, v7, v6

    const/16 v17, 0x56

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "divide"

    aput-object v17, v7, v5

    const-string v17, "247"

    aput-object v17, v7, v6

    const/16 v17, 0x57

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "oslash"

    aput-object v17, v7, v5

    const-string v17, "248"

    aput-object v17, v7, v6

    const/16 v17, 0x58

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ugrave"

    aput-object v17, v7, v5

    const-string v17, "249"

    aput-object v17, v7, v6

    const/16 v17, 0x59

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "uacute"

    aput-object v17, v7, v5

    const-string v17, "250"

    aput-object v17, v7, v6

    const/16 v17, 0x5a

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "ucirc"

    aput-object v17, v7, v5

    const-string v17, "251"

    aput-object v17, v7, v6

    const/16 v17, 0x5b

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "uuml"

    aput-object v17, v7, v5

    const-string v17, "252"

    aput-object v17, v7, v6

    const/16 v17, 0x5c

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "yacute"

    aput-object v17, v7, v5

    const-string v17, "253"

    aput-object v17, v7, v6

    const/16 v17, 0x5d

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "thorn"

    aput-object v17, v7, v5

    const-string v17, "254"

    aput-object v17, v7, v6

    const/16 v17, 0x5e

    aput-object v7, v3, v17

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "yuml"

    aput-object v17, v7, v5

    const-string v17, "255"

    aput-object v17, v7, v6

    const/16 v17, 0x5f

    aput-object v7, v3, v17

    sput-object v3, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    .line 155
    const/16 v3, 0x97

    new-array v3, v3, [[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "fnof"

    aput-object v17, v7, v5

    const-string v17, "402"

    aput-object v17, v7, v6

    aput-object v7, v3, v5

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Alpha"

    aput-object v17, v7, v5

    const-string v17, "913"

    aput-object v17, v7, v6

    aput-object v7, v3, v6

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Beta"

    aput-object v17, v7, v5

    const-string v17, "914"

    aput-object v17, v7, v6

    aput-object v7, v3, v2

    new-array v7, v2, [Ljava/lang/String;

    const-string v17, "Gamma"

    aput-object v17, v7, v5

    const-string v17, "915"

    aput-object v17, v7, v6

    aput-object v7, v3, v4

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "Delta"

    aput-object v7, v4, v5

    const-string v7, "916"

    aput-object v7, v4, v6

    aput-object v4, v3, v0

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Epsilon"

    aput-object v4, v0, v5

    const-string v4, "917"

    aput-object v4, v0, v6

    aput-object v0, v3, v8

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Zeta"

    aput-object v4, v0, v5

    const-string v4, "918"

    aput-object v4, v0, v6

    aput-object v0, v3, v9

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Eta"

    aput-object v4, v0, v5

    const-string v4, "919"

    aput-object v4, v0, v6

    aput-object v0, v3, v10

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Theta"

    aput-object v4, v0, v5

    const-string v4, "920"

    aput-object v4, v0, v6

    aput-object v0, v3, v11

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Iota"

    aput-object v4, v0, v5

    const-string v4, "921"

    aput-object v4, v0, v6

    aput-object v0, v3, v12

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Kappa"

    aput-object v4, v0, v5

    const-string v4, "922"

    aput-object v4, v0, v6

    aput-object v0, v3, v13

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Lambda"

    aput-object v4, v0, v5

    const-string v4, "923"

    aput-object v4, v0, v6

    aput-object v0, v3, v14

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Mu"

    aput-object v4, v0, v5

    const-string v4, "924"

    aput-object v4, v0, v6

    aput-object v0, v3, v15

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Nu"

    aput-object v4, v0, v5

    const-string v4, "925"

    aput-object v4, v0, v6

    aput-object v0, v3, v16

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Xi"

    aput-object v4, v0, v5

    const-string v4, "926"

    aput-object v4, v0, v6

    const/16 v4, 0xe

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Omicron"

    aput-object v4, v0, v5

    const-string v4, "927"

    aput-object v4, v0, v6

    const/16 v4, 0xf

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Pi"

    aput-object v4, v0, v5

    const-string v4, "928"

    aput-object v4, v0, v6

    const/16 v4, 0x10

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Rho"

    aput-object v4, v0, v5

    const-string v4, "929"

    aput-object v4, v0, v6

    const/16 v4, 0x11

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Sigma"

    aput-object v4, v0, v5

    const-string v4, "931"

    aput-object v4, v0, v6

    const/16 v4, 0x12

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Tau"

    aput-object v4, v0, v5

    const-string v4, "932"

    aput-object v4, v0, v6

    const/16 v4, 0x13

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Upsilon"

    aput-object v4, v0, v5

    const-string v4, "933"

    aput-object v4, v0, v6

    const/16 v4, 0x14

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Phi"

    aput-object v4, v0, v5

    const-string v4, "934"

    aput-object v4, v0, v6

    const/16 v4, 0x15

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Chi"

    aput-object v4, v0, v5

    const-string v4, "935"

    aput-object v4, v0, v6

    const/16 v4, 0x16

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Psi"

    aput-object v4, v0, v5

    const-string v4, "936"

    aput-object v4, v0, v6

    const/16 v4, 0x17

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Omega"

    aput-object v4, v0, v5

    const-string v4, "937"

    aput-object v4, v0, v6

    const/16 v4, 0x18

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "alpha"

    aput-object v4, v0, v5

    const-string v4, "945"

    aput-object v4, v0, v6

    const/16 v4, 0x19

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "beta"

    aput-object v4, v0, v5

    const-string v4, "946"

    aput-object v4, v0, v6

    const/16 v4, 0x1a

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "gamma"

    aput-object v4, v0, v5

    const-string v4, "947"

    aput-object v4, v0, v6

    const/16 v4, 0x1b

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "delta"

    aput-object v4, v0, v5

    const-string v4, "948"

    aput-object v4, v0, v6

    const/16 v4, 0x1c

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "epsilon"

    aput-object v4, v0, v5

    const-string v4, "949"

    aput-object v4, v0, v6

    const/16 v4, 0x1d

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "zeta"

    aput-object v4, v0, v5

    const-string v4, "950"

    aput-object v4, v0, v6

    const/16 v4, 0x1e

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "eta"

    aput-object v4, v0, v5

    const-string v4, "951"

    aput-object v4, v0, v6

    const/16 v4, 0x1f

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "theta"

    aput-object v4, v0, v5

    const-string v4, "952"

    aput-object v4, v0, v6

    const/16 v4, 0x20

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "iota"

    aput-object v4, v0, v5

    const-string v4, "953"

    aput-object v4, v0, v6

    const/16 v4, 0x21

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "kappa"

    aput-object v4, v0, v5

    const-string v4, "954"

    aput-object v4, v0, v6

    const/16 v4, 0x22

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lambda"

    aput-object v4, v0, v5

    const-string v4, "955"

    aput-object v4, v0, v6

    const/16 v4, 0x23

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "mu"

    aput-object v4, v0, v5

    const-string v4, "956"

    aput-object v4, v0, v6

    const/16 v4, 0x24

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "nu"

    aput-object v4, v0, v5

    const-string v4, "957"

    aput-object v4, v0, v6

    const/16 v4, 0x25

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "xi"

    aput-object v4, v0, v5

    const-string v4, "958"

    aput-object v4, v0, v6

    const/16 v4, 0x26

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "omicron"

    aput-object v4, v0, v5

    const-string v4, "959"

    aput-object v4, v0, v6

    const/16 v4, 0x27

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "pi"

    aput-object v4, v0, v5

    const-string v4, "960"

    aput-object v4, v0, v6

    const/16 v4, 0x28

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rho"

    aput-object v4, v0, v5

    const-string v4, "961"

    aput-object v4, v0, v6

    const/16 v4, 0x29

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sigmaf"

    aput-object v4, v0, v5

    const-string v4, "962"

    aput-object v4, v0, v6

    const/16 v4, 0x2a

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sigma"

    aput-object v4, v0, v5

    const-string v4, "963"

    aput-object v4, v0, v6

    const/16 v4, 0x2b

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "tau"

    aput-object v4, v0, v5

    const-string v4, "964"

    aput-object v4, v0, v6

    const/16 v4, 0x2c

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "upsilon"

    aput-object v4, v0, v5

    const-string v4, "965"

    aput-object v4, v0, v6

    const/16 v4, 0x2d

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "phi"

    aput-object v4, v0, v5

    const-string v4, "966"

    aput-object v4, v0, v6

    const/16 v4, 0x2e

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "chi"

    aput-object v4, v0, v5

    const-string v4, "967"

    aput-object v4, v0, v6

    const/16 v4, 0x2f

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "psi"

    aput-object v4, v0, v5

    const-string v4, "968"

    aput-object v4, v0, v6

    const/16 v4, 0x30

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "omega"

    aput-object v4, v0, v5

    const-string v4, "969"

    aput-object v4, v0, v6

    const/16 v4, 0x31

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "thetasym"

    aput-object v4, v0, v5

    const-string v4, "977"

    aput-object v4, v0, v6

    const/16 v4, 0x32

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "upsih"

    aput-object v4, v0, v5

    const-string v4, "978"

    aput-object v4, v0, v6

    const/16 v4, 0x33

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "piv"

    aput-object v4, v0, v5

    const-string v4, "982"

    aput-object v4, v0, v6

    const/16 v4, 0x34

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "bull"

    aput-object v4, v0, v5

    const-string v4, "8226"

    aput-object v4, v0, v6

    const/16 v4, 0x35

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "hellip"

    aput-object v4, v0, v5

    const-string v4, "8230"

    aput-object v4, v0, v6

    const/16 v4, 0x36

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prime"

    aput-object v4, v0, v5

    const-string v4, "8242"

    aput-object v4, v0, v6

    const/16 v4, 0x37

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "Prime"

    aput-object v4, v0, v5

    const-string v4, "8243"

    aput-object v4, v0, v6

    const/16 v4, 0x38

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "oline"

    aput-object v4, v0, v5

    const-string v4, "8254"

    aput-object v4, v0, v6

    const/16 v4, 0x39

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "frasl"

    aput-object v4, v0, v5

    const-string v4, "8260"

    aput-object v4, v0, v6

    const/16 v4, 0x3a

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "weierp"

    aput-object v4, v0, v5

    const-string v4, "8472"

    aput-object v4, v0, v6

    const/16 v4, 0x3b

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "image"

    aput-object v4, v0, v5

    const-string v4, "8465"

    aput-object v4, v0, v6

    const/16 v4, 0x3c

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "real"

    aput-object v4, v0, v5

    const-string v4, "8476"

    aput-object v4, v0, v6

    const/16 v4, 0x3d

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "trade"

    aput-object v4, v0, v5

    const-string v4, "8482"

    aput-object v4, v0, v6

    const/16 v4, 0x3e

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "alefsym"

    aput-object v4, v0, v5

    const-string v4, "8501"

    aput-object v4, v0, v6

    const/16 v4, 0x3f

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "larr"

    aput-object v4, v0, v5

    const-string v4, "8592"

    aput-object v4, v0, v6

    const/16 v4, 0x40

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "uarr"

    aput-object v4, v0, v5

    const-string v4, "8593"

    aput-object v4, v0, v6

    const/16 v4, 0x41

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rarr"

    aput-object v4, v0, v5

    const-string v4, "8594"

    aput-object v4, v0, v6

    const/16 v4, 0x42

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "darr"

    aput-object v4, v0, v5

    const-string v4, "8595"

    aput-object v4, v0, v6

    const/16 v4, 0x43

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "harr"

    aput-object v4, v0, v5

    const-string v4, "8596"

    aput-object v4, v0, v6

    const/16 v4, 0x44

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "crarr"

    aput-object v4, v0, v5

    const-string v4, "8629"

    aput-object v4, v0, v6

    const/16 v4, 0x45

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lArr"

    aput-object v4, v0, v5

    const-string v4, "8656"

    aput-object v4, v0, v6

    const/16 v4, 0x46

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "uArr"

    aput-object v4, v0, v5

    const-string v4, "8657"

    aput-object v4, v0, v6

    const/16 v4, 0x47

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rArr"

    aput-object v4, v0, v5

    const-string v4, "8658"

    aput-object v4, v0, v6

    const/16 v4, 0x48

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "dArr"

    aput-object v4, v0, v5

    const-string v4, "8659"

    aput-object v4, v0, v6

    const/16 v4, 0x49

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "hArr"

    aput-object v4, v0, v5

    const-string v4, "8660"

    aput-object v4, v0, v6

    const/16 v4, 0x4a

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "forall"

    aput-object v4, v0, v5

    const-string v4, "8704"

    aput-object v4, v0, v6

    const/16 v4, 0x4b

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "part"

    aput-object v4, v0, v5

    const-string v4, "8706"

    aput-object v4, v0, v6

    const/16 v4, 0x4c

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "exist"

    aput-object v4, v0, v5

    const-string v4, "8707"

    aput-object v4, v0, v6

    const/16 v4, 0x4d

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "empty"

    aput-object v4, v0, v5

    const-string v4, "8709"

    aput-object v4, v0, v6

    const/16 v4, 0x4e

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "nabla"

    aput-object v4, v0, v5

    const-string v4, "8711"

    aput-object v4, v0, v6

    const/16 v4, 0x4f

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "isin"

    aput-object v4, v0, v5

    const-string v4, "8712"

    aput-object v4, v0, v6

    const/16 v4, 0x50

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "notin"

    aput-object v4, v0, v5

    const-string v4, "8713"

    aput-object v4, v0, v6

    const/16 v4, 0x51

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ni"

    aput-object v4, v0, v5

    const-string v4, "8715"

    aput-object v4, v0, v6

    const/16 v4, 0x52

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prod"

    aput-object v4, v0, v5

    const-string v4, "8719"

    aput-object v4, v0, v6

    const/16 v4, 0x53

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "sum"

    aput-object v4, v0, v5

    const-string v4, "8721"

    aput-object v4, v0, v6

    const/16 v4, 0x54

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "minus"

    aput-object v4, v0, v5

    const-string v4, "8722"

    aput-object v4, v0, v6

    const/16 v4, 0x55

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "lowast"

    aput-object v4, v0, v5

    const-string v4, "8727"

    aput-object v4, v0, v6

    const/16 v4, 0x56

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "radic"

    aput-object v4, v0, v5

    const-string v4, "8730"

    aput-object v4, v0, v6

    const/16 v4, 0x57

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "prop"

    aput-object v4, v0, v5

    const-string v4, "8733"

    aput-object v4, v0, v6

    const/16 v4, 0x58

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "infin"

    aput-object v4, v0, v5

    const-string v4, "8734"

    aput-object v4, v0, v6

    const/16 v4, 0x59

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "ang"

    aput-object v4, v0, v5

    const-string v4, "8736"

    aput-object v4, v0, v6

    const/16 v4, 0x5a

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "and"

    aput-object v4, v0, v5

    const-string v4, "8743"

    aput-object v4, v0, v6

    const/16 v4, 0x5b

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "or"

    aput-object v4, v0, v5

    const-string v4, "8744"

    aput-object v4, v0, v6

    const/16 v4, 0x5c

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "cap"

    aput-object v4, v0, v5

    const-string v4, "8745"

    aput-object v4, v0, v6

    const/16 v4, 0x5d

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "cup"

    aput-object v4, v0, v5

    const-string v4, "8746"

    aput-object v4, v0, v6

    const/16 v4, 0x5e

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "int"

    aput-object v4, v0, v5

    const-string v4, "8747"

    aput-object v4, v0, v6

    const/16 v4, 0x5f

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "there4"

    aput-object v4, v0, v5

    const-string v4, "8756"

    aput-object v4, v0, v6

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sim"

    aput-object v1, v0, v5

    const-string v1, "8764"

    aput-object v1, v0, v6

    const/16 v1, 0x61

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "cong"

    aput-object v1, v0, v5

    const-string v1, "8773"

    aput-object v1, v0, v6

    const/16 v1, 0x62

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "asymp"

    aput-object v1, v0, v5

    const-string v1, "8776"

    aput-object v1, v0, v6

    const/16 v1, 0x63

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ne"

    aput-object v1, v0, v5

    const-string v1, "8800"

    aput-object v1, v0, v6

    const/16 v1, 0x64

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "equiv"

    aput-object v1, v0, v5

    const-string v1, "8801"

    aput-object v1, v0, v6

    const/16 v1, 0x65

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "le"

    aput-object v1, v0, v5

    const-string v1, "8804"

    aput-object v1, v0, v6

    const/16 v1, 0x66

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ge"

    aput-object v1, v0, v5

    const-string v1, "8805"

    aput-object v1, v0, v6

    const/16 v1, 0x67

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sub"

    aput-object v1, v0, v5

    const-string v1, "8834"

    aput-object v1, v0, v6

    const/16 v1, 0x68

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sup"

    aput-object v1, v0, v5

    const-string v1, "8835"

    aput-object v1, v0, v6

    const/16 v1, 0x69

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sube"

    aput-object v1, v0, v5

    const-string v1, "8838"

    aput-object v1, v0, v6

    const/16 v1, 0x6a

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "supe"

    aput-object v1, v0, v5

    const-string v1, "8839"

    aput-object v1, v0, v6

    const/16 v1, 0x6b

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "oplus"

    aput-object v1, v0, v5

    const-string v1, "8853"

    aput-object v1, v0, v6

    const/16 v1, 0x6c

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "otimes"

    aput-object v1, v0, v5

    const-string v1, "8855"

    aput-object v1, v0, v6

    const/16 v1, 0x6d

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "perp"

    aput-object v1, v0, v5

    const-string v1, "8869"

    aput-object v1, v0, v6

    const/16 v1, 0x6e

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sdot"

    aput-object v1, v0, v5

    const-string v1, "8901"

    aput-object v1, v0, v6

    const/16 v1, 0x6f

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lceil"

    aput-object v1, v0, v5

    const-string v1, "8968"

    aput-object v1, v0, v6

    const/16 v1, 0x70

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rceil"

    aput-object v1, v0, v5

    const-string v1, "8969"

    aput-object v1, v0, v6

    const/16 v1, 0x71

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lfloor"

    aput-object v1, v0, v5

    const-string v1, "8970"

    aput-object v1, v0, v6

    const/16 v1, 0x72

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rfloor"

    aput-object v1, v0, v5

    const-string v1, "8971"

    aput-object v1, v0, v6

    const/16 v1, 0x73

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lang"

    aput-object v1, v0, v5

    const-string v1, "9001"

    aput-object v1, v0, v6

    const/16 v1, 0x74

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rang"

    aput-object v1, v0, v5

    const-string v1, "9002"

    aput-object v1, v0, v6

    const/16 v1, 0x75

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "loz"

    aput-object v1, v0, v5

    const-string v1, "9674"

    aput-object v1, v0, v6

    const/16 v1, 0x76

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "spades"

    aput-object v1, v0, v5

    const-string v1, "9824"

    aput-object v1, v0, v6

    const/16 v1, 0x77

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "clubs"

    aput-object v1, v0, v5

    const-string v1, "9827"

    aput-object v1, v0, v6

    const/16 v1, 0x78

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "hearts"

    aput-object v1, v0, v5

    const-string v1, "9829"

    aput-object v1, v0, v6

    const/16 v1, 0x79

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "diams"

    aput-object v1, v0, v5

    const-string v1, "9830"

    aput-object v1, v0, v6

    const/16 v1, 0x7a

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "OElig"

    aput-object v1, v0, v5

    const-string v1, "338"

    aput-object v1, v0, v6

    const/16 v1, 0x7b

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "oelig"

    aput-object v1, v0, v5

    const-string v1, "339"

    aput-object v1, v0, v6

    const/16 v1, 0x7c

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Scaron"

    aput-object v1, v0, v5

    const-string v1, "352"

    aput-object v1, v0, v6

    const/16 v1, 0x7d

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "scaron"

    aput-object v1, v0, v5

    const-string v1, "353"

    aput-object v1, v0, v6

    const/16 v1, 0x7e

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Yuml"

    aput-object v1, v0, v5

    const-string v1, "376"

    aput-object v1, v0, v6

    const/16 v1, 0x7f

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "circ"

    aput-object v1, v0, v5

    const-string v1, "710"

    aput-object v1, v0, v6

    const/16 v1, 0x80

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "tilde"

    aput-object v1, v0, v5

    const-string v1, "732"

    aput-object v1, v0, v6

    const/16 v1, 0x81

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ensp"

    aput-object v1, v0, v5

    const-string v1, "8194"

    aput-object v1, v0, v6

    const/16 v1, 0x82

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "emsp"

    aput-object v1, v0, v5

    const-string v1, "8195"

    aput-object v1, v0, v6

    const/16 v1, 0x83

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "thinsp"

    aput-object v1, v0, v5

    const-string v1, "8201"

    aput-object v1, v0, v6

    const/16 v1, 0x84

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zwnj"

    aput-object v1, v0, v5

    const-string v1, "8204"

    aput-object v1, v0, v6

    const/16 v1, 0x85

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "zwj"

    aput-object v1, v0, v5

    const-string v1, "8205"

    aput-object v1, v0, v6

    const/16 v1, 0x86

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lrm"

    aput-object v1, v0, v5

    const-string v1, "8206"

    aput-object v1, v0, v6

    const/16 v1, 0x87

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rlm"

    aput-object v1, v0, v5

    const-string v1, "8207"

    aput-object v1, v0, v6

    const/16 v1, 0x88

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ndash"

    aput-object v1, v0, v5

    const-string v1, "8211"

    aput-object v1, v0, v6

    const/16 v1, 0x89

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "mdash"

    aput-object v1, v0, v5

    const-string v1, "8212"

    aput-object v1, v0, v6

    const/16 v1, 0x8a

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lsquo"

    aput-object v1, v0, v5

    const-string v1, "8216"

    aput-object v1, v0, v6

    const/16 v1, 0x8b

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rsquo"

    aput-object v1, v0, v5

    const-string v1, "8217"

    aput-object v1, v0, v6

    const/16 v1, 0x8c

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sbquo"

    aput-object v1, v0, v5

    const-string v1, "8218"

    aput-object v1, v0, v6

    const/16 v1, 0x8d

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ldquo"

    aput-object v1, v0, v5

    const-string v1, "8220"

    aput-object v1, v0, v6

    const/16 v1, 0x8e

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rdquo"

    aput-object v1, v0, v5

    const-string v1, "8221"

    aput-object v1, v0, v6

    const/16 v1, 0x8f

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bdquo"

    aput-object v1, v0, v5

    const-string v1, "8222"

    aput-object v1, v0, v6

    const/16 v1, 0x90

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "dagger"

    aput-object v1, v0, v5

    const-string v1, "8224"

    aput-object v1, v0, v6

    const/16 v1, 0x91

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Dagger"

    aput-object v1, v0, v5

    const-string v1, "8225"

    aput-object v1, v0, v6

    const/16 v1, 0x92

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "permil"

    aput-object v1, v0, v5

    const-string v1, "8240"

    aput-object v1, v0, v6

    const/16 v1, 0x93

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "lsaquo"

    aput-object v1, v0, v5

    const-string v1, "8249"

    aput-object v1, v0, v6

    const/16 v1, 0x94

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "rsaquo"

    aput-object v1, v0, v5

    const-string v1, "8250"

    aput-object v1, v0, v6

    const/16 v1, 0x95

    aput-object v0, v3, v1

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "euro"

    aput-object v1, v0, v5

    const-string v1, "8364"

    aput-object v1, v0, v6

    const/16 v1, 0x96

    aput-object v0, v3, v1

    sput-object v3, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    .line 374
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    .line 375
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    sget-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 376
    sget-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    sget-object v1, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 380
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    .line 381
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    sget-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 382
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    sget-object v1, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 386
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    .line 387
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-static {v0}, Lorg/apache/commons/lang/Entities;->fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V

    .line 388
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Lorg/apache/commons/lang/Entities$LookupEntityMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    return-void
.end method

.method private createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .line 884
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    return-object v0
.end method

.method private doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 21
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "firstAmp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 930
    .local v5, "len":I
    move v0, v4

    .local v0, "i":I
    :goto_f
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v5, :cond_ac

    .line 931
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 932
    .local v7, "c":C
    const/16 v8, 0x26

    const/4 v9, 0x1

    if-ne v7, v8, :cond_a1

    .line 933
    add-int/lit8 v10, v6, 0x1

    .line 934
    .local v10, "nextIdx":I
    const/16 v11, 0x3b

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 935
    .local v12, "semiColonIdx":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2e

    .line 936
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 937
    nop

    .line 930
    .end local v7    # "c":C
    .end local v10    # "nextIdx":I
    .end local v12    # "semiColonIdx":I
    :goto_2a
    move-object/from16 v3, p0

    goto/16 :goto_a6

    .line 939
    .restart local v7    # "c":C
    .restart local v10    # "nextIdx":I
    .restart local v12    # "semiColonIdx":I
    :cond_2e
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 940
    .local v14, "amphersandIdx":I
    if-eq v14, v13, :cond_3c

    if-ge v14, v12, :cond_3c

    .line 942
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 943
    goto :goto_2a

    .line 945
    :cond_3c
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 946
    .local v15, "entityContent":Ljava/lang/String;
    const/16 v16, -0x1

    .line 947
    .local v16, "entityValue":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 948
    .local v11, "entityContentLen":I
    if-lez v11, :cond_83

    .line 949
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_86

    .line 951
    if-le v11, v9, :cond_83

    .line 952
    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v0

    .line 954
    .local v3, "isHexChar":C
    const/16 v0, 0x58

    if-eq v3, v0, :cond_6c

    const/16 v0, 0x78

    if-eq v3, v0, :cond_6c

    .line 961
    :try_start_5f
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0xa

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_78

    .line 967
    :catch_6a
    move-exception v0

    goto :goto_7f

    .line 957
    :cond_6c
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x10

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_77} :catch_6a

    .line 958
    .end local v16    # "entityValue":I
    .local v0, "entityValue":I
    nop

    .line 964
    :goto_78
    const v9, 0xffff

    if-le v0, v9, :cond_7e

    .line 965
    const/4 v0, -0x1

    .line 969
    :cond_7e
    goto :goto_81

    .line 967
    .end local v0    # "entityValue":I
    .restart local v16    # "entityValue":I
    :goto_7f
    nop

    .line 968
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    .line 969
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "isHexChar":C
    :goto_81
    move/from16 v16, v0

    .line 976
    .end local v16    # "entityValue":I
    .local v0, "entityValue":I
    :cond_83
    move-object/from16 v3, p0

    goto :goto_8c

    .line 972
    .end local v0    # "entityValue":I
    .restart local v16    # "entityValue":I
    :cond_86
    move-object/from16 v3, p0

    invoke-virtual {v3, v15}, Lorg/apache/commons/lang/Entities;->entityValue(Ljava/lang/String;)I

    move-result v16

    .line 976
    .end local v16    # "entityValue":I
    .restart local v0    # "entityValue":I
    :goto_8c
    move/from16 v0, v16

    if-ne v0, v13, :cond_9c

    .line 977
    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    .line 978
    invoke-virtual {v1, v15}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 979
    const/16 v8, 0x3b

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_9f

    .line 981
    :cond_9c
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 983
    :goto_9f
    move v6, v12

    goto :goto_a6

    .line 985
    .end local v0    # "entityValue":I
    .end local v10    # "nextIdx":I
    .end local v11    # "entityContentLen":I
    .end local v12    # "semiColonIdx":I
    .end local v14    # "amphersandIdx":I
    .end local v15    # "entityContent":Ljava/lang/String;
    :cond_a1
    move-object/from16 v3, p0

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 930
    .end local v7    # "c":C
    :goto_a6
    const/4 v7, 0x1

    add-int/lit8 v0, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_f

    .line 988
    .end local v6    # "i":I
    :cond_ac
    move-object/from16 v3, p0

    return-void
.end method

.method static fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V
    .registers 2
    .param p0, "entities"    # Lorg/apache/commons/lang/Entities;

    .line 399
    sget-object v0, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 400
    sget-object v0, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 401
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 402
    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .registers 7
    .param p1, "entityArray"    # [[Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 738
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/Entities;->addEntity(Ljava/lang/String;I)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 740
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 753
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/Entities$EntityMap;->add(Ljava/lang/String;I)V

    .line 754
    return-void
.end method

.method public entityName(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 766
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public entityValue(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 797
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 799
    .local v0, "stringWriter":Ljava/io/StringWriter;
    :try_start_4
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_d

    .line 804
    nop

    .line 805
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 800
    :catch_d
    move-exception v1

    .line 803
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public escape(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 9
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 827
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_3b

    .line 828
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 829
    .local v2, "c":C
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/Entities;->entityName(I)Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "entityName":Ljava/lang/String;
    const/16 v4, 0x3b

    if-nez v3, :cond_2d

    .line 831
    const/16 v5, 0x7f

    if-le v2, v5, :cond_29

    .line 832
    const-string v5, "&#"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 833
    const/16 v5, 0xa

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_38

    .line 836
    :cond_29
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_38

    .line 839
    :cond_2d
    const/16 v5, 0x26

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 840
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 827
    .end local v2    # "c":C
    .end local v3    # "entityName":Ljava/lang/String;
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 844
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 861
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 862
    .local v0, "firstAmp":I
    if-gez v0, :cond_9

    .line 863
    return-object p1

    .line 865
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v1

    .line 867
    .local v1, "stringWriter":Ljava/io/StringWriter;
    :try_start_d
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_16

    .line 872
    nop

    .line 873
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 868
    :catch_16
    move-exception v2

    .line 871
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v3, v2}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public unescape(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 906
    .local v0, "firstAmp":I
    if-gez v0, :cond_c

    .line 907
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 908
    return-void

    .line 910
    :cond_c
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 912
    return-void
.end method
