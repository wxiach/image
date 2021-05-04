# 私人小图床

使用GitHub作为图片仓库，并搭配jsdelivr开源CDN加快图片访问速度。

## 图片上传：

进入图片文件夹

```bash
cd image
```

创建存放原始图片的文件夹

```bash
mkdir source
```

将图片放到source文件后，执行命令

```bash
./image.sh
```

## 图片引用：

```url
https://cdn.jsdelivr.net/gh/wxc0914/image/文件路径
```

## 注意

image.sh文件：使用`md5sum`对文件进行重命名
