.class public Lorg/apache/commons/httpclient/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# static fields
.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private reason:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 231
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 76
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 80
    const/4 v0, 0x1

    :try_start_a
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_19

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_1b

    :cond_19
    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1b
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 81
    .local v1, "paramsClasses":[Ljava/lang/Class;
    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_2b

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/commons/httpclient/HttpException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_2d

    :cond_2b
    sget-object v2, Lorg/apache/commons/httpclient/HttpException;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_2d
    const-string v4, "initCause"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 82
    .local v2, "initCause":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3b

    .line 85
    .end local v1    # "paramsClasses":[Ljava/lang/Class;
    .end local v2    # "initCause":Ljava/lang/reflect/Method;
    goto :goto_3c

    .line 83
    :catch_3b
    move-exception v0

    .line 86
    :goto_3c
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
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

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .registers 2

    .line 214
    iget v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    return v0
.end method

.method public printStackTrace()V
    .registers 2

    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 108
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 123
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 124
    .local v0, "paramsClasses":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackTrace"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 136
    .end local v0    # "paramsClasses":[Ljava/lang/Class;
    goto :goto_22

    .line 126
    :catch_10
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 130
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 133
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 137
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_22
    :goto_22
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 152
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    .line 153
    .local v0, "paramsClasses":[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackTrace"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 165
    .end local v0    # "paramsClasses":[Ljava/lang/Class;
    goto :goto_22

    .line 155
    :catch_10
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 159
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 162
    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 166
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_22
    :goto_22
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpException;->reason:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setReasonCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 203
    iput p1, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 204
    return-void
.end method
