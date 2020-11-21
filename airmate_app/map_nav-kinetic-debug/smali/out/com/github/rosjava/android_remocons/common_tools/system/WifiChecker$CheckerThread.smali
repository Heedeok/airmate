.class Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;
.super Ljava/lang/Thread;
.source "WifiChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckerThread"
.end annotation


# instance fields
.field private masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

.field final synthetic this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Landroid/net/wifi/WifiManager;)V
    .registers 5
    .param p2, "masterId"    # Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;
    .param p3, "wifi"    # Landroid/net/wifi/WifiManager;

    .line 149
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 151
    iput-object p3, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->setDaemon(Z)V

    .line 154
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread$1;

    invoke-direct {v0, p0, p1}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread$1;-><init>(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)V

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 160
    return-void
.end method

.method private wifiValid()Z
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->wifiValid(Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;Landroid/net/wifi/WifiManager;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$100(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;->handleSuccess()V

    goto/16 :goto_2d3

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$200(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v2}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$ReconnectionHandler;->doReconnection(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    .line 172
    const-string v0, "WiFiChecker"

    const-string v1, "Wait for networking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 174
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 175
    .local v2, "i":I
    :goto_3c
    const-wide/16 v3, 0x3e8

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_57

    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_57

    .line 176
    const-string v5, "WiFiChecker"

    const-string v6, "Waiting for WiFi enable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 180
    :cond_57
    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 181
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v0

    const-string v1, "Un-able to enable to WiFi"

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 182
    return-void

    .line 184
    :cond_6b
    const/4 v6, -0x1

    .line 185
    .local v6, "n":I
    const/4 v7, -0x1

    .line 186
    .local v7, "priority":I
    const/4 v8, 0x0

    .line 187
    .local v8, "wc":Landroid/net/wifi/WifiConfiguration;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v10}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "SSID":Ljava/lang/String;
    iget-object v10, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_94
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ce

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 189
    .local v11, "test":Landroid/net/wifi/WifiConfiguration;
    const-string v12, "WiFiChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFI "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v12, v7, :cond_c1

    .line 191
    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    move v7, v12

    .line 193
    :cond_c1
    iget-object v12, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cd

    .line 194
    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move v6, v12

    .line 195
    move-object v8, v11

    .line 197
    .end local v11    # "test":Landroid/net/wifi/WifiConfiguration;
    :cond_cd
    goto :goto_94

    .line 198
    :cond_ce
    if-eqz v8, :cond_df

    .line 199
    iget v10, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-eq v10, v7, :cond_d8

    .line 200
    add-int/lit8 v10, v7, 0x1

    iput v10, v8, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 202
    :cond_d8
    iput v1, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 203
    iget-object v10, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 207
    :cond_df
    const/4 v10, 0x3

    const/4 v11, -0x1

    if-ne v6, v11, :cond_22a

    .line 208
    const-string v12, "WiFiChecker"

    const-string v13, "WIFI Unknown"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v12, 0x0

    .line 211
    .local v12, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v13, "WiFiChecker"

    const-string v14, "WIFI Scan Start"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v13

    if-eqz v13, :cond_102

    .line 213
    const-string v13, "WiFiChecker"

    const-string v14, "WIFI Scan Success"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    .line 216
    :cond_102
    const-string v13, "WiFiChecker"

    const-string v14, "WIFI Scan Failure"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v13}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v13

    const-string v14, "wifi scan fail"

    invoke-interface {v13, v14}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 220
    :goto_114
    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    move-object v12, v13

    .line 221
    const/4 v2, 0x0

    .line 222
    :goto_11c
    if-ge v2, v5, :cond_138

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_138

    .line 223
    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    move-object v12, v13

    .line 224
    const-string v13, "WiFiChecker"

    const-string v14, "Waiting for getting wifi list"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    .line 228
    :cond_138
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    move-object v8, v3

    .line 230
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_142
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 232
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v13}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_228

    .line 233
    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-virtual {v3, v4}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->getScanResultSecurity(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "securityMode":Ljava/lang/String;
    const-string v5, "WiFiChecker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIFI mode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v13}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 237
    const-string v5, "OPEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a5

    .line 238
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_220

    .line 239
    :cond_1a5
    const-string v5, "WEP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 240
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v14}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifiPassword()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v0

    .line 241
    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 242
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    .line 243
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_220

    .line 245
    :cond_1da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    invoke-virtual {v13}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifiPassword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 246
    iput-boolean v1, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 247
    const/4 v5, 0x2

    iput v5, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 248
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->set(I)V

    .line 249
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v13, v10}, Ljava/util/BitSet;->set(I)V

    .line 250
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->set(I)V

    .line 253
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    .line 254
    iget-object v5, v8, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    .line 256
    :goto_220
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    move v6, v0

    .line 257
    goto :goto_22a

    .line 260
    .end local v3    # "securityMode":Ljava/lang/String;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_228
    goto/16 :goto_142

    .line 262
    .end local v12    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_22a
    :goto_22a
    const-string v0, "WiFiChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add Network returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-ne v6, v11, :cond_24d

    .line 264
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v0

    const-string v3, "Failed to add the WiFi configure"

    invoke-interface {v0, v3}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 268
    :cond_24d
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v6, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 269
    .local v0, "b":Z
    const-string v1, "WiFiChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableNetwork returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v0, :cond_2c7

    .line 271
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 272
    const-string v1, "WiFiChecker"

    const-string v3, "Wait for wifi network"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    .line 274
    .end local v2    # "i":I
    .local v1, "i":I
    :goto_278
    if-ge v1, v10, :cond_2ac

    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiValid()Z

    move-result v2

    if-nez v2, :cond_2ac

    .line 275
    const-string v2, "WiFiChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_278

    .line 279
    :cond_2ac
    invoke-direct {p0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->wifiValid()Z

    move-result v2

    if-eqz v2, :cond_2bc

    .line 280
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$100(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$SuccessHandler;->handleSuccess()V

    goto :goto_2c7

    .line 282
    :cond_2bc
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v2

    const-string v3, "WiFi connection timed out"

    invoke-interface {v2, v3}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 285
    .end local v0    # "b":Z
    .end local v1    # "i":I
    .end local v6    # "n":I
    .end local v7    # "priority":I
    .end local v8    # "wc":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "SSID":Ljava/lang/String;
    :cond_2c7
    :goto_2c7
    goto :goto_2d3

    .line 286
    :cond_2c8
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v0}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v0

    const-string v1, "Wrong WiFi network"

    invoke-interface {v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V
    :try_end_2d3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d3} :catch_2d4

    .line 292
    :goto_2d3
    goto :goto_2fe

    .line 288
    :catch_2d4
    move-exception v0

    .line 289
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "RosAndroid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while searching for WiFi for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->masterId:Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;

    .line 290
    invoke-virtual {v3}, Lcom/github/rosjava/android_remocons/common_tools/master/MasterId;->getWifi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$CheckerThread;->this$0:Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;

    invoke-static {v1}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;->access$000(Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker;)Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/rosjava/android_remocons/common_tools/system/WifiChecker$FailureHandler;->handleFailure(Ljava/lang/String;)V

    .line 293
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_2fe
    return-void
.end method
