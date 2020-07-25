.class public Lorg/spongycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 19
    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 20
    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 21
    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .locals 7
    .param p1, "keyBytes"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x100

    .line 115
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 119
    iput v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 120
    iput v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 122
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    if-nez v4, :cond_0

    .line 124
    new-array v4, v6, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 128
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 130
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v1, 0x0

    .line 134
    .local v1, "i1":I
    const/4 v2, 0x0

    .line 136
    .local v2, "i2":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    .line 138
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    .line 140
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v4, v0

    .line 141
    .local v3, "tmp":B
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    .line 142
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v3, v4, v2

    .line 143
    add-int/lit8 v4, v1, 0x1

    array-length v5, p1

    rem-int v1, v4, v5

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "tmp":B
    :cond_2
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 36
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 43
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 46
    return-void

    .line 49
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 78
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 80
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    add-int v2, p5, p3

    array-length v3, p4

    if-le v2, v3, :cond_1

    .line 85
    new-instance v2, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 90
    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 91
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 94
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v2, v3

    .line 95
    .local v1, "tmp":B
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 96
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    .line 99
    add-int v2, v0, p5

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v7, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "tmp":B
    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 109
    return-void
.end method

.method public returnByte(B)B
    .locals 5
    .param p1, "in"    # B

    .prologue
    .line 59
    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 60
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 63
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v1, v2

    .line 64
    .local v0, "tmp":B
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 65
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v0, v1, v2

    .line 68
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    return v1
.end method
