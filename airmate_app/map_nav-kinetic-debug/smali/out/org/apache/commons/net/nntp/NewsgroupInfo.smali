.class public final Lorg/apache/commons/net/nntp/NewsgroupInfo;
.super Ljava/lang/Object;
.source "NewsgroupInfo.java"


# static fields
.field public static final MODERATED_POSTING_PERMISSION:I = 0x1

.field public static final PERMITTED_POSTING_PERMISSION:I = 0x2

.field public static final PROHIBITED_POSTING_PERMISSION:I = 0x3

.field public static final UNKNOWN_POSTING_PERMISSION:I


# instance fields
.field private __estimatedArticleCount:I

.field private __firstArticle:I

.field private __lastArticle:I

.field private __newsgroup:Ljava/lang/String;

.field private __postingPermission:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method _setArticleCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 68
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__estimatedArticleCount:I

    .line 69
    return-void
.end method

.method _setFirstArticle(I)V
    .registers 2
    .param p1, "first"    # I

    .line 73
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__firstArticle:I

    .line 74
    return-void
.end method

.method _setLastArticle(I)V
    .registers 2
    .param p1, "last"    # I

    .line 78
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__lastArticle:I

    .line 79
    return-void
.end method

.method _setNewsgroup(Ljava/lang/String;)V
    .registers 2
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__newsgroup:Ljava/lang/String;

    .line 64
    return-void
.end method

.method _setPostingPermission(I)V
    .registers 2
    .param p1, "permission"    # I

    .line 83
    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__postingPermission:I

    .line 84
    return-void
.end method

.method public getArticleCount()I
    .registers 2

    .line 104
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__estimatedArticleCount:I

    return v0
.end method

.method public getFirstArticle()I
    .registers 2

    .line 114
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__firstArticle:I

    return v0
.end method

.method public getLastArticle()I
    .registers 2

    .line 124
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__lastArticle:I

    return v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPostingPermission()I
    .registers 2

    .line 135
    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->__postingPermission:I

    return v0
.end method
