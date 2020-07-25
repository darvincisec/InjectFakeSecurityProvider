.class public Lorg/spongycastle/crypto/params/MGFParameters;
.super Ljava/lang/Object;
.source "MGFParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "seed"    # [B

    .prologue
    .line 16
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/params/MGFParameters;-><init>([BII)V

    .line 17
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/MGFParameters;->seed:[B

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MGFParameters;->seed:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getSeed()[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/params/MGFParameters;->seed:[B

    return-object v0
.end method
