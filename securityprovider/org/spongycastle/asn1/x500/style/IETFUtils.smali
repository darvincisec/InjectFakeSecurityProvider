.class public Lorg/spongycastle/asn1/x500/style/IETFUtils;
.super Ljava/lang/Object;
.source "IETFUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRDN(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "rdn"    # Lorg/spongycastle/asn1/x500/RDN;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .prologue
    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 307
    .local v0, "atv":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x1

    .line 309
    .local v1, "firstAtv":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 311
    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 320
    :goto_1
    aget-object v3, v0, v2

    invoke-static {p0, v3, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 325
    .end local v0    # "atv":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "firstAtv":Z
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V

    .line 330
    :cond_2
    return-void
.end method

.method public static appendTypeAndValue(Ljava/lang/StringBuffer;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "typeAndValue"    # Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .param p2, "oidSymbols"    # Ljava/util/Hashtable;

    .prologue
    .line 337
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "sym":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :goto_0
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static atvAreEqual(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z
    .locals 7
    .param p0, "atv1"    # Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .param p1, "atv2"    # Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 562
    if-ne p0, p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v4

    .line 567
    :cond_1
    if-nez p0, :cond_2

    move v4, v5

    .line 569
    goto :goto_0

    .line 572
    :cond_2
    if-nez p1, :cond_3

    move v4, v5

    .line 574
    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 578
    .local v0, "o1":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 580
    .local v1, "o2":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 582
    goto :goto_0

    .line 585
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "v1":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "v2":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 590
    goto :goto_0
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 432
    array-length v2, p0

    new-array v0, v2, [C

    .line 434
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 436
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x20

    .line 444
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 448
    invoke-static {v3}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->decodeObject(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 450
    .local v1, "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v4, v1, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v4, :cond_0

    .line 452
    check-cast v1, Lorg/spongycastle/asn1/ASN1String;

    .end local v1    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, "start":I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 461
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 465
    .local v0, "end":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-lez v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    .line 467
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 470
    :cond_2
    if-gtz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_4

    .line 472
    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 476
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_4
    invoke-static {v3}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    return-object v3
.end method

.method private static convertHex(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 118
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 120
    add-int/lit8 v0, p0, -0x30

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 124
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 126
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookUp"    # Ljava/util/Hashtable;

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 270
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 274
    .local v0, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeObject(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "oValue"    # Ljava/lang/String;

    .prologue
    .line 485
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 487
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findAttrNamesForOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;
    .locals 6
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "lookup"    # Ljava/util/Hashtable;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    .line 246
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 251
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 257
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static isHexDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 113
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rDNAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 6
    .param p0, "rdn1"    # Lorg/spongycastle/asn1/x500/RDN;
    .param p1, "rdn2"    # Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    const/4 v3, 0x0

    .line 520
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 522
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 525
    .local v0, "atvs1":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    .line 527
    .local v1, "atvs2":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    array-length v4, v0

    array-length v5, v1

    if-eq v4, v5, :cond_1

    .line 557
    .end local v0    # "atvs1":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "atvs2":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    :cond_0
    :goto_0
    return v3

    .line 532
    .restart local v0    # "atvs1":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v1    # "atvs2":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-eq v2, v4, :cond_3

    .line 534
    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-static {v4, v5}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 547
    .end local v0    # "atvs1":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v1    # "atvs2":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v4

    if-nez v4, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->atvAreEqual(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Z

    move-result v3

    goto :goto_0

    .line 557
    .restart local v0    # "atvs1":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v1    # "atvs2":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v2    # "i":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static rDNsFromString(Ljava/lang/String;Lorg/spongycastle/asn1/x500/X500NameStyle;)[Lorg/spongycastle/asn1/x500/RDN;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x500Style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;

    .prologue
    const/16 v13, 0x2b

    const/16 v12, 0x3d

    .line 131
    new-instance v2, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "nTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v1, Lorg/spongycastle/asn1/x500/X500NameBuilder;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;)V

    .line 134
    .local v1, "builder":Lorg/spongycastle/asn1/x500/X500NameBuilder;
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 136
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_4

    .line 140
    new-instance v5, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v5, v6, v13}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 141
    .local v5, "pTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    new-instance v7, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v12}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 143
    .local v7, "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_0

    .line 147
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    :cond_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/spongycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 153
    .local v3, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 155
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v4, "oids":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v9, "values":Ljava/util/Vector;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 159
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 161
    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 163
    new-instance v7, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    .end local v7    # "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v12}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 165
    .restart local v7    # "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_1

    .line 169
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_1
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/spongycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 176
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 177
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {v4}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->toOIDArray(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-static {v9}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->toValueArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    .line 184
    .end local v4    # "oids":Ljava/util/Vector;
    .end local v9    # "values":Ljava/util/Vector;
    :cond_3
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    .line 189
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "pTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    .end local v7    # "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    new-instance v7, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;

    invoke-direct {v7, v6, v12}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 191
    .restart local v7    # "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "attr":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_5

    .line 195
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "badly formatted directory string"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 198
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lorg/spongycastle/asn1/x500/X500NameStyle;->attrNameToOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 201
    .restart local v3    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    goto/16 :goto_0

    .line 205
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "vTok":Lorg/spongycastle/asn1/x500/style/X500NameTokenizer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->build()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v10

    return-object v10
.end method

.method public static stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 496
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v3, "res":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 502
    .local v0, "c1":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 507
    .local v1, "c2":C
    if-ne v0, v5, :cond_0

    if-eq v1, v5, :cond_1

    .line 509
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    :cond_1
    move v0, v1

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "k":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static toOIDArray(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "oids"    # Ljava/util/Vector;

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    .local v1, "tmp":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method

.method private static toValueArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Ljava/util/Vector;

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 212
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method

.method private static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "elt"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x5c

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    const/16 v10, 0x22

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 108
    :goto_0
    return-object v10

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 31
    .local v2, "elts":[C
    const/4 v3, 0x0

    .line 32
    .local v3, "escaped":Z
    const/4 v8, 0x0

    .line 33
    .local v8, "quoted":Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 34
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 38
    .local v9, "start":I
    const/4 v10, 0x0

    aget-char v10, v2, v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_2

    .line 40
    const/4 v10, 0x1

    aget-char v10, v2, v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_2

    .line 42
    const/4 v9, 0x2

    .line 43
    const-string v10, "\\#"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_2
    const/4 v7, 0x0

    .line 48
    .local v7, "nonWhiteSpaceEncountered":Z
    const/4 v6, 0x0

    .line 49
    .local v6, "lastEscaped":I
    const/4 v4, 0x0

    .line 51
    .local v4, "hex1":C
    move v5, v9

    .local v5, "i":I
    :goto_1
    array-length v10, v2

    if-eq v5, v10, :cond_c

    .line 53
    aget-char v1, v2, v5

    .line 55
    .local v1, "c":C
    const/16 v10, 0x20

    if-eq v1, v10, :cond_3

    .line 57
    const/4 v7, 0x1

    .line 60
    :cond_3
    const/16 v10, 0x22

    if-ne v1, v10, :cond_7

    .line 62
    if-nez v3, :cond_6

    .line 64
    if-nez v8, :cond_5

    const/4 v8, 0x1

    .line 70
    :goto_2
    const/4 v3, 0x0

    .line 51
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 68
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 72
    :cond_7
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_8

    if-nez v3, :cond_8

    if-nez v8, :cond_8

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    goto :goto_3

    .line 79
    :cond_8
    const/16 v10, 0x20

    if-ne v1, v10, :cond_9

    if-nez v3, :cond_9

    if-eqz v7, :cond_4

    .line 83
    :cond_9
    if-eqz v3, :cond_b

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->isHexDigit(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 85
    if-eqz v4, :cond_a

    .line 87
    invoke-static {v4}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v11

    add-int/2addr v10, v11

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    goto :goto_3

    .line 92
    :cond_a
    move v4, v1

    .line 93
    goto :goto_3

    .line 95
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const/4 v3, 0x0

    goto :goto_3

    .line 100
    .end local v1    # "c":C
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_d

    .line 102
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_d

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_4

    .line 108
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public static valueFromHexString(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 288
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_0

    .line 290
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 291
    .local v2, "left":C
    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 293
    .local v3, "right":C
    invoke-static {v2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->convertHex(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "left":C
    .end local v3    # "right":C
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    return-object v4
.end method

.method public static valueToString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 14
    .param p0, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    const/16 v13, 0x23

    const/16 v12, 0x20

    const/4 v11, 0x0

    const/16 v10, 0x5c

    .line 355
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v6, "vBuf":Ljava/lang/StringBuffer;
    instance-of v7, p0, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v7, :cond_4

    instance-of v7, p0, Lorg/spongycastle/asn1/DERUniversalString;

    if-nez v7, :cond_4

    .line 359
    check-cast p0, Lorg/spongycastle/asn1/ASN1String;

    .end local p0    # "value":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_3

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    .end local v5    # "v":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 382
    .local v1, "end":I
    const/4 v3, 0x0

    .line 384
    .local v3, "index":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_0

    .line 386
    add-int/lit8 v3, v3, 0x2

    .line 389
    :cond_0
    :goto_1
    if-eq v3, v1, :cond_5

    .line 391
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_1

    .line 392
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    .line 393
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1

    .line 394
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_1

    .line 395
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_1

    .line 396
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-eq v7, v8, :cond_1

    .line 397
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_1

    .line 398
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_2

    .line 400
    :cond_1
    const-string v7, "\\"

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    add-int/lit8 v3, v3, 0x1

    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    .end local v1    # "end":I
    .end local v3    # "index":I
    .restart local v5    # "v":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 373
    .end local v5    # "v":Ljava/lang/String;
    .restart local p0    # "value":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_4
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    const-string v9, "DER"

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Other value has no encoded form"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    .end local p0    # "value":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v1    # "end":I
    .restart local v3    # "index":I
    :cond_5
    const/4 v4, 0x0

    .line 409
    .local v4, "start":I
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 411
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v4, :cond_6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_6

    .line 413
    const-string v7, "\\"

    invoke-virtual {v6, v4, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 418
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 420
    .local v2, "endBuf":I
    :goto_3
    if-ltz v2, :cond_7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_7

    .line 422
    invoke-virtual {v6, v2, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 426
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
