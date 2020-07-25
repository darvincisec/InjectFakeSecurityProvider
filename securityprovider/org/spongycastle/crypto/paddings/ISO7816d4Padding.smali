.class public Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 43
    array-length v1, p1

    sub-int v0, v1, p2

    .line 45
    .local v0, "added":I
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 48
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 50
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 51
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "ISO7816-4"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public padCount([B)I
    .locals 3
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 63
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 65
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x80

    if-eq v1, v2, :cond_1

    .line 72
    new-instance v1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v2, "pad block corrupted"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    return v1
.end method
