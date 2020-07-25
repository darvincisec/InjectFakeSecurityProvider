.class public Lorg/spongycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B

.field private usageIndex:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "counter"    # I

    .prologue
    .line 15
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    .line 16
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "counter"    # I
    .param p3, "usageIndex"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 24
    iput p2, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 25
    iput p3, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    instance-of v2, p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    .line 58
    .local v0, "other":Lorg/spongycastle/crypto/params/DSAValidationParameters;
    iget v2, v0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    if-ne v2, v3, :cond_0

    .line 63
    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
