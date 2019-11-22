layout: library
title: PHP - 速度提升小技巧
date: 2015-10-11 22:06:53
tags:
- PHP小技巧
- PHP加载速度
---
# MySQL数据库
## 建表
由于session没有长久保存的必要，所以建议sess表使用memory引擎，此引擎执行效率高。

## 数据insert
## 数据delete
## 数据update
## 数据select

# PHP
## *C-S-R-F* 保护
*C-S-R-F* (跨网站请求伪造) 攻击，跨网站请求伪造是一种恶意的攻击，借以代表经过身份验证的用户执行未经授权的命令。

Laravel解决方案：
>Laravel 会自动在每一位用户的 session 中放置随机的 token ，这个 token 将被用来确保经过验证的用户是实际发出请求至应用程序的用户

插入 *C-S-R-F* Token 到表单
```<input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">```

当然也可以在Blade模板引擎使用：
```<input type="hidden" name="_token" value="{{ csrf_token() }}">```
## Composer安装laravel框架
### 方法一 
通过 composer Create-Project命令安装Laravel
`composer create-project laravel/laravel --prefer-dist[别名]`
### 方法二
laravel安装器
```
composer global require "laravel/installer"
laravel new blog
```

检查安装状态
```
uiste:test uiste$ laravel
Laravel Installer version 1.3.3
```

下载laravel
```
uiste:test uiste$ laravel new blog
Crafting application...
```