.class Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;
.super Ljava/lang/Object;
.source "WebServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/webserver/WebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressMatcher"
.end annotation


# instance fields
.field private final pattern:[I

.field final synthetic this$0:Lorg/apache/xmlrpc/webserver/WebServer;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/WebServer;Ljava/lang/String;)V
    .registers 8
    .param p2, "pAddress"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->this$0:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 p1, 0x4

    :try_start_6
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    .line 79
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-ne v1, p1, :cond_3b

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, p1, :cond_39

    .line 84
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "next":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 86
    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    const/16 v4, 0x100

    aput v4, v3, v1

    goto :goto_36

    .line 91
    :cond_2d
    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput v4, v3, v1

    .line 83
    .end local v2    # "next":Ljava/lang/String;
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 97
    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "i":I
    :cond_39
    nop

    .line 98
    return-void

    .line 81
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_41

    .line 94
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :catch_41
    move-exception p1

    .line 95
    .local p1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not represent a valid IP address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method matches([B)Z
    .registers 6
    .param p1, "pAddress"    # [B

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 102
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    aget v2, v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_e

    .line 103
    goto :goto_17

    .line 105
    :cond_e
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/WebServer$AddressMatcher;->pattern:[I

    aget v2, v2, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_17

    .line 106
    return v0

    .line 101
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v1    # "i":I
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
