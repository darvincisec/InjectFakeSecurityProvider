.class public Lorg/spongycastle/crypto/params/RC5Parameters;
.super Ljava/lang/Object;
.source "RC5Parameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private key:[B

.field private rounds:I


# direct methods
.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "rounds"    # I

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RC5 key length can be no greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/RC5Parameters;->key:[B

    .line 21
    iput p2, p0, Lorg/spongycastle/crypto/params/RC5Parameters;->rounds:I

    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RC5Parameters;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RC5Parameters;->key:[B

    return-object v0
.end method

.method public getRounds()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/spongycastle/crypto/params/RC5Parameters;->rounds:I

    return v0
.end method
