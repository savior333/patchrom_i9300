.class Lcom/android/OriginalSettings/motion/MotionView$3;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/MotionView;->showCameraShortCutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/MotionView;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/MotionView$3;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionView$3;->this$0:Lcom/android/OriginalSettings/motion/MotionView;

    #calls: Lcom/android/OriginalSettings/motion/MotionView;->updateCheckedUI()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionView;->access$400(Lcom/android/OriginalSettings/motion/MotionView;)V

    .line 231
    return-void
.end method