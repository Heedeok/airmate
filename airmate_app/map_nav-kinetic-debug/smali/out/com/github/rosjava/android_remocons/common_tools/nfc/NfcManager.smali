.class public Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentNdefString:Ljava/lang/String;

.field private mFilters:[Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPassedIntent:Landroid/content/Intent;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mTechList:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 42
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    .line 43
    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mCurrentNdefString:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "targetIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "filter_1":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "filter_2":Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "filter_3":Landroid/content/IntentFilter;
    :try_start_4a
    const-string v5, "*/*"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 60
    const-string v5, "*/*"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 61
    const-string v5, "*/*"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_4a .. :try_end_59} :catch_e0

    .line 64
    nop

    .line 66
    const/4 v5, 0x3

    new-array v6, v5, [Landroid/content/IntentFilter;

    aput-object v1, v6, v2

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v8, 0x2

    aput-object v4, v6, v8

    iput-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mFilters:[Landroid/content/IntentFilter;

    .line 67
    const/16 v6, 0x9

    new-array v6, v6, [[Ljava/lang/String;

    new-array v9, v7, [Ljava/lang/String;

    const-class v10, Landroid/nfc/tech/NfcF;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v9, v6, v2

    new-array v9, v7, [Ljava/lang/String;

    const-class v10, Landroid/nfc/tech/MifareClassic;

    .line 68
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v9, v6, v7

    new-array v9, v7, [Ljava/lang/String;

    const-class v10, Landroid/nfc/tech/NfcA;

    .line 69
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    aput-object v9, v6, v8

    new-array v8, v7, [Ljava/lang/String;

    const-class v9, Landroid/nfc/tech/NfcB;

    .line 70
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v8, v6, v5

    const/4 v5, 0x4

    new-array v8, v7, [Ljava/lang/String;

    const-class v9, Landroid/nfc/tech/NfcV;

    .line 71
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v8, v6, v5

    const/4 v5, 0x5

    new-array v8, v7, [Ljava/lang/String;

    const-class v9, Landroid/nfc/tech/Ndef;

    .line 72
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v8, v6, v5

    const/4 v5, 0x6

    new-array v8, v7, [Ljava/lang/String;

    const-class v9, Landroid/nfc/tech/NdefFormatable;

    .line 73
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v8, v6, v5

    const/4 v5, 0x7

    new-array v8, v7, [Ljava/lang/String;

    const-class v9, Landroid/nfc/tech/MifareUltralight;

    .line 74
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v8, v6, v5

    const/16 v5, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const-class v8, Landroid/nfc/tech/IsoDep;

    .line 75
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v7, v6, v5

    iput-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mTechList:[[Ljava/lang/String;

    .line 76
    return-void

    .line 62
    :catch_e0
    move-exception v2

    .line 63
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "fail"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private createTextRecord(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "encodeInUtf8"    # Z

    .line 239
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 240
    .local v0, "langBytes":[B
    if-eqz p3, :cond_17

    const-string v1, "UTF-8"

    :goto_12
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1a

    :cond_17
    const-string v1, "UTF-16"

    goto :goto_12

    .line 241
    .local v1, "utfEncoding":Ljava/nio/charset/Charset;
    :goto_1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 242
    .local v2, "textBytes":[B
    const/4 v3, 0x0

    if-eqz p3, :cond_23

    const/4 v4, 0x0

    goto :goto_25

    :cond_23
    const/16 v4, 0x80

    .line 243
    .local v4, "utfBit":I
    :goto_25
    array-length v5, v0

    add-int/2addr v5, v4

    int-to-char v5, v5

    .line 244
    .local v5, "status":C
    const/4 v6, 0x3

    new-array v6, v6, [[B

    const/4 v7, 0x1

    new-array v8, v7, [B

    int-to-byte v9, v5

    aput-byte v9, v8, v3

    aput-object v8, v6, v3

    aput-object v0, v6, v7

    const/4 v8, 0x2

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->concat([[B)[B

    move-result-object v6

    .line 246
    .local v6, "data":[B
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v3, v3, [B

    invoke-direct {v8, v7, v9, v3, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v8
.end method


# virtual methods
.method public changeNfcStatus(Z)Z
    .registers 10
    .param p1, "enable"    # Z

    .line 84
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 86
    :cond_6
    const/4 v0, 0x0

    .line 87
    .local v0, "success":Z
    const/4 v2, 0x0

    .line 88
    .local v2, "nfcManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "setNfcEnabled":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 90
    .local v4, "setNfcDisabled":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    if-eqz p1, :cond_5a

    .line 92
    :try_start_d
    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 93
    const-string v6, "enable"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v3, v6

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_36} :catch_55
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_36} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_36} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_36} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_36} :catch_38

    move v0, v1

    goto :goto_59

    .line 104
    :catch_38
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 106
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_59

    .line 102
    :catch_46
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_59

    .line 100
    :catch_4b
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_59

    .line 98
    :catch_50
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_59

    .line 96
    :catch_55
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_59
    goto :goto_9e

    .line 111
    :cond_5a
    :try_start_5a
    iget-object v6, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 112
    const-string v6, "disable"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 114
    iget-object v5, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_83
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_83} :catch_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5a .. :try_end_83} :catch_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_83} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_83} :catch_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5a .. :try_end_83} :catch_85

    move v0, v1

    goto :goto_9d

    .line 123
    :catch_85
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_9e

    .line 121
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_8a
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_9d

    .line 119
    :catch_8f
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9d

    .line 117
    :catch_94
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_9d

    .line 115
    :catch_99
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_9d
    nop

    .line 128
    :goto_9e
    return v0
.end method

.method public checkNfcStatus()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public disableForegroundDispatch()Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_f

    .line 143
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public enableForegroundDispatch()Z
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mFilters:[Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mTechList:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .registers 7

    .line 215
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 216
    return-object v1

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 220
    .local v0, "rawMsgs":[Landroid/os/Parcelable;
    if-nez v0, :cond_11

    .line 221
    return-object v1

    .line 224
    :cond_11
    array-length v2, v0

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    .line 226
    .local v2, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    array-length v5, v0

    if-ge v4, v5, :cond_22

    .line 227
    aget-object v5, v0, v4

    check-cast v5, Landroid/nfc/NdefMessage;

    aput-object v5, v2, v4

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 230
    .end local v4    # "i":I
    :cond_22
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 231
    .local v4, "records":[Landroid/nfc/NdefRecord;
    array-length v5, v4

    if-lez v5, :cond_32

    .line 232
    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    return-object v1

    .line 234
    :cond_32
    return-object v1
.end method

.method public ndefMessageToString(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .registers 12
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .line 189
    const-string v0, ""

    .line 190
    .local v0, "ndefString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 192
    .local v1, "ndef_records":[Landroid/nfc/NdefRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "**Num of NdefRecord : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    array-length v3, v1

    if-ge v2, v3, :cond_ec

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**Record No. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "temp":Ljava/lang/String;
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    .line 197
    .local v4, "type":[B
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v5

    .line 198
    .local v5, "id":[B
    aget-object v6, v1, v2

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    .line 199
    .local v6, "pl":[B
    aget-object v7, v1, v2

    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->toByteArray()[B

    move-result-object v7

    .line 201
    .local v7, "arr":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "- TNF="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v2

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\n - TYPE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    .line 202
    invoke-static {v4, v9}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->getHexString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n - ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v5

    .line 203
    invoke-static {v5, v9}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->getHexString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n - PayLoad="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v6

    .line 204
    invoke-static {v6, v9}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->getHexString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n - ByteArray="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v7

    .line 205
    invoke-static {v7, v9}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->getHexString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "type":[B
    .end local v5    # "id":[B
    .end local v6    # "pl":[B
    .end local v7    # "arr":[B
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 210
    .end local v2    # "i":I
    :cond_ec
    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 152
    iput-object p1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2c

    .line 162
    :cond_2b
    return v2

    .line 160
    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    return v1
.end method

.method public processTag()Ljava/lang/String;
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    if-nez v0, :cond_7

    const-string v0, "NFC Tag is not discovered."

    return-object v0

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 171
    .local v0, "rawMsgs":[Landroid/os/Parcelable;
    if-nez v0, :cond_14

    .line 172
    const-string v1, "NDEF Message is null"

    return-object v1

    .line 175
    :cond_14
    const-string v1, ""

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mCurrentNdefString:Ljava/lang/String;

    .line 177
    array-length v1, v0

    new-array v1, v1, [Landroid/nfc/NdefMessage;

    .line 179
    .local v1, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_41

    .line 180
    aget-object v3, v0, v2

    check-cast v3, Landroid/nfc/NdefMessage;

    aput-object v3, v1, v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mCurrentNdefString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->ndefMessageToString(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mCurrentNdefString:Ljava/lang/String;

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 184
    .end local v2    # "i":I
    :cond_41
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mCurrentNdefString:Ljava/lang/String;

    return-object v2
.end method

.method public writeMimeNdefMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "AAR"    # Ljava/lang/String;

    .line 292
    new-instance v0, Landroid/nfc/NdefRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v0, v5, v1, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 294
    .local v0, "record":Landroid/nfc/NdefRecord;
    const/4 v1, 0x0

    .line 295
    .local v1, "msg":Landroid/nfc/NdefMessage;
    const/4 v3, 0x1

    if-eqz p2, :cond_3d

    .line 296
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    aput-object v0, v5, v2

    invoke-static {p2}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    goto :goto_47

    .line 298
    :cond_3d
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    aput-object v0, v3, v2

    invoke-direct {v4, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    .line 300
    :goto_47
    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->writeNdefMessage(Landroid/nfc/NdefMessage;)Z

    move-result v2

    return v2
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)Z
    .registers 9
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .line 318
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mPassedIntent:Landroid/content/Intent;

    const-string v2, "android.nfc.extra.TAG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 321
    .local v0, "tag":Landroid/nfc/Tag;
    invoke-static {v0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 324
    .local v2, "ndefTag":Landroid/nfc/tech/Ndef;
    :try_start_14
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_9e

    .line 329
    nop

    .line 332
    :try_start_18
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V
    :try_end_1b
    .catch Landroid/nfc/TagLostException; {:try_start_18 .. :try_end_1b} :catch_7f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_60
    .catch Landroid/nfc/FormatException; {:try_start_18 .. :try_end_1b} :catch_41

    .line 345
    nop

    .line 348
    :try_start_1c
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_22

    .line 353
    nop

    .line 355
    const/4 v1, 0x1

    return v1

    .line 349
    :catch_22
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NfcWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close tag failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    return v1

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v3

    .line 342
    .local v3, "e":Landroid/nfc/FormatException;
    const-string v4, "NfcWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed NDEF message. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/FormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v3}, Landroid/nfc/FormatException;->printStackTrace()V

    .line 344
    return v1

    .line 337
    .end local v3    # "e":Landroid/nfc/FormatException;
    :catch_60
    move-exception v3

    .line 338
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NfcWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message writing failure. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    return v1

    .line 333
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7f
    move-exception v3

    .line 334
    .local v3, "e":Landroid/nfc/TagLostException;
    const-string v4, "NfcWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The tag left the field. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/TagLostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v3}, Landroid/nfc/TagLostException;->printStackTrace()V

    .line 336
    return v1

    .line 325
    .end local v3    # "e":Landroid/nfc/TagLostException;
    :catch_9e
    move-exception v3

    .line 326
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NfcWriter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect to tag failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    return v1
.end method

.method public writeTextNdefMessage(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "isAAR"    # Z

    .line 250
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->createTextRecord(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 251
    .local v0, "record":Landroid/nfc/NdefRecord;
    const/4 v2, 0x0

    .line 252
    .local v2, "msg":Landroid/nfc/NdefMessage;
    const/4 v3, 0x0

    if-eqz p2, :cond_23

    .line 253
    new-instance v4, Landroid/nfc/NdefMessage;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    aput-object v0, v5, v3

    iget-object v3, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    goto :goto_2d

    .line 255
    :cond_23
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    aput-object v0, v1, v3

    invoke-direct {v4, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    .line 257
    .end local v2    # "msg":Landroid/nfc/NdefMessage;
    .local v1, "msg":Landroid/nfc/NdefMessage;
    :goto_2d
    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->writeNdefMessage(Landroid/nfc/NdefMessage;)Z

    move-result v2

    return v2
.end method

.method public writeTextNdefMessage([BLjava/lang/String;)Z
    .registers 14
    .param p1, "payload"    # [B
    .param p2, "AAR"    # Ljava/lang/String;

    .line 261
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 262
    .local v0, "langBytes":[B
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 263
    .local v1, "utfEncoding":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 264
    .local v2, "utfBit":I
    array-length v3, v0

    const/4 v4, 0x0

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 265
    .local v3, "status":C
    const/4 v5, 0x3

    new-array v5, v5, [[B

    const/4 v6, 0x1

    new-array v7, v6, [B

    int-to-byte v8, v3

    aput-byte v8, v7, v4

    aput-object v7, v5, v4

    aput-object v0, v5, v6

    const/4 v7, 0x2

    aput-object p1, v5, v7

    invoke-static {v5}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->concat([[B)[B

    move-result-object v5

    .line 267
    .local v5, "data":[B
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v10, v4, [B

    invoke-direct {v8, v6, v9, v10, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 268
    .local v8, "record":Landroid/nfc/NdefRecord;
    const/4 v9, 0x0

    .line 269
    .local v9, "msg":Landroid/nfc/NdefMessage;
    if-eqz p2, :cond_4c

    .line 270
    new-instance v10, Landroid/nfc/NdefMessage;

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    aput-object v8, v7, v4

    invoke-static {p2}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-direct {v10, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v4, v10

    goto :goto_56

    .line 272
    :cond_4c
    new-instance v7, Landroid/nfc/NdefMessage;

    new-array v6, v6, [Landroid/nfc/NdefRecord;

    aput-object v8, v6, v4

    invoke-direct {v7, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v4, v7

    .line 274
    .end local v9    # "msg":Landroid/nfc/NdefMessage;
    .local v4, "msg":Landroid/nfc/NdefMessage;
    :goto_56
    invoke-virtual {p0, v4}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->writeNdefMessage(Landroid/nfc/NdefMessage;)Z

    move-result v6

    return v6
.end method

.method public writeUriNdefMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "AAR"    # Ljava/lang/String;

    .line 279
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v5, v1, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 281
    .local v0, "record":Landroid/nfc/NdefRecord;
    const/4 v1, 0x0

    .line 282
    .local v1, "msg":Landroid/nfc/NdefMessage;
    const/4 v3, 0x1

    if-eqz p2, :cond_25

    .line 283
    new-instance v4, Landroid/nfc/NdefMessage;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    aput-object v0, v5, v2

    invoke-static {p2}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-direct {v4, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    goto :goto_2f

    .line 285
    :cond_25
    new-instance v4, Landroid/nfc/NdefMessage;

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    aput-object v0, v3, v2

    invoke-direct {v4, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v4

    .line 287
    :goto_2f
    invoke-virtual {p0, v1}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->writeNdefMessage(Landroid/nfc/NdefMessage;)Z

    move-result v2

    return v2
.end method
