.class Lorg/spongycastle/pqc/crypto/newhope/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# static fields
.field static final QInv:I = 0x2fff

.field static final RLog:I = 0x12

.field static final RMask:I = 0x3ffff


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static barrett(S)S
    .locals 3
    .param p0, "a"    # S

    .prologue
    .line 20
    const v2, 0xffff

    and-int v0, p0, v2

    .line 21
    .local v0, "t":I
    mul-int/lit8 v2, v0, 0x5

    ushr-int/lit8 v1, v2, 0x10

    .line 22
    .local v1, "u":I
    mul-int/lit16 v1, v1, 0x3001

    .line 23
    sub-int v2, v0, v1

    int-to-short v2, v2

    return v2
.end method

.method static montgomery(I)S
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 11
    mul-int/lit16 v0, p0, 0x2fff

    .line 12
    .local v0, "u":I
    const v1, 0x3ffff

    and-int/2addr v0, v1

    .line 13
    mul-int/lit16 v0, v0, 0x3001

    .line 14
    add-int/2addr v0, p0

    .line 15
    ushr-int/lit8 v1, v0, 0x12

    int-to-short v1, v1

    return v1
.end method
