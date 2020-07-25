.class public Lorg/spongycastle/crypto/prng/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# instance fields
.field private _data:[B

.field private _index:I

.field private _intPad:I


# direct methods
.method public constructor <init>(Z[B)V
    .locals 2
    .param p1, "intPad"    # Z
    .param p2, "value"    # [B

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    .line 38
    return-void
.end method

.method public constructor <init>(Z[[B)V
    .locals 5
    .param p1, "intPad"    # Z
    .param p2, "values"    # [[B

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 54
    :try_start_0
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t save value array."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    .line 64
    if-eqz p1, :cond_1

    .line 66
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    .line 68
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    .line 21
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 1
    .param p1, "values"    # [[B

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;-><init>(Z[[B)V

    .line 27
    return-void
.end method

.method private nextValue()I
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 79
    new-array v0, p1, [B

    .line 81
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextBytes([B)V

    .line 83
    return-object v0
.end method

.method public isExhausted()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_index:I

    .line 75
    return-void
.end method

.method public nextInt()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "val":I
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 97
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 99
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    .line 106
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    iget v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->_intPad:I

    .line 115
    :goto_1
    return v0

    .line 103
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method public nextLong()J
    .locals 5

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "val":J
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 127
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 128
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 129
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 131
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 133
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 135
    return-wide v0
.end method
