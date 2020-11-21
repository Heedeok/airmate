.class public Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;
.super Ljava/lang/Object;
.source "ConcertChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;,
        Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;,
        Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;
    }
.end annotation


# instance fields
.field private checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

.field private failureCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

.field private foundConcertCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;)V
    .registers 3
    .param p1, "foundConcertCallback"    # Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;
    .param p2, "failureCallback"    # Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->foundConcertCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;

    .line 93
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    .line 68
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;)Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;

    .line 68
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->foundConcertCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$ConcertDescriptionReceiver;

    return-object v0
.end method


# virtual methods
.method public beginChecking(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;)V
    .registers 5
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 101
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->stopChecking()V

    .line 102
    invoke-virtual {p1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    const-string v1, "empty concert URI"

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 104
    return-void

    .line 108
    :cond_11
    :try_start_11
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getMasterUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_1a} :catch_29

    .line 112
    .local v0, "uri":Ljava/net/URI;
    nop

    .line 111
    nop

    .line 113
    new-instance v1, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    .line 114
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    invoke-virtual {v1}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->start()V

    .line 115
    return-void

    .line 109
    .end local v0    # "uri":Ljava/net/URI;
    :catch_29
    move-exception v0

    .line 110
    .local v0, "e":Ljava/net/URISyntaxException;
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;

    const-string v2, "invalid concert URI"

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public stopChecking()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/master/ConcertChecker$CheckerThread;->interrupt()V

    .line 124
    :cond_11
    return-void
.end method
