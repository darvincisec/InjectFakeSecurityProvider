.class public Lorg/spongycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;
.source "ParametersWithID.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private id:[B

.field private parameters:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 0
    .param p1, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "id"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->id:[B

    .line 17
    return-void
.end method


# virtual methods
.method public getID()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->id:[B

    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method
