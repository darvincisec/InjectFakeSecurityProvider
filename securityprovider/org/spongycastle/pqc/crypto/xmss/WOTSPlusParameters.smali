.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;
.super Ljava/lang/Object;
.source "WOTSPlusParameters.java"


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final digestSize:I

.field private final len:I

.field private final len1:I

.field private final len2:I

.field private final oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

.field private final winternitzParameter:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 4
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digest:Lorg/spongycastle/crypto/Digest;

    .line 54
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getDigestSize(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    .line 55
    const/16 v0, 0x10

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    .line 56
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    .line 57
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    .line 59
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    .line 60
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->lookup(Ljava/lang/String;III)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find OID for digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method protected getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method protected getDigestSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    return v0
.end method

.method protected getLen()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    return v0
.end method

.method protected getLen1()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len1:I

    return v0
.end method

.method protected getLen2()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->len2:I

    return v0
.end method

.method protected getOid()Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->oid:Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;

    return-object v0
.end method

.method protected getWinternitzParameter()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->winternitzParameter:I

    return v0
.end method
