.class Lcom/android/camera/module/VideoModule$6;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$6;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$6;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$6;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$6;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 1813
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$6;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    :cond_1
    return-void
.end method