.class public Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/spongycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final MAX_IT:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget v2, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v1, v2, [B

    .line 47
    .local v1, "newKey":[B
    const/4 v0, 0x0

    .line 51
    .local v0, "count":I
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    invoke-static {v1}, Lorg/spongycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lorg/spongycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v3}, Lorg/spongycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :cond_1
    array-length v2, v1

    invoke-static {v1, v3, v2}, Lorg/spongycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, v3}, Lorg/spongycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to generate DES-EDE key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    return-object v1
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    const/16 v3, 0x18

    const/16 v2, 0x10

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 26
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 28
    :cond_0
    iput v3, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 32
    iput v2, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_0

    .line 34
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
