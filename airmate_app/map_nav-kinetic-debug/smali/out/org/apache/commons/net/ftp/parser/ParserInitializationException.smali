.class public Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
.super Ljava/lang/RuntimeException;
.source "ParserInitializationException.java"


# instance fields
.field private final rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->rootCause:Ljava/lang/Throwable;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->rootCause:Ljava/lang/Throwable;

    .line 53
    return-void
.end method


# virtual methods
.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method
