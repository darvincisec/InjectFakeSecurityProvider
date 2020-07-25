.class public Lorg/spongycastle/crypto/tls/ServerDHParams;
.super Ljava/lang/Object;
.source "ServerDHParams.java"


# instance fields
.field protected publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 2
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'publicKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 23
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 58
    .local v2, "p":Ljava/math/BigInteger;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 59
    .local v1, "g":Ljava/math/BigInteger;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->readDHParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 61
    .local v0, "Ys":Ljava/math/BigInteger;
    new-instance v3, Lorg/spongycastle/crypto/tls/ServerDHParams;

    new-instance v4, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v5, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v5, v2, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v5}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/ServerDHParams;-><init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V

    return-object v3
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    .line 40
    .local v1, "dhParameters":Lorg/spongycastle/crypto/params/DHParameters;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 42
    .local v0, "Ys":Ljava/math/BigInteger;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 44
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->writeDHParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method

.method public getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerDHParams;->publicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    return-object v0
.end method
