.class public final Lorg/spongycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static append([BB)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v3, 0x0

    .line 908
    if-nez p0, :cond_0

    .line 910
    const/4 v2, 0x1

    new-array v1, v2, [B

    aput-byte p1, v1, v3

    .line 917
    :goto_0
    return-object v1

    .line 913
    :cond_0
    array-length v0, p0

    .line 914
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 915
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method public static append([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 936
    if-nez p0, :cond_0

    .line 938
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v3

    .line 945
    :goto_0
    return-object v1

    .line 941
    :cond_0
    array-length v0, p0

    .line 942
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 943
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    aput p1, v1, v0

    goto :goto_0
.end method

.method public static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 950
    if-nez p0, :cond_0

    .line 952
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 959
    :goto_0
    return-object v1

    .line 955
    :cond_0
    array-length v0, p0

    .line 956
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 957
    .local v1, "result":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    aput-object p1, v1, v0

    goto :goto_0
.end method

.method public static append([SS)[S
    .locals 4
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .prologue
    const/4 v3, 0x0

    .line 922
    if-nez p0, :cond_0

    .line 924
    const/4 v2, 0x1

    new-array v1, v2, [S

    aput-short p1, v1, v3

    .line 931
    :goto_0
    return-object v1

    .line 927
    :cond_0
    array-length v0, p0

    .line 928
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [S

    .line 929
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    aput-short p1, v1, v0

    goto :goto_0
.end method

.method public static areEqual([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 87
    goto :goto_0

    .line 90
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 92
    goto :goto_0

    .line 95
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 97
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 99
    goto :goto_0

    .line 95
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([C[C)Z
    .locals 5
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 67
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 69
    goto :goto_0

    .line 65
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([I[I)Z
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 190
    goto :goto_0

    .line 193
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 195
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 197
    goto :goto_0

    .line 193
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([J[J)Z
    .locals 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 215
    goto :goto_0

    .line 218
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 220
    goto :goto_0

    .line 223
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 225
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 227
    goto :goto_0

    .line 223
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    if-ne p0, p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 242
    goto :goto_0

    .line 244
    :cond_3
    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 246
    goto :goto_0

    .line 248
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p0

    if-eq v0, v5, :cond_0

    .line 250
    aget-object v1, p0, v0

    .local v1, "objA":Ljava/lang/Object;
    aget-object v2, p1, v0

    .line 251
    .local v2, "objB":Ljava/lang/Object;
    if-nez v1, :cond_5

    .line 253
    if-eqz v2, :cond_6

    move v3, v4

    .line 255
    goto :goto_0

    .line 258
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v3, v4

    .line 260
    goto :goto_0

    .line 248
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([S[S)Z
    .locals 5
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 127
    aget-short v3, p0, v0

    aget-short v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 129
    goto :goto_0

    .line 125
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static areEqual([Z[Z)Z
    .locals 5
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 27
    goto :goto_0

    .line 30
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 32
    goto :goto_0

    .line 35
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_0

    .line 37
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 39
    goto :goto_0

    .line 35
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 593
    if-nez p0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    .line 597
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 599
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .prologue
    const/4 v2, 0x0

    .line 619
    if-nez p0, :cond_0

    .line 621
    const/4 p1, 0x0

    .line 628
    .end local p1    # "existing":[B
    :goto_0
    return-object p1

    .line 623
    .restart local p1    # "existing":[B
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 625
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    goto :goto_0

    .line 627
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 3
    .param p0, "data"    # [C

    .prologue
    const/4 v2, 0x0

    .line 606
    if-nez p0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    .line 610
    :cond_0
    array-length v1, p0

    new-array v0, v1, [C

    .line 612
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 667
    if-nez p0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    .line 671
    :cond_0
    array-length v1, p0

    new-array v0, v1, [I

    .line 673
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 3
    .param p0, "data"    # [J

    .prologue
    const/4 v2, 0x0

    .line 680
    if-nez p0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    .line 684
    :cond_0
    array-length v1, p0

    new-array v0, v1, [J

    .line 686
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J[J)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .prologue
    const/4 v2, 0x0

    .line 693
    if-nez p0, :cond_0

    .line 695
    const/4 p1, 0x0

    .line 702
    .end local p1    # "existing":[J
    :goto_0
    return-object p1

    .line 697
    .restart local p1    # "existing":[J
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 699
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object p1

    goto :goto_0

    .line 701
    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 720
    if-nez p0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 728
    :goto_0
    return-object v0

    .line 724
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Ljava/math/BigInteger;

    .line 726
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 3
    .param p0, "data"    # [S

    .prologue
    const/4 v2, 0x0

    .line 707
    if-nez p0, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    .line 711
    :cond_0
    array-length v1, p0

    new-array v0, v1, [S

    .line 713
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    .prologue
    .line 633
    if-nez p0, :cond_0

    .line 635
    const/4 v2, 0x0

    check-cast v2, [[B

    .line 645
    :goto_0
    return-object v2

    .line 638
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[B

    .line 640
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 642
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 645
    goto :goto_0
.end method

.method public static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B

    .prologue
    .line 650
    if-nez p0, :cond_0

    .line 652
    const/4 v2, 0x0

    check-cast v2, [[[B

    .line 662
    :goto_0
    return-object v2

    .line 655
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[[B

    .line 657
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 659
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 662
    goto :goto_0
.end method

.method public static compareUnsigned([B[B)I
    .locals 9
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 268
    if-ne p0, p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 272
    :cond_1
    if-nez p0, :cond_2

    move v4, v5

    .line 274
    goto :goto_0

    .line 276
    :cond_2
    if-nez p1, :cond_3

    move v4, v6

    .line 278
    goto :goto_0

    .line 280
    :cond_3
    array-length v7, p0

    array-length v8, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 281
    .local v3, "minLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 283
    aget-byte v7, p0, v2

    and-int/lit16 v0, v7, 0xff

    .local v0, "aVal":I
    aget-byte v7, p1, v2

    and-int/lit16 v1, v7, 0xff

    .line 284
    .local v1, "bVal":I
    if-ge v0, v1, :cond_4

    move v4, v5

    .line 286
    goto :goto_0

    .line 288
    :cond_4
    if-le v0, v1, :cond_5

    move v4, v6

    .line 290
    goto :goto_0

    .line 281
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 293
    .end local v0    # "aVal":I
    .end local v1    # "bVal":I
    :cond_6
    array-length v7, p0

    array-length v8, p1

    if-ge v7, v8, :cond_7

    move v4, v5

    .line 295
    goto :goto_0

    .line 297
    :cond_7
    array-length v5, p0

    array-length v7, p1

    if-le v5, v7, :cond_0

    move v4, v6

    .line 299
    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 966
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 968
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 970
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 981
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 975
    :cond_0
    if-eqz p1, :cond_1

    .line 977
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 981
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .prologue
    const/4 v3, 0x0

    .line 987
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 989
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 991
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 997
    :cond_0
    if-nez p0, :cond_1

    .line 999
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_1
    if-nez p1, :cond_2

    .line 1003
    invoke-static {p0, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_2
    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1013
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1015
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 1017
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1020
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    .end local v0    # "rv":[B
    :goto_0
    return-object v0

    .line 1024
    :cond_0
    if-nez p3, :cond_1

    .line 1026
    invoke-static {p0, p1, p2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 1028
    :cond_1
    if-nez p2, :cond_2

    .line 1030
    invoke-static {p0, p1, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 1032
    :cond_2
    if-nez p1, :cond_3

    .line 1034
    invoke-static {p0, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_3
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([[B)[B
    .locals 7
    .param p0, "arrays"    # [[B

    .prologue
    .line 1044
    const/4 v3, 0x0

    .line 1045
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-eq v0, v4, :cond_0

    .line 1047
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/2addr v3, v4

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    new-array v2, v3, [B

    .line 1052
    .local v2, "rv":[B
    const/4 v1, 0x0

    .line 1053
    .local v1, "offSet":I
    const/4 v0, 0x0

    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_1

    .line 1055
    aget-object v4, p0, v0

    const/4 v5, 0x0

    aget-object v6, p0, v0

    array-length v6, v6

    invoke-static {v4, v5, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/2addr v1, v4

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1059
    :cond_1
    return-object v2
.end method

.method public static concatenate([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1064
    if-nez p0, :cond_0

    .line 1066
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    .line 1076
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    if-nez p1, :cond_1

    .line 1070
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 1073
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 1074
    .local v0, "c":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6
    .param p0, "expected"    # [B
    .param p1, "supplied"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    if-ne p0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 156
    goto :goto_0

    .line 159
    :cond_3
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_4

    .line 161
    invoke-static {p0, p0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 164
    :cond_4
    const/4 v1, 0x0

    .line 166
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_5

    .line 168
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_5
    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 320
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 325
    :goto_1
    return v1

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 308
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 310
    const/4 v1, 0x1

    .line 313
    :goto_1
    return v1

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 733
    new-array v0, p1, [B

    .line 735
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 737
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 744
    :goto_0
    return-object v0

    .line 741
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "data"    # [C
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 749
    new-array v0, p1, [C

    .line 751
    .local v0, "tmp":[C
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 753
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    :goto_0
    return-object v0

    .line 757
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 765
    new-array v0, p1, [I

    .line 767
    .local v0, "tmp":[I
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 769
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    :goto_0
    return-object v0

    .line 773
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 781
    new-array v0, p1, [J

    .line 783
    .local v0, "tmp":[J
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 785
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    :goto_0
    return-object v0

    .line 789
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 797
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 799
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 801
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    :goto_0
    return-object v0

    .line 805
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 824
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 826
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 828
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 830
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    :goto_0
    return-object v1

    .line 834
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 842
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 844
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 846
    .local v1, "tmp":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 848
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    :goto_0
    return-object v1

    .line 852
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 860
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 862
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 864
    .local v1, "tmp":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 866
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    :goto_0
    return-object v1

    .line 870
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 878
    invoke-static {p1, p2}, Lorg/spongycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 880
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 882
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    .line 884
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    :goto_0
    return-object v1

    .line 888
    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 334
    aput-byte p1, p0, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 344
    aput-char p1, p0, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 374
    aput p1, p0, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 354
    aput-wide p1, p0, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 364
    aput-short p1, p0, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 4
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 896
    sub-int v0, p1, p0

    .line 897
    .local v0, "newLength":I
    if-gez v0, :cond_0

    .line 899
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 900
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 901
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 380
    if-nez p0, :cond_1

    .line 382
    const/4 v0, 0x0

    .line 394
    :cond_0
    return v0

    .line 385
    :cond_1
    array-length v1, p0

    .line 386
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 388
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 390
    mul-int/lit16 v0, v0, 0x101

    .line 391
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([BII)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 399
    if-nez p0, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 413
    :cond_0
    return v0

    .line 404
    :cond_1
    move v1, p2

    .line 405
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 407
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 409
    mul-int/lit16 v0, v0, 0x101

    .line 410
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 3
    .param p0, "data"    # [C

    .prologue
    .line 418
    if-nez p0, :cond_1

    .line 420
    const/4 v0, 0x0

    .line 432
    :cond_0
    return v0

    .line 423
    :cond_1
    array-length v1, p0

    .line 424
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 426
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 428
    mul-int/lit16 v0, v0, 0x101

    .line 429
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 3
    .param p0, "data"    # [I

    .prologue
    .line 449
    if-nez p0, :cond_1

    .line 451
    const/4 v0, 0x0

    .line 463
    :cond_0
    return v0

    .line 454
    :cond_1
    array-length v1, p0

    .line 455
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 457
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 459
    mul-int/lit16 v0, v0, 0x101

    .line 460
    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([III)I
    .locals 3
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 468
    if-nez p0, :cond_1

    .line 470
    const/4 v0, 0x0

    .line 482
    :cond_0
    return v0

    .line 473
    :cond_1
    move v1, p2

    .line 474
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 476
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 478
    mul-int/lit16 v0, v0, 0x101

    .line 479
    add-int v2, p1, v1

    aget v2, p0, v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 6
    .param p0, "data"    # [J

    .prologue
    .line 487
    if-nez p0, :cond_1

    .line 489
    const/4 v2, 0x0

    .line 504
    :cond_0
    return v2

    .line 492
    :cond_1
    array-length v3, p0

    .line 493
    .local v3, "i":I
    add-int/lit8 v2, v3, 0x1

    .line 495
    .local v2, "hc":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 497
    aget-wide v0, p0, v3

    .line 498
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    .line 499
    long-to-int v4, v0

    xor-int/2addr v2, v4

    .line 500
    mul-int/lit16 v2, v2, 0x101

    .line 501
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    xor-int/2addr v2, v4

    .line 502
    goto :goto_0
.end method

.method public static hashCode([JII)I
    .locals 6
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 509
    if-nez p0, :cond_1

    .line 511
    const/4 v2, 0x0

    .line 526
    :cond_0
    return v2

    .line 514
    :cond_1
    move v3, p2

    .line 515
    .local v3, "i":I
    add-int/lit8 v2, v3, 0x1

    .line 517
    .local v2, "hc":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 519
    add-int v4, p1, v3

    aget-wide v0, p0, v4

    .line 520
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    .line 521
    long-to-int v4, v0

    xor-int/2addr v2, v4

    .line 522
    mul-int/lit16 v2, v2, 0x101

    .line 523
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    xor-int/2addr v2, v4

    .line 524
    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3
    .param p0, "data"    # [Ljava/lang/Object;

    .prologue
    .line 574
    if-nez p0, :cond_1

    .line 576
    const/4 v0, 0x0

    .line 588
    :cond_0
    return v0

    .line 579
    :cond_1
    array-length v1, p0

    .line 580
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 582
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 584
    mul-int/lit16 v0, v0, 0x101

    .line 585
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 3
    .param p0, "data"    # [S

    .prologue
    .line 555
    if-nez p0, :cond_1

    .line 557
    const/4 v0, 0x0

    .line 569
    :cond_0
    return v0

    .line 560
    :cond_1
    array-length v1, p0

    .line 561
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 563
    .local v0, "hc":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 565
    mul-int/lit16 v0, v0, 0x101

    .line 566
    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([[I)I
    .locals 4
    .param p0, "ints"    # [[I

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 441
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return v0
.end method

.method public static hashCode([[S)I
    .locals 4
    .param p0, "shorts"    # [[S

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 547
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return v0
.end method

.method public static hashCode([[[S)I
    .locals 4
    .param p0, "shorts"    # [[[S

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 535
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_0
    return v0
.end method

.method public static prepend([BB)[B
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1081
    if-nez p0, :cond_0

    .line 1083
    new-array v1, v4, [B

    aput-byte p1, v1, v3

    .line 1090
    :goto_0
    return-object v1

    .line 1086
    :cond_0
    array-length v0, p0

    .line 1087
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 1088
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1089
    aput-byte p1, v1, v3

    goto :goto_0
.end method

.method public static prepend([II)[I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1109
    if-nez p0, :cond_0

    .line 1111
    new-array v1, v4, [I

    aput p1, v1, v3

    .line 1118
    :goto_0
    return-object v1

    .line 1114
    :cond_0
    array-length v0, p0

    .line 1115
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 1116
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1117
    aput p1, v1, v3

    goto :goto_0
.end method

.method public static prepend([SS)[S
    .locals 5
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1095
    if-nez p0, :cond_0

    .line 1097
    new-array v1, v4, [S

    aput-short p1, v1, v3

    .line 1104
    :goto_0
    return-object v1

    .line 1100
    :cond_0
    array-length v0, p0

    .line 1101
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [S

    .line 1102
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    aput-short p1, v1, v3

    goto :goto_0
.end method

.method public static reverse([B)[B
    .locals 5
    .param p0, "a"    # [B

    .prologue
    .line 1123
    if-nez p0, :cond_1

    .line 1125
    const/4 v3, 0x0

    .line 1136
    :cond_0
    return-object v3

    .line 1128
    :cond_1
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v2, p0

    .line 1129
    .local v2, "p2":I
    new-array v3, v2, [B

    .local v3, "result":[B
    move v1, v0

    .line 1131
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 1133
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget-byte v4, p0, v1

    aput-byte v4, v3, v2

    move v1, v0

    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_0
.end method

.method public static reverse([I)[I
    .locals 5
    .param p0, "a"    # [I

    .prologue
    .line 1141
    if-nez p0, :cond_1

    .line 1143
    const/4 v3, 0x0

    .line 1154
    :cond_0
    return-object v3

    .line 1146
    :cond_1
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v2, p0

    .line 1147
    .local v2, "p2":I
    new-array v3, v2, [I

    .local v3, "result":[I
    move v1, v0

    .line 1149
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 1151
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget v4, p0, v1

    aput v4, v3, v2

    move v1, v0

    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_0
.end method
