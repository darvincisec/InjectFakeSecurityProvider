.class public Lorg/spongycastle/util/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .locals 1
    .param p0, "value"    # S

    .prologue
    .line 7
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
