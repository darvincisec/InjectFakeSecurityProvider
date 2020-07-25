.class public Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
.super Ljava/lang/Object;
.source "SkeinParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    .line 162
    invoke-static {p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->access$000(Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->access$000(Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;-><init>(Ljava/util/Map;Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    const/4 v1, 0x4

    .line 186
    if-nez p2, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    if-eqz p1, :cond_2

    if-le p1, v1, :cond_1

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_2
    if-ne p1, v1, :cond_3

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->parameters:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-object p0
.end method

.method public setKey([B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyIdentifier([B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "keyIdentifier"    # [B

    .prologue
    .line 306
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNonce([B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 316
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "distinguisher"    # Ljava/lang/String;

    .prologue
    .line 237
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 239
    .local v3, "out":Ljava/io/OutputStreamWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "YYYYMMDD"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "format":Ljava/text/DateFormat;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 241
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 243
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 246
    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 248
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Byte I/O failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateLocale"    # Ljava/util/Locale;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "distinguisher"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 274
    .local v3, "out":Ljava/io/OutputStreamWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "YYYYMMDD"

    invoke-direct {v2, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 275
    .local v2, "format":Ljava/text/DateFormat;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 276
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 278
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 281
    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 283
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Byte I/O failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPersonalisation([B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "personalisation"    # [B

    .prologue
    .line 217
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey([B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;
    .locals 1
    .param p1, "publicKey"    # [B

    .prologue
    .line 296
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;->set(I[B)Lorg/spongycastle/jcajce/spec/SkeinParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method
