.class public Lorg/spongycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 7
    .param p0, "B"    # [I
    .param p1, "X1"    # [I
    .param p2, "X2"    # [I
    .param p3, "Y"    # [I
    .param p4, "r"    # I

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 149
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    invoke-static {p0, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    const/4 v0, 0x0

    .local v0, "BOff":I
    const/4 v1, 0x0

    .local v1, "YOff":I
    array-length v4, p0

    ushr-int/lit8 v2, v4, 0x1

    .line 153
    .local v2, "halfLen":I
    mul-int/lit8 v3, p4, 0x2

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 155
    invoke-static {p1, p0, v0, p2}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 157
    const/16 v4, 0x8

    invoke-static {v4, p2, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 158
    invoke-static {p1, v5, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    add-int v4, v2, v0

    sub-int v1, v4, v1

    .line 161
    add-int/lit8 v0, v0, 0x10

    .line 153
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 164
    :cond_0
    array-length v4, p3

    invoke-static {p3, v5, p0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-void
.end method

.method private static Clear([B)V
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 181
    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([II)V

    .line 189
    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2
    .param p0, "arrays"    # [[I

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 195
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 7
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I

    .prologue
    .line 71
    mul-int/lit16 v3, p3, 0x80

    .line 72
    .local v3, "MFLenBytes":I
    mul-int v6, p4, v3

    invoke-static {p0, p1, v6}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v5

    .line 74
    .local v5, "bytes":[B
    const/4 v0, 0x0

    .line 78
    .local v0, "B":[I
    :try_start_0
    array-length v6, v5

    ushr-int/lit8 v1, v6, 0x2

    .line 79
    .local v1, "BLen":I
    new-array v0, v1, [I

    .line 81
    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[I)V

    .line 83
    ushr-int/lit8 v4, v3, 0x2

    .line 84
    .local v4, "MFLenWords":I
    const/4 v2, 0x0

    .local v2, "BOff":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    invoke-static {v0, v2, p2, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->SMix([IIII)V

    .line 84
    add-int/2addr v2, v4

    goto :goto_0

    .line 90
    :cond_0
    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 92
    invoke-static {p0, v5, p5}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 96
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 97
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 92
    return-object v6

    .line 96
    .end local v1    # "BLen":I
    .end local v2    # "BOff":I
    .end local v4    # "MFLenWords":I
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 97
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    .line 98
    throw v6
.end method

.method private static SMix([IIII)V
    .locals 12
    .param p0, "B"    # [I
    .param p1, "BOff"    # I
    .param p2, "N"    # I
    .param p3, "r"    # I

    .prologue
    .line 111
    mul-int/lit8 v0, p3, 0x20

    .line 113
    .local v0, "BCount":I
    const/16 v9, 0x10

    new-array v3, v9, [I

    .line 114
    .local v3, "blockX1":[I
    const/16 v9, 0x10

    new-array v4, v9, [I

    .line 115
    .local v4, "blockX2":[I
    new-array v5, v0, [I

    .line 117
    .local v5, "blockY":[I
    new-array v2, v0, [I

    .line 118
    .local v2, "X":[I
    new-array v1, p2, [[I

    .line 122
    .local v1, "V":[[I
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, p1, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p2, :cond_0

    .line 126
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v9

    aput-object v9, v1, v6

    .line 127
    invoke-static {v2, v3, v4, v5, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_0
    add-int/lit8 v8, p2, -0x1

    .line 131
    .local v8, "mask":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, p2, :cond_1

    .line 133
    add-int/lit8 v9, v0, -0x10

    aget v9, v2, v9

    and-int v7, v9, v8

    .line 134
    .local v7, "j":I
    aget-object v9, v1, v7

    const/4 v10, 0x0

    invoke-static {v2, v9, v10, v2}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 135
    invoke-static {v2, v3, v4, v5, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 138
    .end local v7    # "j":I
    :cond_1
    const/4 v9, 0x0

    invoke-static {v2, v9, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 143
    const/4 v9, 0x4

    new-array v9, v9, [[I

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 145
    return-void

    .line 142
    .end local v6    # "i":I
    .end local v8    # "mask":I
    :catchall_0
    move-exception v9

    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 143
    const/4 v10, 0x4

    new-array v10, v10, [[I

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v10}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 144
    throw v9
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 3
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "dkLen"    # I

    .prologue
    .line 103
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 104
    .local v1, "pGen":Lorg/spongycastle/crypto/PBEParametersGenerator;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 105
    mul-int/lit8 v2, p2, 0x8

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 106
    .local v0, "key":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    return-object v2
.end method

.method private static Xor([I[II[I)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "bOff"    # I
    .param p3, "output"    # [I

    .prologue
    .line 169
    array-length v1, p3

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 171
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    .line 169
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 4
    .param p0, "P"    # [B
    .param p1, "S"    # [B
    .param p2, "N"    # I
    .param p3, "r"    # I
    .param p4, "p"    # I
    .param p5, "dkLen"    # I

    .prologue
    const/4 v3, 0x1

    .line 35
    if-nez p0, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Passphrase P must be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Salt S must be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_1
    if-gt p2, v3, :cond_2

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cost parameter N must be > 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_2
    if-ne p3, v3, :cond_3

    const/high16 v1, 0x10000

    if-le p2, v1, :cond_3

    .line 50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_3
    if-ge p3, v3, :cond_4

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Block size r must be >= 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_4
    const v1, 0x7fffffff

    mul-int/lit16 v2, p3, 0x80

    mul-int/lit8 v2, v2, 0x8

    div-int v0, v1, v2

    .line 57
    .local v0, "maxParallel":I
    if-lt p4, v3, :cond_5

    if-le p4, v0, :cond_6

    .line 59
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parallelisation parameter p must be >= 1 and <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (based on block size r of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_6
    if-ge p5, v3, :cond_7

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Generated key length dkLen must be >= 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_7
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v1

    return-object v1
.end method
