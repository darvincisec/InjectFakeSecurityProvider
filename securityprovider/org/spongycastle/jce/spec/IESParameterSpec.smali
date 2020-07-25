.class public Lorg/spongycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source "IESParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I

.field private nonce:[B

.field private usePointCompression:Z


# direct methods
.method public constructor <init>([B[BI)V
    .locals 7
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I

    .prologue
    .line 33
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[BZ)V

    .line 34
    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 7
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .param p4, "cipherKeySize"    # I
    .param p5, "nonce"    # [B

    .prologue
    .line 52
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[BZ)V

    .line 53
    return-void
.end method

.method public constructor <init>([B[BII[BZ)V
    .locals 4
    .param p1, "derivation"    # [B
    .param p2, "encoding"    # [B
    .param p3, "macKeySize"    # I
    .param p4, "cipherKeySize"    # I
    .param p5, "nonce"    # [B
    .param p6, "usePointCompression"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    .line 75
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :goto_0
    if-eqz p2, :cond_1

    .line 85
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    .line 86
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :goto_1
    iput p3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    .line 94
    iput p4, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    .line 95
    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    .line 96
    iput-boolean p6, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    .line 97
    return-void

    .line 80
    :cond_0
    iput-object v3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    goto :goto_0

    .line 90
    :cond_1
    iput-object v3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    goto :goto_1
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPointCompression()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    return v0
.end method

.method public setPointCompression(Z)V
    .locals 0
    .param p1, "usePointCompression"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->usePointCompression:Z

    .line 147
    return-void
.end method
