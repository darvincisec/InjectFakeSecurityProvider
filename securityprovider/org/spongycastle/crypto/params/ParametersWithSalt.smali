.class public Lorg/spongycastle/crypto/params/ParametersWithSalt;
.super Ljava/lang/Object;
.source "ParametersWithSalt.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private salt:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 2
    .param p1, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "salt"    # [B

    .prologue
    .line 18
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithSalt;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V
    .locals 2
    .param p1, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "salt"    # [B
    .param p3, "saltOff"    # I
    .param p4, "saltLen"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->salt:[B

    .line 28
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->salt:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithSalt;->salt:[B

    return-object v0
.end method
