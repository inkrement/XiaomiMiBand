.class Lcn/com/smartdevices/bracelet/view/u;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/view/RulerScrollView;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/view/RulerScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/view/u;->a:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/view/u;)Lcn/com/smartdevices/bracelet/view/RulerScrollView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/u;->a:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    return-object v0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/view/u;->a:Lcn/com/smartdevices/bracelet/view/RulerScrollView;

    float-to-int v1, p3

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->fling(I)V

    const-string v0, "RulerScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fling end, vX:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/view/RulerScrollView;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/view/v;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/view/v;-><init>(Lcn/com/smartdevices/bracelet/view/u;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
