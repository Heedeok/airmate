.class public Lorg/xbill/DNS/MessageTest;
.super Ljava/lang/Object;
.source "MessageTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/MessageTest$Test_init;
    }
.end annotation


# static fields
.field static synthetic class$org$xbill$DNS$MessageTest$Test_init:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 114
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

.method public static suite()Ljunit/framework/Test;
    .registers 2

    .line 113
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0}, Ljunit/framework/TestSuite;-><init>()V

    .line 114
    .local v0, "s":Ljunit/framework/TestSuite;
    sget-object v1, Lorg/xbill/DNS/MessageTest;->class$org$xbill$DNS$MessageTest$Test_init:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.xbill.DNS.MessageTest$Test_init"

    invoke-static {v1}, Lorg/xbill/DNS/MessageTest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/MessageTest;->class$org$xbill$DNS$MessageTest$Test_init:Ljava/lang/Class;

    goto :goto_14

    :cond_12
    sget-object v1, Lorg/xbill/DNS/MessageTest;->class$org$xbill$DNS$MessageTest$Test_init:Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0, v1}, Ljunit/framework/TestSuite;->addTestSuite(Ljava/lang/Class;)V

    .line 115
    return-object v0
.end method
