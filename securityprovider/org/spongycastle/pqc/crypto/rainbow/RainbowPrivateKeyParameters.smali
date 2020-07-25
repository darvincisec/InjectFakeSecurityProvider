.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;
.source "RainbowPrivateKeyParameters.java"


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private vi:[I


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 3
    .param p1, "A1inv"    # [[S
    .param p2, "b1"    # [S
    .param p3, "A2inv"    # [[S
    .param p4, "b2"    # [S
    .param p5, "vi"    # [I
    .param p6, "layers"    # [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .prologue
    .line 21
    const/4 v0, 0x1

    array-length v1, p5

    add-int/lit8 v1, v1, -0x1

    aget v1, p5, v1

    const/4 v2, 0x0

    aget v2, p5, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->A1inv:[[S

    .line 24
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->b1:[S

    .line 25
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->A2inv:[[S

    .line 26
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->b2:[S

    .line 27
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->vi:[I

    .line 28
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 29
    return-void
.end method


# virtual methods
.method public getB1()[S
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->b1:[S

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->b2:[S

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->A1inv:[[S

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->A2inv:[[S

    return-object v0
.end method

.method public getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->vi:[I

    return-object v0
.end method
