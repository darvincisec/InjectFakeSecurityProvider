.class public Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;
.super Lorg/spongycastle/crypto/engines/VMPCEngine;
.source "VMPCKSA3Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/VMPCEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string v0, "VMPC-KSA3"

    return-object v0
.end method

.method protected initKey([B[B)V
    .locals 9
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/16 v5, 0x100

    const/4 v8, 0x0

    const/16 v7, 0x300

    .line 12
    iput-byte v8, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    .line 13
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 16
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 21
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    .line 22
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 23
    .local v2, "temp":B
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 24
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    .end local v2    # "temp":B
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_2

    .line 29
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p2

    rem-int v5, v1, v5

    aget-byte v5, p2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    .line 30
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 31
    .restart local v2    # "temp":B
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 32
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35
    .end local v2    # "temp":B
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_3

    .line 37
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    .line 38
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 39
    .restart local v2    # "temp":B
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v6, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 40
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->P:[B

    iget-byte v4, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 43
    .end local v2    # "temp":B
    :cond_3
    iput-byte v8, p0, Lorg/spongycastle/crypto/engines/VMPCKSA3Engine;->n:B

    .line 44
    return-void
.end method
