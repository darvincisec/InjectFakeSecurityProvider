.class public Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
.super Ljava/lang/Object;
.source "GeneralNamesBuilder.java"


# instance fields
.field private names:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addName(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
    .locals 1
    .param p1, "name"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 25
    return-object p0
.end method

.method public addNames(Lorg/spongycastle/asn1/x509/GeneralNames;)Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
    .locals 4
    .param p1, "names"    # Lorg/spongycastle/asn1/x509/GeneralNames;

    .prologue
    .line 11
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 13
    .local v1, "n":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 15
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-object p0
.end method

.method public build()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 3

    .prologue
    .line 30
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 32
    .local v1, "tmp":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 34
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x509/GeneralName;

    aput-object v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>([Lorg/spongycastle/asn1/x509/GeneralName;)V

    return-object v2
.end method
