.class public Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;
.super Landroid/app/Activity;
.source "NfcReaderActivity.java"


# static fields
.field public static enabled:Z


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->enabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, "returnIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    if-eqz v1, :cond_15

    .line 130
    const-string v1, "tag_data"

    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_19

    .line 134
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    :goto_19
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    :try_start_3
    sget v0, Lcom/github/rosjava/android_remocons/common_tools/R$layout;->nfc_tag_scan:I

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->setContentView(I)V

    .line 70
    sget v0, Lcom/github/rosjava/android_remocons/common_tools/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->textView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->textView:Landroid/widget/TextView;

    const-string v1, "Scan a NFC tag"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    invoke-direct {v0, p0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    .line 77
    goto :goto_2e

    .line 74
    :catch_21
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcReader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->finish()V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    invoke-virtual {v0, p1}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 92
    const-string v0, "NfcReader"

    const-string v1, "NFC tag read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->getPayload()[B

    move-result-object v0

    .line 94
    .local v0, "payload":[B
    array-length v1, v0

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_43

    .line 96
    const-string v1, "NfcReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payload doesn\'t match expected length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x38

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    .line 102
    const/4 v1, 0x3

    .line 103
    .local v1, "offset":I
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    const-string v3, "WIFI"

    const/16 v4, 0x10

    invoke-static {v0, v1, v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->toString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/2addr v1, v4

    .line 105
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    const-string v3, "WIFIPW"

    invoke-static {v0, v1, v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->toString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    const-string v3, "WIFIENC"

    const-string v5, "WPA2"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/2addr v1, v4

    .line 108
    invoke-static {v0, v1, v4}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->toString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "host":Ljava/lang/String;
    add-int/2addr v1, v4

    .line 110
    invoke-static {v0, v1}, Lcom/github/robotics_in_concert/rocon_rosjava_core/rosjava_utils/ByteArrays;->toShort([BI)S

    move-result v3

    .line 111
    .local v3, "port":S
    iget-object v4, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->data:Ljava/util/HashMap;

    const-string v5, "URL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->finish()V

    .line 115
    .end local v0    # "payload":[B
    .end local v1    # "offset":I
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":S
    :cond_a6
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->disableForegroundDispatch()Z

    .line 122
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcReaderActivity;->nfcManager:Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;

    invoke-virtual {v0}, Lcom/github/rosjava/android_remocons/common_tools/nfc/NfcManager;->enableForegroundDispatch()Z

    .line 85
    :cond_c
    return-void
.end method
