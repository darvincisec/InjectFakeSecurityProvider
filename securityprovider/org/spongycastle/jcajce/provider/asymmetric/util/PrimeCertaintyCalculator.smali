.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;
.super Ljava/lang/Object;
.source "PrimeCertaintyCalculator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getDefaultCertainty(I)I
    .locals 1
    .param p0, "keySizeInBits"    # I

    .prologue
    .line 19
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x50

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x60

    goto :goto_0
.end method
