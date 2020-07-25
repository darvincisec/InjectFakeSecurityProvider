.class public Lorg/spongycastle/asn1/x500/X500Name;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdns:[Lorg/spongycastle/asn1/x500/RDN;

.field private style:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 105
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-interface {p1, p2}, Lorg/spongycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/X500Name;-><init>([Lorg/spongycastle/asn1/x500/RDN;)V

    .line 149
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 150
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 113
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/spongycastle/asn1/x500/RDN;

    iput-object v3, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "index":I
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v4

    aput-object v4, v3, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iget-object v0, p2, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    .line 48
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 0
    .param p1, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 133
    iput-object p2, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    .line 134
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 135
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 1
    .param p1, "rDNs"    # [Lorg/spongycastle/asn1/x500/RDN;

    .prologue
    .line 126
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V

    .line 127
    return-void
.end method

.method public static getDefaultStyle()Lorg/spongycastle/asn1/x500/X500NameStyle;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 71
    check-cast p0, Lorg/spongycastle/asn1/x500/X500Name;

    .line 78
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 73
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/spongycastle/asn1/x500/X500Name;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/x500/X500Name;)V

    .line 94
    :goto_0
    return-object v0

    .line 89
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultStyle(Lorg/spongycastle/asn1/x500/X500NameStyle;)V
    .locals 2
    .param p0, "style"    # Lorg/spongycastle/asn1/x500/X500NameStyle;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    sput-object p0, Lorg/spongycastle/asn1/x500/X500Name;->defaultStyle:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 319
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    if-ne p1, p0, :cond_0

    move v2, v3

    .line 297
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    .line 279
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    move v2, v4

    .line 281
    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 284
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 286
    .local v0, "derO":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 288
    goto :goto_0

    .line 293
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    new-instance v3, Lorg/spongycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-interface {v2, p0, v3}, Lorg/spongycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v2, v4

    .line 297
    goto :goto_0
.end method

.method public getAttributeTypes()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 8

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v7, v7

    if-eq v3, v7, :cond_0

    .line 177
    iget-object v7, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    aget-object v5, v7, v3

    .line 179
    .local v5, "rdn":Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v5    # "rdn":Lorg/spongycastle/asn1/x500/RDN;
    :cond_0
    new-array v6, v1, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 184
    .local v6, "res":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v1, 0x0

    .line 186
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v7, v7

    if-eq v3, v7, :cond_3

    .line 188
    iget-object v7, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    aget-object v5, v7, v3

    .line 190
    .restart local v5    # "rdn":Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 193
    .local v0, "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v7, v0

    if-eq v4, v7, :cond_2

    .line 195
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aget-object v7, v0, v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v6, v1

    .line 193
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 198
    .end local v0    # "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    .line 186
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v5    # "rdn":Lorg/spongycastle/asn1/x500/RDN;
    :cond_3
    return-object v6
.end method

.method public getRDNs()[Lorg/spongycastle/asn1/x500/RDN;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x500/RDN;

    .line 161
    .local v0, "tmp":[Lorg/spongycastle/asn1/x500/RDN;
    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    return-object v0
.end method

.method public getRDNs(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)[Lorg/spongycastle/asn1/x500/RDN;
    .locals 10
    .param p1, "attributeType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v9, 0x0

    .line 215
    iget-object v8, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v8, v8

    new-array v6, v8, [Lorg/spongycastle/asn1/x500/RDN;

    .line 216
    .local v6, "res":[Lorg/spongycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 218
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v8, v8

    if-eq v3, v8, :cond_3

    .line 220
    iget-object v8, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    aget-object v5, v8, v3

    .line 222
    .local v5, "rdn":Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    .line 225
    .local v0, "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v0

    if-eq v4, v8, :cond_0

    .line 227
    aget-object v8, v0, v4

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 229
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v5, v6, v1

    move v1, v2

    .line 218
    .end local v0    # "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v2    # "count":I
    .end local v4    # "j":I
    .restart local v1    # "count":I
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .restart local v0    # "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .restart local v4    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "attr":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 238
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    aput-object v5, v6, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 243
    .end local v5    # "rdn":Lorg/spongycastle/asn1/x500/RDN;
    :cond_3
    new-array v7, v1, [Lorg/spongycastle/asn1/x500/RDN;

    .line 245
    .local v7, "tmp":[Lorg/spongycastle/asn1/x500/RDN;
    array-length v8, v7

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    return-object v7
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    .line 259
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 266
    :goto_0
    return v0

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 264
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/spongycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 266
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->rdns:[Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->style:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->toString(Lorg/spongycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
