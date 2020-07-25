.class public Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source "HMacSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final RESEED_MAX:J = 0x800000000000L


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/spongycastle/crypto/Mac;

.field private _reseedCounter:J

.field private _securityStrength:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Mac;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4
    .param p1, "hMac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/spongycastle/crypto/Mac;)I

    move-result v2

    if-le p2, v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Requested security strength is not supported by the derivation function"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    invoke-interface {p3}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v2

    if-ge v2, p2, :cond_1

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not enough entropy for security strength required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_1
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

    .line 48
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 49
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 52
    .local v0, "entropy":[B
    invoke-static {v0, p5, p4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 54
    .local v1, "seedMaterial":[B
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    .line 55
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    .line 56
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 58
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 60
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 61
    return-void
.end method

.method private getEntropy()[B
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 188
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    return-object v0
.end method

.method private hmac_DRBG_Update([B)V
    .locals 1
    .param p1, "seedMaterial"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 66
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 70
    :cond_0
    return-void
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .locals 4
    .param p1, "seedMaterial"    # [B
    .param p2, "vValue"    # B

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 79
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 90
    return-void
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 9
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    const/4 v8, 0x0

    .line 113
    array-length v4, p1

    mul-int/lit8 v2, v4, 0x8

    .line 115
    .local v2, "numberOfBits":I
    const/high16 v4, 0x40000

    if-le v2, v4, :cond_0

    .line 117
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number of bits per request limited to 262144"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 122
    const/4 v2, -0x1

    .line 166
    .end local v2    # "numberOfBits":I
    :goto_0
    return v2

    .line 125
    .restart local v2    # "numberOfBits":I
    :cond_1
    if-eqz p3, :cond_2

    .line 127
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    .line 128
    const/4 p2, 0x0

    .line 132
    :cond_2
    if-eqz p2, :cond_3

    .line 134
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 138
    :cond_3
    array-length v4, p1

    new-array v3, v4, [B

    .line 140
    .local v3, "rv":[B
    array-length v4, p1

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    div-int v1, v4, v5

    .line 142
    .local v1, "m":I
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 146
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v4, v5, v8, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 147
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v4, v5, v8}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 149
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-static {v4, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 154
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v4, v5, v8, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 155
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v4, v5, v8}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 157
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int/2addr v5, v1

    array-length v6, v3

    iget-object v7, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    invoke-static {v4, v8, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_5
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 162
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 164
    array-length v4, p1

    invoke-static {v3, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 4
    .param p1, "additionalInput"    # [B

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 177
    .local v0, "entropy":[B
    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 179
    .local v1, "seedMaterial":[B
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 181
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 182
    return-void
.end method
