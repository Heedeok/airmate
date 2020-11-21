.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V
    .registers 6
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    .line 580
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$imageFile:Landroid/net/Uri;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    iput p5, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$fittingMode:I

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 583
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)V
    .registers 1
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .line 580
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->cancelLoad()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)Landroid/print/PrintAttributes;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    .line 580
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method private cancelLoad()V
    .registers 4

    .line 688
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$700(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_7
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_19

    .line 690
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 691
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 693
    :cond_19
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 698
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 699
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->cancelLoad()V

    .line 700
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_10

    .line 701
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 703
    :cond_10
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    if-eqz v0, :cond_19

    .line 704
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 706
    :cond_19
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 707
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 710
    :cond_25
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 592
    monitor-enter p0

    .line 593
    :try_start_1
    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;

    .line 594
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_44

    .line 596
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 597
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 598
    return-void

    .line 601
    :cond_e
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 602
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 606
    .local v0, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 607
    .local v1, "changed":Z
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 608
    return-void

    .line 611
    .end local v0    # "info":Landroid/print/PrintDocumentInfo;
    .end local v1    # "changed":Z
    :cond_2f
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    .line 684
    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 685
    return-void

    .line 594
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 716
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperApi19;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->val$fittingMode:I

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19;->access$000(Landroid/support/v4/print/PrintHelper$PrintHelperApi19;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 718
    return-void
.end method