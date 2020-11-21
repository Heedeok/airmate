.class public Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;
.super Ljava/lang/Object;
.source "WifiChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;,
        Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;,
        Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;,
        Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;
    }
.end annotation


# instance fields
.field private checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

.field private failureCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

.field private foundWiFiCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

.field private reconnectionCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;)V
    .registers 4
    .param p1, "foundWiFiCallback"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;
    .param p2, "failureCallback"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;
    .param p3, "reconnectionCallback"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->foundWiFiCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

    .line 86
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    .line 87
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->reconnectionCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    .line 53
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->failureCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    .line 53
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->foundWiFiCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    .line 53
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->reconnectionCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;

    return-object v0
.end method

.method public static wifiValid(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Landroid/net/wifi/WifiManager;)Z
    .registers 7
    .param p0, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 116
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 117
    return v2

    .line 119
    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 120
    if-eqz v0, :cond_73

    .line 121
    const-string v1, "WiFiChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_73

    .line 123
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v3, :cond_73

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "master_SSID":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 126
    return v2

    .line 131
    .end local v1    # "master_SSID":Ljava/lang/String;
    :cond_73
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public beginChecking(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Landroid/net/wifi/WifiManager;)V
    .registers 4
    .param p1, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p2, "manager"    # Landroid/net/wifi/WifiManager;

    .line 95
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->stopChecking()V

    .line 97
    invoke-virtual {p1}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 98
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->foundWiFiCallback:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

    invoke-interface {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;->handleSuccess()V

    .line 99
    return-void

    .line 101
    :cond_f
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;-><init>(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    .line 102
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->start()V

    .line 103
    return-void
.end method

.method public getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 135
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 136
    .local v0, "cap":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "WEP"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PSK"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "EAP"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 137
    .local v1, "securityModes":[Ljava/lang/String;
    array-length v2, v1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_26

    .line 138
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 139
    aget-object v3, v1, v2

    return-object v3

    .line 137
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 142
    .end local v2    # "i":I
    :cond_26
    const-string v2, "OPEN"

    return-object v2
.end method

.method public stopChecking()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->checkerThread:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->interrupt()V

    .line 112
    :cond_11
    return-void
.end method
