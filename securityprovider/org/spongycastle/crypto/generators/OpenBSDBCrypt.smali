.class public Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;
.super Ljava/lang/Object;
.source "OpenBSDBCrypt.java"


# static fields
.field private static final allowedVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final decodingTable:[B

.field private static final defaultVersion:Ljava/lang/String; = "2y"

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    .line 36
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    .line 43
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    const-string v2, "2a"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    const-string v2, "2y"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    const-string v2, "2b"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 54
    sget-object v1, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    sget-object v2, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    return-void

    .line 19
    :array_0
    .array-data 1
        0x2et
        0x2ft
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static checkPassword(Ljava/lang/String;[C)Z
    .locals 12
    .param p0, "bcryptString"    # Ljava/lang/String;
    .param p1, "password"    # [C

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0x24

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_0

    .line 196
    new-instance v5, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bcrypt String length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", 60 required."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 201
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 202
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 204
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid Bcrypt String format."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_2
    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "version":Ljava/lang/String;
    sget-object v5, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 211
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bcrypt version \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not supported by this implementation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    :cond_3
    const/4 v0, 0x0

    .line 217
    .local v0, "cost":I
    const/4 v5, 0x4

    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 224
    if-lt v0, v9, :cond_4

    const/16 v5, 0x1f

    if-le v0, v5, :cond_5

    .line 226
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cost factor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", 4 < cost < 31 expected."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    :catch_0
    move-exception v2

    .line 221
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid cost factor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    if-nez p1, :cond_6

    .line 232
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Missing password."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_6
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1f

    .line 235
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodeSaltString(Ljava/lang/String;)[B

    move-result-object v3

    .line 238
    .local v3, "salt":[B
    invoke-static {v4, p1, v3, v0}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->generate(Ljava/lang/String;[C[BI)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "newBcryptString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private static createBcryptString(Ljava/lang/String;[B[BI)Ljava/lang/String;
    .locals 5
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "password"    # [B
    .param p2, "salt"    # [B
    .param p3, "cost"    # I

    .prologue
    const/16 v4, 0x24

    .line 78
    sget-object v2, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not accepted by this implementation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const/16 v2, 0xa

    if-ge p3, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-static {p2}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodeData([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-static {p1, p2, p3}, Lorg/spongycastle/crypto/generators/BCrypt;->generate([B[BI)[B

    move-result-object v0

    .line 93
    .local v0, "key":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodeData([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 87
    .end local v0    # "key":[B
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static decodeSaltString(Ljava/lang/String;)[B
    .locals 15
    .param p0, "saltString"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 314
    .local v8, "saltChars":[C
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x10

    invoke-direct {v6, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 317
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    array-length v12, v8

    const/16 v13, 0x16

    if-eq v12, v13, :cond_0

    .line 319
    new-instance v12, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid base64 salt length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , 22 required."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 323
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v8

    if-ge v4, v12, :cond_3

    .line 325
    aget-char v11, v8, v4

    .line 326
    .local v11, "value":I
    const/16 v12, 0x7a

    if-gt v11, v12, :cond_1

    const/16 v12, 0x2e

    if-lt v11, v12, :cond_1

    const/16 v12, 0x39

    if-le v11, v12, :cond_2

    const/16 v12, 0x41

    if-ge v11, v12, :cond_2

    .line 328
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Salt string contains invalid character: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 323
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v11    # "value":I
    :cond_3
    const/16 v12, 0x18

    new-array v9, v12, [C

    .line 334
    .local v9, "tmp":[C
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v8

    invoke-static {v8, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    move-object v8, v9

    .line 337
    array-length v5, v8

    .line 339
    .local v5, "len":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    .line 341
    sget-object v12, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    aget-char v13, v8, v4

    aget-byte v0, v12, v13

    .line 342
    .local v0, "b1":B
    sget-object v12, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v13, v4, 0x1

    aget-char v13, v8, v13

    aget-byte v1, v12, v13

    .line 343
    .local v1, "b2":B
    sget-object v12, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v13, v4, 0x2

    aget-char v13, v8, v13

    aget-byte v2, v12, v13

    .line 344
    .local v2, "b3":B
    sget-object v12, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    add-int/lit8 v13, v4, 0x3

    aget-char v13, v8, v13

    aget-byte v3, v12, v13

    .line 346
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    shl-int/lit8 v12, v1, 0x4

    shr-int/lit8 v13, v2, 0x2

    or-int/2addr v12, v13

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    shl-int/lit8 v12, v2, 0x6

    or-int/2addr v12, v3

    invoke-virtual {v6, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 351
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 354
    .local v7, "saltBytes":[B
    const/16 v12, 0x10

    new-array v10, v12, [B

    .line 355
    .local v10, "tmpSalt":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v7, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    move-object v7, v10

    .line 358
    return-object v7
.end method

.method private static encodeData([B)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B

    .prologue
    const/16 v11, 0x10

    const/4 v12, 0x0

    .line 253
    array-length v9, p0

    const/16 v10, 0x18

    if-eq v9, v10, :cond_0

    array-length v9, p0

    if-eq v9, v11, :cond_0

    .line 255
    new-instance v9, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", 24 for key or 16 for salt expected"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 257
    :cond_0
    const/4 v7, 0x0

    .line 258
    .local v7, "salt":Z
    array-length v9, p0

    if-ne v9, v11, :cond_1

    .line 260
    const/4 v7, 0x1

    .line 261
    const/16 v9, 0x12

    new-array v8, v9, [B

    .line 262
    .local v8, "tmp":[B
    array-length v9, p0

    invoke-static {p0, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    move-object p0, v8

    .line 270
    .end local v8    # "tmp":[B
    :goto_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    array-length v4, p0

    .line 275
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 277
    aget-byte v9, p0, v3

    and-int/lit16 v0, v9, 0xff

    .line 278
    .local v0, "a1":I
    add-int/lit8 v9, v3, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v1, v9, 0xff

    .line 279
    .local v1, "a2":I
    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v2, v9, 0xff

    .line 281
    .local v2, "a3":I
    sget-object v9, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    ushr-int/lit8 v10, v0, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    sget-object v9, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    shl-int/lit8 v10, v0, 0x4

    ushr-int/lit8 v11, v1, 0x4

    or-int/2addr v10, v11

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    sget-object v9, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    shl-int/lit8 v10, v1, 0x2

    ushr-int/lit8 v11, v2, 0x6

    or-int/2addr v10, v11

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 284
    sget-object v9, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    and-int/lit8 v10, v2, 0x3f

    aget-byte v9, v9, v10

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 275
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 267
    .end local v0    # "a1":I
    .end local v1    # "a2":I
    .end local v2    # "a3":I
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    array-length v9, p0

    add-int/lit8 v9, v9, -0x1

    aput-byte v12, p0, v9

    goto :goto_0

    .line 287
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "result":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 290
    const/16 v9, 0x16

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 294
    :goto_2
    return-object v9

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static generate(Ljava/lang/String;[C[BI)Ljava/lang/String;
    .locals 7
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "cost"    # I

    .prologue
    const/16 v3, 0x48

    const/4 v6, 0x0

    .line 133
    sget-object v4, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not accepted by this implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 140
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Password required."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_1
    if-nez p2, :cond_2

    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salt required."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_2
    array-length v4, p2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    .line 148
    new-instance v3, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "16 byte salt required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_3
    const/4 v4, 0x4

    if-lt p3, v4, :cond_4

    const/16 v4, 0x1f

    if-le p3, v4, :cond_5

    .line 152
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid cost factor."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_5
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    .line 159
    .local v0, "psw":[B
    array-length v4, v0

    if-lt v4, v3, :cond_6

    :goto_0
    new-array v2, v3, [B

    .line 161
    .local v2, "tmp":[B
    array-length v3, v2

    array-length v4, v0

    if-le v3, v4, :cond_7

    .line 163
    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    :goto_1
    invoke-static {v0, v6}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 172
    invoke-static {p0, v2, p2, p3}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->createBcryptString(Ljava/lang/String;[B[BI)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "rv":Ljava/lang/String;
    invoke-static {v2, v6}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 176
    return-object v1

    .line 159
    .end local v1    # "rv":Ljava/lang/String;
    .end local v2    # "tmp":[B
    :cond_6
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .restart local v2    # "tmp":[B
    :cond_7
    array-length v3, v2

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public static generate([C[BI)Ljava/lang/String;
    .locals 1
    .param p0, "password"    # [C
    .param p1, "salt"    # [B
    .param p2, "cost"    # I

    .prologue
    .line 113
    const-string v0, "2y"

    invoke-static {v0, p0, p1, p2}, Lorg/spongycastle/crypto/generators/OpenBSDBCrypt;->generate(Ljava/lang/String;[C[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
