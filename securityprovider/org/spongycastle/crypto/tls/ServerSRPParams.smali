.class public Lorg/spongycastle/crypto/tls/ServerSRPParams;
.super Ljava/lang/Object;
.source "ServerSRPParams.java"


# instance fields
.field protected B:Ljava/math/BigInteger;

.field protected N:Ljava/math/BigInteger;

.field protected g:Ljava/math/BigInteger;

.field protected s:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V
    .locals 1
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "s"    # [B
    .param p4, "B"    # Ljava/math/BigInteger;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->N:Ljava/math/BigInteger;

    .line 18
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->g:Ljava/math/BigInteger;

    .line 19
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->s:[B

    .line 20
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->B:Ljava/math/BigInteger;

    .line 21
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerSRPParams;
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v1

    .line 69
    .local v1, "N":Ljava/math/BigInteger;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    .line 70
    .local v2, "g":Ljava/math/BigInteger;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 71
    .local v3, "s":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 73
    .local v0, "B":Ljava/math/BigInteger;
    new-instance v4, Lorg/spongycastle/crypto/tls/ServerSRPParams;

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/spongycastle/crypto/tls/ServerSRPParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    return-object v4
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->N:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->g:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->s:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->B:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 56
    return-void
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->N:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerSRPParams;->s:[B

    return-object v0
.end method
