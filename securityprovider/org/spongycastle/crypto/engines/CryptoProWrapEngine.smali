.class public Lorg/spongycastle/crypto/engines/CryptoProWrapEngine;
.super Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;
.source "CryptoProWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;-><init>()V

    return-void
.end method

.method private static bitSet(BI)Z
    .locals 2
    .param p0, "v"    # B
    .param p1, "bitNo"    # I

    .prologue
    const/4 v0, 0x1

    .line 110
    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cryptoProDiversify([B[B[B)[B
    .locals 11
    .param p0, "K"    # [B
    .param p1, "ukm"    # [B
    .param p2, "sBox"    # [B

    .prologue
    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x8

    if-eq v1, v7, :cond_2

    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, "sOn":I
    const/4 v5, 0x0

    .line 78
    .local v5, "sOff":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v7, 0x8

    if-eq v2, v7, :cond_1

    .line 80
    mul-int/lit8 v7, v2, 0x4

    invoke-static {p0, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 81
    .local v3, "kj":I
    aget-byte v7, p1, v1

    invoke-static {v7, v2}, Lorg/spongycastle/crypto/engines/CryptoProWrapEngine;->bitSet(BI)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    add-int/2addr v6, v3

    .line 78
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    :cond_0
    add-int/2addr v5, v3

    goto :goto_2

    .line 91
    .end local v3    # "kj":I
    :cond_1
    const/16 v7, 0x8

    new-array v4, v7, [B

    .line 92
    .local v4, "s":[B
    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 93
    const/4 v7, 0x4

    invoke-static {v5, v4, v7}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 95
    new-instance v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;

    new-instance v7, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v7}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    invoke-direct {v0, v7}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 97
    .local v0, "c":Lorg/spongycastle/crypto/modes/GCFBBlockCipher;
    const/4 v7, 0x1

    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v9, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    new-instance v10, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v10, p0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v9, v10, p2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-direct {v8, v9, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v7, v8}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 99
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, p0, v7, p0, v8}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 100
    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-virtual {v0, p0, v7, p0, v8}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 101
    const/16 v7, 0x10

    const/16 v8, 0x10

    invoke-virtual {v0, p0, v7, p0, v8}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 102
    const/16 v7, 0x18

    const/16 v8, 0x18

    invoke-virtual {v0, p0, v7, p0, v8}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "c":Lorg/spongycastle/crypto/modes/GCFBBlockCipher;
    .end local v2    # "j":I
    .end local v4    # "s":[B
    .end local v5    # "sOff":I
    .end local v6    # "sOn":I
    :cond_2
    return-object p0
.end method


# virtual methods
.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 17
    instance-of v5, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 19
    check-cast v3, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 20
    .local v3, "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .end local v3    # "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    move-object v2, p2

    .line 23
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    .line 24
    .local v2, "pU":Lorg/spongycastle/crypto/params/ParametersWithUKM;
    const/4 v4, 0x0

    .line 29
    .local v4, "sBox":[B
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    instance-of v5, v5, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 32
    .local v0, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v4

    .line 39
    :goto_0
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v6

    invoke-static {v5, v6, v4}, Lorg/spongycastle/crypto/engines/CryptoProWrapEngine;->cryptoProDiversify([B[B[B)[B

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 41
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .local v1, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    if-eqz v4, :cond_2

    .line 43
    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    new-instance v6, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-direct {v6, v1, v4}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v5}, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 49
    :goto_1
    return-void

    .line 36
    .end local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 47
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/spongycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v5}, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method
