.class public Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SemanticsInformation.java"


# instance fields
.field private nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

.field private semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "semanticsIdentifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "semanticsIdentifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "generalNames"    # [Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    invoke-static {p2}, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/spongycastle/asn1/x509/GeneralName;)[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 87
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 51
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 53
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "no objects in SemanticsInformation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_1

    .line 59
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 70
    .end local v3    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 72
    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 73
    .local v1, "generalNameSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lorg/spongycastle/asn1/x509/GeneralName;

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 76
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v5

    aput-object v5, v4, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "generalNameSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v2    # "i":I
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 79
    .end local v3    # "object":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "generalNames"    # [Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/spongycastle/asn1/x509/GeneralName;)[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 99
    return-void
.end method

.method private static cloneNames([Lorg/spongycastle/asn1/x509/GeneralName;)[Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 3
    .param p0, "names"    # [Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    const/4 v2, 0x0

    .line 134
    if-eqz p0, :cond_0

    .line 136
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 138
    .local v0, "tmp":[Lorg/spongycastle/asn1/x509/GeneralName;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    .end local v0    # "tmp":[Lorg/spongycastle/asn1/x509/GeneralName;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;

    .line 45
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNameRegistrationAuthorities()[Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->cloneNames([Lorg/spongycastle/asn1/x509/GeneralName;)[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSemanticsIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 113
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 115
    .local v1, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_2

    .line 121
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v2, "seqname":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 124
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/spongycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    .end local v0    # "i":I
    .end local v2    # "seqname":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
