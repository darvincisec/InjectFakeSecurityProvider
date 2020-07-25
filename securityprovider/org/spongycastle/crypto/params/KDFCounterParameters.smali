.class public final Lorg/spongycastle/crypto/params/KDFCounterParameters;
.super Ljava/lang/Object;
.source "KDFCounterParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private fixedInputDataCounterPrefix:[B

.field private fixedInputDataCounterSuffix:[B

.field private ki:[B

.field private r:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1
    .param p1, "ki"    # [B
    .param p2, "fixedInputDataCounterSuffix"    # [B
    .param p3, "r"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/spongycastle/crypto/params/KDFCounterParameters;-><init>([B[B[BI)V

    .line 52
    return-void
.end method

.method public constructor <init>([B[B[BI)V
    .locals 2
    .param p1, "ki"    # [B
    .param p2, "fixedInputDataCounterPrefix"    # [B
    .param p3, "fixedInputDataCounterSuffix"    # [B
    .param p4, "r"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A KDF requires Ki (a seed) as input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->ki:[B

    .line 70
    if-nez p2, :cond_1

    .line 72
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    .line 79
    :goto_0
    if-nez p3, :cond_2

    .line 81
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    .line 88
    :goto_1
    const/16 v0, 0x8

    if-eq p4, v0, :cond_3

    const/16 v0, 0x10

    if-eq p4, v0, :cond_3

    const/16 v0, 0x18

    if-eq p4, v0, :cond_3

    const/16 v0, 0x20

    if-eq p4, v0, :cond_3

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    goto :goto_1

    .line 92
    :cond_3
    iput p4, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->r:I

    .line 93
    return-void
.end method


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFixedInputDataCounterPrefix()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFixedInputDataCounterSuffix()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->r:I

    return v0
.end method
