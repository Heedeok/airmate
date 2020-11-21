.class Lorg/ros/android/MasterChooser$1;
.super Ljava/lang/Object;
.source "MasterChooser.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/MasterChooser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ros/android/MasterChooser;

.field final synthetic val$uriPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lorg/ros/android/MasterChooser;Ljava/util/regex/Pattern;)V
    .registers 3
    .param p1, "this$0"    # Lorg/ros/android/MasterChooser;

    .line 160
    iput-object p1, p0, Lorg/ros/android/MasterChooser$1;->this$0:Lorg/ros/android/MasterChooser;

    iput-object p2, p0, Lorg/ros/android/MasterChooser$1;->val$uriPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 180
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 176
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 163
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, Lorg/ros/android/MasterChooser$1;->val$uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_26

    .line 165
    iget-object v1, p0, Lorg/ros/android/MasterChooser$1;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v1}, Lorg/ros/android/MasterChooser;->access$000(Lorg/ros/android/MasterChooser;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const-string v2, "Please enter valid URI"

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lorg/ros/android/MasterChooser$1;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v1}, Lorg/ros/android/MasterChooser;->access$100(Lorg/ros/android/MasterChooser;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3a

    .line 169
    :cond_26
    iget-object v1, p0, Lorg/ros/android/MasterChooser$1;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v1}, Lorg/ros/android/MasterChooser;->access$000(Lorg/ros/android/MasterChooser;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lorg/ros/android/MasterChooser$1;->this$0:Lorg/ros/android/MasterChooser;

    invoke-static {v1}, Lorg/ros/android/MasterChooser;->access$100(Lorg/ros/android/MasterChooser;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    :goto_3a
    return-void
.end method
