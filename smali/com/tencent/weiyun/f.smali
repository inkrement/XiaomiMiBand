.class Lcom/tencent/weiyun/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_photo"

.field private static final c:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_music"

.field private static final d:Ljava/lang/String; = "https://graph.qq.com/weiyun/upload_video"

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2


# instance fields
.field final synthetic a:Lcom/tencent/weiyun/FileManager;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/tencent/weiyun/FileManager$WeiyunFileType;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/tencent/weiyun/IUploadFileCallBack;

.field private final l:Landroid/os/Handler;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:[B

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/weiyun/FileManager;Landroid/content/Context;Lcom/tencent/weiyun/FileManager$WeiyunFileType;Ljava/lang/String;Lcom/tencent/weiyun/IUploadFileCallBack;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/weiyun/f;->a:Lcom/tencent/weiyun/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/weiyun/f;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/weiyun/f;->i:Lcom/tencent/weiyun/FileManager$WeiyunFileType;

    iput-object p4, p0, Lcom/tencent/weiyun/f;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/weiyun/f;->k:Lcom/tencent/weiyun/IUploadFileCallBack;

    new-instance v0, Lcom/tencent/weiyun/g;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/weiyun/g;-><init>(Lcom/tencent/weiyun/f;Landroid/os/Looper;Lcom/tencent/weiyun/FileManager;)V

    iput-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/weiyun/f;)Lcom/tencent/weiyun/IUploadFileCallBack;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->k:Lcom/tencent/weiyun/IUploadFileCallBack;

    return-object v0
.end method

.method private a(Lcom/tencent/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/weiyun/FileManager$WeiyunFileType;->ImageFile:Lcom/tencent/weiyun/FileManager$WeiyunFileType;

    if-ne p1, v0, :cond_0

    const-string v0, "https://graph.qq.com/weiyun/upload_photo"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/weiyun/FileManager$WeiyunFileType;->MusicFile:Lcom/tencent/weiyun/FileManager$WeiyunFileType;

    if-ne p1, v0, :cond_1

    const-string v0, "https://graph.qq.com/weiyun/upload_music"

    goto :goto_0

    :cond_1
    const-string v0, "https://graph.qq.com/weiyun/upload_video"

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/weiyun/f;Lcom/tencent/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/weiyun/f;->a(Lcom/tencent/weiyun/FileManager$WeiyunFileType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/weiyun/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/weiyun/f;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/tencent/weiyun/h;

    invoke-direct {v0, p0}, Lcom/tencent/weiyun/h;-><init>(Lcom/tencent/weiyun/f;)V

    invoke-virtual {v0}, Lcom/tencent/weiyun/h;->start()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/weiyun/f;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/tencent/weiyun/f;->p:[B

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/weiyun/f;[BII)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/weiyun/f;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BII)[B
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/weiyun/f;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v1, p2, 0x154

    add-int/lit8 v0, v1, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const v2, -0x5432678a

    invoke-static {v2, v0, v4}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v2, v4

    const/16 v3, 0x3e8

    invoke-static {v3, v0, v2}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v4, v0, v2}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v0, v2}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v1

    add-int/2addr v1, v2

    const/16 v2, 0x130

    invoke-static {v2, v0, v1}, Lcom/tencent/utils/DataConvert;->putShort2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/weiyun/f;->p:[B

    invoke-static {v2, v0, v1}, Lcom/tencent/utils/DataConvert;->putBytes2Bytes([B[BI)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/tencent/utils/DataConvert;->putShort2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/weiyun/f;->n:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/tencent/utils/DataConvert;->putString2Bytes(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/tencent/weiyun/f;->m:J

    long-to-int v2, v2

    invoke-static {v2, v0, v1}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3, v0, v1}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v0, v1}, Lcom/tencent/utils/DataConvert;->putInt2Bytes(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1}, Lcom/tencent/utils/DataConvert;->putBytes2Bytes([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/tencent/weiyun/i;

    invoke-direct {v0, p0}, Lcom/tencent/weiyun/i;-><init>(Lcom/tencent/weiyun/f;)V

    invoke-virtual {v0}, Lcom/tencent/weiyun/i;->start()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/weiyun/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/weiyun/f;->b()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/weiyun/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/weiyun/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/weiyun/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/weiyun/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/weiyun/f;->m:J

    return-wide v0
.end method

.method static synthetic g(Lcom/tencent/weiyun/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/weiyun/f;)Lcom/tencent/weiyun/FileManager$WeiyunFileType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->i:Lcom/tencent/weiyun/FileManager$WeiyunFileType;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/weiyun/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/weiyun/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/weiyun/f;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/tencent/weiyun/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x5

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/weiyun/f;->k:Lcom/tencent/weiyun/IUploadFileCallBack;

    invoke-interface {v0}, Lcom/tencent/weiyun/IUploadFileCallBack;->onPrepareStart()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/weiyun/f;->m:J

    const/high16 v1, 0x80000

    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v3, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    new-array v2, v1, [B

    :cond_2
    invoke-virtual {v4, v2}, Ljava/security/DigestInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/weiyun/f;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/security/DigestInputStream;

    invoke-direct {v0, v3, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    new-array v1, v1, [B

    :cond_3
    invoke-virtual {v0, v1}, Ljava/security/DigestInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/utils/DataConvert;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/weiyun/f;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0}, Lcom/tencent/weiyun/f;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/weiyun/f;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
