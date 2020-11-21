.class public final Lcom/google/zxing/IntentResult;
.super Ljava/lang/Object;
.source "IntentResult.java"


# instance fields
.field private final contents:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "formatName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/zxing/IntentResult;->contents:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/zxing/IntentResult;->formatName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/zxing/IntentResult;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/google/zxing/IntentResult;->formatName:Ljava/lang/String;

    return-object v0
.end method
