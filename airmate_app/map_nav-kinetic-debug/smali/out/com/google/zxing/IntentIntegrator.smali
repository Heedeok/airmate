.class public final Lcom/google/zxing/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/lang/String;

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "This application requires Barcode Scanner. Would you like to install it?"

.field public static final DEFAULT_NO:Ljava/lang/String; = "No"

.field public static final DEFAULT_TITLE:Ljava/lang/String; = "Install Barcode Scanner?"

.field public static final DEFAULT_YES:Ljava/lang/String; = "Yes"

.field public static final ONE_D_CODE_TYPES:Ljava/lang/String; = "UPC_A,UPC_E,EAN_8,EAN_13,CODE_39,CODE_93,CODE_128"

.field private static final PACKAGE:Ljava/lang/String; = "com.google.zxing.client.android"

.field public static final PRODUCT_CODE_TYPES:Ljava/lang/String; = "UPC_A,UPC_E,EAN_8,EAN_13"

.field public static final QR_CODE_TYPES:Ljava/lang/String; = "QR_CODE"

.field public static final REQUEST_CODE:I = 0xba7c0de


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/google/zxing/IntentIntegrator;->ALL_CODE_TYPES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static initiateScan(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 98
    const-string v0, "Install Barcode Scanner?"

    const-string v1, "This application requires Barcode Scanner. Would you like to install it?"

    const-string v2, "Yes"

    const-string v3, "No"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/zxing/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;IIII)Landroid/app/AlertDialog;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "stringTitle"    # I
    .param p2, "stringMessage"    # I
    .param p3, "stringButtonYes"    # I
    .param p4, "stringButtonNo"    # I

    .line 110
    nop

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/zxing/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "stringTitle"    # Ljava/lang/CharSequence;
    .param p2, "stringMessage"    # Ljava/lang/CharSequence;
    .param p3, "stringButtonYes"    # Ljava/lang/CharSequence;
    .param p4, "stringButtonNo"    # Ljava/lang/CharSequence;

    .line 133
    sget-object v5, Lcom/google/zxing/IntentIntegrator;->ALL_CODE_TYPES:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/IntentIntegrator;->initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initiateScan(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "stringTitle"    # Ljava/lang/CharSequence;
    .param p2, "stringMessage"    # Ljava/lang/CharSequence;
    .param p3, "stringButtonYes"    # Ljava/lang/CharSequence;
    .param p4, "stringButtonNo"    # Ljava/lang/CharSequence;
    .param p5, "stringDesiredBarcodeFormats"    # Ljava/lang/CharSequence;

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intentScan":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    if-eqz p5, :cond_18

    .line 167
    const-string v1, "SCAN_FORMATS"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 170
    :cond_18
    const v1, 0xba7c0de

    :try_start_1b
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 172
    :catch_20
    move-exception v1

    .line 173
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/zxing/IntentIntegrator;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/IntentResult;
    .registers 6
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 207
    const/4 v0, 0x0

    const v1, 0xba7c0de

    if-ne p0, v1, :cond_21

    .line 208
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1b

    .line 209
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "contents":Ljava/lang/String;
    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "formatName":Ljava/lang/String;
    new-instance v2, Lcom/google/zxing/IntentResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 213
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "formatName":Ljava/lang/String;
    :cond_1b
    new-instance v1, Lcom/google/zxing/IntentResult;

    invoke-direct {v1, v0, v0}, Lcom/google/zxing/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 216
    :cond_21
    return-object v0
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 223
    const-string v2, "Install Barcode Scanner?"

    const-string v3, "This application requires Barcode Scanner. Would you like to install it?"

    const-string v4, "Yes"

    const-string v5, "No"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/IntentIntegrator;->shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;IIII)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "stringTitle"    # I
    .param p3, "stringMessage"    # I
    .param p4, "stringButtonYes"    # I
    .param p5, "stringButtonNo"    # I

    .line 235
    nop

    .line 237
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {p0, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 235
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/IntentIntegrator;->shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method public static shareText(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "stringTitle"    # Ljava/lang/CharSequence;
    .param p3, "stringMessage"    # Ljava/lang/CharSequence;
    .param p4, "stringButtonYes"    # Ljava/lang/CharSequence;
    .param p5, "stringButtonNo"    # Ljava/lang/CharSequence;

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "com.google.zxing.client.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 266
    :try_start_1b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 269
    goto :goto_23

    .line 267
    :catch_1f
    move-exception v1

    .line 268
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p2, p3, p4, p5}, Lcom/google/zxing/IntentIntegrator;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    .line 270
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_23
    return-void
.end method

.method private static showDownloadDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "stringTitle"    # Ljava/lang/CharSequence;
    .param p2, "stringMessage"    # Ljava/lang/CharSequence;
    .param p3, "stringButtonYes"    # Ljava/lang/CharSequence;
    .param p4, "stringButtonNo"    # Ljava/lang/CharSequence;

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "downloadDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v1, Lcom/google/zxing/IntentIntegrator$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/IntentIntegrator$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    new-instance v1, Lcom/google/zxing/IntentIntegrator$2;

    invoke-direct {v1}, Lcom/google/zxing/IntentIntegrator$2;-><init>()V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
