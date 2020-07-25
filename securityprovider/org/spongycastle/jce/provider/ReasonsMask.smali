.class Lorg/spongycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    .line 35
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "reasons"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 26
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V
    .locals 1
    .param p1, "reasons"    # Lorg/spongycastle/asn1/x509/ReasonFlags;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 21
    return-void
.end method


# virtual methods
.method addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    .locals 2
    .param p1, "mask"    # Lorg/spongycastle/jce/provider/ReasonsMask;

    .prologue
    .line 53
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 54
    return-void
.end method

.method getReasons()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z
    .locals 3
    .param p1, "mask"    # Lorg/spongycastle/jce/provider/ReasonsMask;

    .prologue
    .line 89
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p1, "mask"    # Lorg/spongycastle/jce/provider/ReasonsMask;

    .prologue
    .line 76
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 77
    .local v0, "_mask":Lorg/spongycastle/jce/provider/ReasonsMask;
    new-instance v1, Lorg/spongycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 78
    return-object v0
.end method

.method isAllReasons()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lorg/spongycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
