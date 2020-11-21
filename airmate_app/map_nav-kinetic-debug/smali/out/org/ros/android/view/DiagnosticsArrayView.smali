.class public Lorg/ros/android/view/DiagnosticsArrayView;
.super Landroid/widget/TableLayout;
.source "DiagnosticsArrayView.java"

# interfaces
.implements Lorg/ros/node/NodeMain;


# static fields
.field private static final DIAGNOSTICS_AGGREGATOR_TOPIC:Ljava/lang/String; = "/diagnostics_agg"

.field private static final STALE:I = 0x3


# instance fields
.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private okDrawable:Landroid/graphics/drawable/Drawable;

.field private staleDrawable:Landroid/graphics/drawable/Drawable;

.field private warningDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lorg/ros/android/view/DiagnosticsArrayView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0}, Lorg/ros/android/view/DiagnosticsArrayView;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/DiagnosticsArrayView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView;->staleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/DiagnosticsArrayView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/DiagnosticsArrayView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView;->warningDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lorg/ros/android/view/DiagnosticsArrayView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lorg/ros/android/view/DiagnosticsArrayView;

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/DiagnosticsArrayView;->okDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 79
    invoke-virtual {p0}, Lorg/ros/android/view/DiagnosticsArrayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lorg/ros/android/android_core_components/R$drawable;->error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    sget v1, Lorg/ros/android/android_core_components/R$drawable;->warn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView;->warningDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    sget v1, Lorg/ros/android/android_core_components/R$drawable;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView;->okDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    sget v1, Lorg/ros/android/android_core_components/R$drawable;->stale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/ros/android/view/DiagnosticsArrayView;->staleDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method


# virtual methods
.method public getDefaultNodeName()Lorg/ros/namespace/GraphName;
    .registers 2

    .line 88
    const-string v0, "android_core_components/diagnostics_array_view"

    invoke-static {v0}, Lorg/ros/namespace/GraphName;->of(Ljava/lang/String;)Lorg/ros/namespace/GraphName;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lorg/ros/node/Node;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "node"    # Lorg/ros/node/Node;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 127
    return-void
.end method

.method public onShutdown(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 131
    return-void
.end method

.method public onShutdownComplete(Lorg/ros/node/Node;)V
    .registers 2
    .param p1, "node"    # Lorg/ros/node/Node;

    .line 135
    return-void
.end method

.method public onStart(Lorg/ros/node/ConnectedNode;)V
    .registers 4
    .param p1, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 93
    const-string v0, "/diagnostics_agg"

    const-string v1, "diagnostic_msgs/DiagnosticArray"

    .line 94
    invoke-interface {p1, v0, v1}, Lorg/ros/node/ConnectedNode;->newSubscriber(Ljava/lang/String;Ljava/lang/String;)Lorg/ros/node/topic/Subscriber;

    move-result-object v0

    .line 96
    .local v0, "subscriber":Lorg/ros/node/topic/Subscriber;, "Lorg/ros/node/topic/Subscriber<Ldiagnostic_msgs/DiagnosticArray;>;"
    new-instance v1, Lorg/ros/android/view/DiagnosticsArrayView$1;

    invoke-direct {v1, p0}, Lorg/ros/android/view/DiagnosticsArrayView$1;-><init>(Lorg/ros/android/view/DiagnosticsArrayView;)V

    invoke-interface {v0, v1}, Lorg/ros/node/topic/Subscriber;->addMessageListener(Lorg/ros/message/MessageListener;)V

    .line 123
    return-void
.end method
