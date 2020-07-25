.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUSigningPublicKeyParameters.java"


# instance fields
.field public h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field private params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 55
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 56
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 1
    .param p1, "h"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 29
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .line 30
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 41
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->N:I

    iget v1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 42
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 105
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 107
    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .line 108
    .local v0, "other":Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v3, :cond_4

    .line 110
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v3, :cond_5

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-nez v3, :cond_6

    .line 121
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-eqz v3, :cond_0

    move v1, v2

    .line 123
    goto :goto_0

    .line 126
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 128
    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 85
    const/16 v0, 0x1f

    .line 86
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 87
    .local v1, "result":I
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 88
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 89
    return v1

    .line 87
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 80
    return-void
.end method
