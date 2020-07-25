.class public Lorg/spongycastle/util/test/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;,
        Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;,
        Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;,
        Lorg/spongycastle/util/test/FixedSecureRandom$Data;,
        Lorg/spongycastle/util/test/FixedSecureRandom$Source;
    }
.end annotation


# static fields
.field private static ANDROID:Ljava/math/BigInteger;

.field private static CLASSPATH:Ljava/math/BigInteger;

.field private static REGULAR:Ljava/math/BigInteger;

.field private static final isAndroidStyle:Z

.field private static final isClasspathStyle:Z

.field private static final isRegularStyle:Z


# instance fields
.field private _data:[B

.field private _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 17
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "01020304ffffffff0506070811111111"

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    .line 18
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "1111111105060708ffffffff01020304"

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    .line 19
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "3020104ffffffff05060708111111"

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x80

    new-instance v3, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v3}, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 28
    .local v0, "check1":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x78

    new-instance v3, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v3}, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 30
    .local v1, "check2":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    .line 31
    sget-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    .line 32
    sget-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "value"    # [B

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    invoke-direct {v2, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 94
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V
    .locals 8
    .param p1, "sources"    # [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    .prologue
    .line 117
    const/4 v6, 0x0

    new-instance v7, Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;

    invoke-direct {v7}, Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;-><init>()V

    invoke-direct {p0, v6, v7}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    sget-boolean v6, Lorg/spongycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    if-eqz v6, :cond_4

    .line 123
    sget-boolean v6, Lorg/spongycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    if-eqz v6, :cond_3

    .line 125
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-eq v3, v6, :cond_a

    .line 129
    :try_start_0
    aget-object v6, p1, v3

    instance-of v6, v6, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v6, :cond_1

    .line 131
    aget-object v6, p1, v3

    iget-object v1, v6, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    .line 132
    .local v1, "data":[B
    array-length v6, v1

    array-length v7, v1

    rem-int/lit8 v7, v7, 0x4

    sub-int v4, v6, v7

    .line 133
    .local v4, "len":I
    array-length v6, v1

    sub-int/2addr v6, v4

    add-int/lit8 v5, v6, -0x1

    .local v5, "w":I
    :goto_1
    if-ltz v5, :cond_0

    .line 135
    aget-byte v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 137
    :cond_0
    array-length v6, v1

    sub-int v5, v6, v4

    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 139
    const/4 v6, 0x4

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 144
    .end local v1    # "data":[B
    .end local v4    # "len":I
    .end local v5    # "w":I
    :cond_1
    aget-object v6, p1, v3

    iget-object v6, v6, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "can\'t save value source."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v6, p1

    if-eq v3, v6, :cond_a

    .line 159
    :try_start_1
    aget-object v6, p1, v3

    iget-object v6, v6, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 161
    :catch_1
    move-exception v2

    .line 163
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "can\'t save value source."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :cond_4
    sget-boolean v6, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v6, :cond_9

    .line 170
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v6, p1

    if-eq v3, v6, :cond_a

    .line 174
    :try_start_2
    aget-object v6, p1, v3

    instance-of v6, v6, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v6, :cond_7

    .line 176
    aget-object v6, p1, v3

    iget-object v1, v6, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    .line 177
    .restart local v1    # "data":[B
    array-length v6, v1

    array-length v7, v1

    rem-int/lit8 v7, v7, 0x4

    sub-int v4, v6, v7

    .line 178
    .restart local v4    # "len":I
    const/4 v5, 0x0

    .restart local v5    # "w":I
    :goto_5
    if-ge v5, v4, :cond_5

    .line 180
    array-length v6, v1

    add-int/lit8 v7, v5, 0x4

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    invoke-virtual {v0, v1, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 178
    add-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 182
    :cond_5
    array-length v6, v1

    sub-int/2addr v6, v4

    if-eqz v6, :cond_6

    .line 184
    const/4 v5, 0x0

    :goto_6
    array-length v6, v1

    sub-int/2addr v6, v4

    rsub-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_6

    .line 186
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 189
    :cond_6
    const/4 v5, 0x0

    :goto_7
    array-length v6, v1

    sub-int/2addr v6, v4

    if-eq v5, v6, :cond_8

    .line 191
    add-int v6, v4, v5

    aget-byte v6, v1, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 196
    .end local v1    # "data":[B
    .end local v4    # "len":I
    .end local v5    # "w":I
    :cond_7
    aget-object v6, p1, v3

    iget-object v6, v6, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 170
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 199
    :catch_2
    move-exception v2

    .line 201
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "can\'t save value source."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 207
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unrecognized BigInteger implementation"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    .restart local v3    # "i":I
    :cond_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    .line 211
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 1
    .param p1, "values"    # [[B

    .prologue
    .line 99
    invoke-static {p1}, Lorg/spongycastle/util/test/FixedSecureRandom;->buildDataArray([[B)[Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(I[B)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .prologue
    .line 14
    invoke-static {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom;->expandToBitLength(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildDataArray([[B)[Lorg/spongycastle/util/test/FixedSecureRandom$Data;
    .locals 4
    .param p0, "values"    # [[B

    .prologue
    .line 104
    array-length v2, p0

    new-array v1, v2, [Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    .line 106
    .local v1, "res":[Lorg/spongycastle/util/test/FixedSecureRandom$Data;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    .line 108
    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method private static expandToBitLength(I[B)[B
    .locals 5
    .param p0, "bitLength"    # I
    .param p1, "v"    # [B

    .prologue
    const/4 v4, 0x0

    .line 296
    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 298
    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 300
    .local v1, "tmp":[B
    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    sget-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v2, :cond_0

    .line 303
    rem-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_0

    .line 305
    invoke-static {v1, v4}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 306
    .local v0, "i":I
    rem-int/lit8 v2, p0, 0x8

    rsub-int/lit8 v2, v2, 0x8

    shl-int v2, v0, v2

    invoke-static {v2, v1, v4}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 324
    .end local v0    # "i":I
    .end local v1    # "tmp":[B
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :cond_1
    sget-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v2, :cond_2

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    if-ge p0, v2, :cond_2

    .line 316
    rem-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_2

    .line 318
    invoke-static {p1, v4}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 319
    .restart local v0    # "i":I
    rem-int/lit8 v2, p0, 0x8

    rsub-int/lit8 v2, v2, 0x8

    shl-int v2, v0, v2

    invoke-static {v2, p1, v4}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .end local v0    # "i":I
    :cond_2
    move-object v1, p1

    .line 324
    goto :goto_0
.end method

.method private nextValue()I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 222
    new-array v0, p1, [B

    .line 224
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextBytes([B)V

    .line 226
    return-object v0
.end method

.method public isExhausted()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

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
    .line 215
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    .line 218
    return-void
.end method

.method public nextInt()I
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "val":I
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 238
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 239
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 240
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 242
    return v0
.end method

.method public nextLong()J
    .locals 5

    .prologue
    .line 251
    const-wide/16 v0, 0x0

    .line 253
    .local v0, "val":J
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 254
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 255
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 256
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 257
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 258
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 259
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 260
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 262
    return-wide v0
.end method
