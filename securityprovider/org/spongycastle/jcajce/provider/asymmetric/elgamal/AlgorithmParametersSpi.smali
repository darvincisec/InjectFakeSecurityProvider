.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AlgorithmParametersSpi.java"


# instance fields
.field currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    .prologue
    .line 30
    new-instance v1, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 34
    .local v1, "elP":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :try_start_0
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error encoding ElGamalParameters"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v1, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v2, "DHParameterSpec required to initialise a ElGamal algorithm parameters object"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v1, :cond_1

    .line 80
    check-cast p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 88
    :goto_0
    return-void

    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    move-object v0, p1

    .line 84
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 86
    .local v0, "s":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    goto :goto_0
.end method

.method protected engineInit([B)V
    .locals 5
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v1

    .line 98
    .local v1, "elP":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    new-instance v2, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    return-void

    .line 100
    .end local v1    # "elP":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid ElGamal Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not a valid ElGamal Parameter encoding."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineInit([B)V

    .line 123
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "ElGamal Parameters"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_2

    .line 63
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->currentSpec:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method