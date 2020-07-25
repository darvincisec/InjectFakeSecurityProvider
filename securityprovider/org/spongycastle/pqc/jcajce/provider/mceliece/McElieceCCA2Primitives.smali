.class public final Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2Primitives;
.super Ljava/lang/Object;
.source "McElieceCCA2Primitives.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 14
    .param p0, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
    .param p1, "c"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v5

    .line 101
    .local v5, "k":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getP()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    .line 102
    .local v8, "p":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v2

    .line 103
    .local v2, "field":Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    .line 104
    .local v3, "gp":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    .line 105
    .local v4, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 108
    .local v10, "q":[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v9

    .line 111
    .local v9, "pInv":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {p1, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 114
    .local v0, "cPInv":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 117
    .local v11, "syndVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-static {v11, v2, v3, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 118
    .local v1, "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 121
    .local v7, "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    .end local v7    # "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 122
    .restart local v7    # "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v1, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v1

    .end local v1    # "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 125
    .restart local v1    # "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 128
    .local v6, "m":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/4 v12, 0x2

    new-array v12, v12, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    return-object v12
.end method

.method public static decryptionPrimitive(Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 14
    .param p0, "privKey"    # Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;
    .param p1, "c"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getK()I

    move-result v5

    .line 65
    .local v5, "k":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getP()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    .line 66
    .local v8, "p":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v2

    .line 67
    .local v2, "field":Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    .line 68
    .local v3, "gp":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    .line 69
    .local v4, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    .line 72
    .local v10, "q":[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v9

    .line 75
    .local v9, "pInv":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {p1, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 78
    .local v0, "cPInv":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 81
    .local v11, "syndVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-static {v11, v2, v3, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 82
    .local v1, "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 85
    .local v7, "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    .end local v7    # "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 86
    .restart local v7    # "mG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v1, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v1

    .end local v1    # "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 89
    .restart local v1    # "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 92
    .local v6, "m":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/4 v12, 0x2

    new-array v12, v12, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    return-object v12
.end method

.method public static encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;
    .param p1, "m"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .param p2, "z"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    .line 48
    .local v1, "matrixG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiplyLeftCompactForm(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    .line 49
    .local v0, "mG":Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    return-object v2
.end method

.method public static encryptionPrimitive(Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "pubKey"    # Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;
    .param p1, "m"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .param p2, "z"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    .line 39
    .local v1, "matrixG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiplyLeftCompactForm(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    .line 40
    .local v0, "mG":Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    return-object v2
.end method
