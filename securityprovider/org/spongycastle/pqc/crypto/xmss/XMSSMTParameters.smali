.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
.super Ljava/lang/Object;
.source "XMSSMTParameters.java"


# instance fields
.field private final height:I

.field private final layers:I

.field private final oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

.field private final xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>(IILorg/spongycastle/crypto/Digest;)V
    .locals 6
    .param p1, "height"    # I
    .param p2, "layers"    # I
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    .line 27
    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->layers:I

    .line 28
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-static {p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssTreeHeight(II)I

    move-result v1

    invoke-direct {v0, v1, p3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 29
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getWinternitzParameter()I

    move-result v2

    .line 30
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLen()I

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v4

    move v5, p2

    .line 29
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->lookup(Ljava/lang/String;IIIII)Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    .line 34
    return-void
.end method

.method private static xmssTreeHeight(II)I
    .locals 2
    .param p0, "height"    # I
    .param p1, "layers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "totalHeight must be > 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    rem-int v0, p0, p1

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layers must divide totalHeight without remainder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    div-int v0, p0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height / layers must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    div-int v0, p0, p1

    return v0
.end method


# virtual methods
.method protected getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->layers:I

    return v0
.end method

.method protected getLen()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v0

    return v0
.end method

.method protected getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    return-object v0
.end method

.method public getWinternitzParameter()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWinternitzParameter()I

    move-result v0

    return v0
.end method

.method protected getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method
