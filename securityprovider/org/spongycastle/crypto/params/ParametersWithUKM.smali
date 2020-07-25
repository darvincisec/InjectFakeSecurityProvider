.class public Lorg/spongycastle/crypto/params/ParametersWithUKM;
.super Ljava/lang/Object;
.source "ParametersWithUKM.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private ukm:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 2
    .param p1, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "ukm"    # [B

    .prologue
    .line 15
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V
    .locals 2
    .param p1, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "ukm"    # [B
    .param p3, "ivOff"    # I
    .param p4, "ivLen"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getUKM()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    return-object v0
.end method
