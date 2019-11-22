layout: library
title: PHP - MySQL SQL注入
date: 2015-09-10 09:26:25
tags:
- SQL注入
---
# SQL 注入
用户名注入：
`select * from admin where name='' or 1=1 or '' and pwd = '';`
`select * from admin where name='' or 1=1 # '' and pwd = '';`
`select * from admin where name='' or 1=1 -- '' and pwd = '';`

>' or 1=1 or ''
' or 1=1 # '' 
' or 1=1 -- ''

密码注入：
`select * from admin where name='' and pwd = '' OR ''='';`
>' OR ''='

解决方法一：
`mysql_real_escape_string()` 函数转义 SQL 语句中使用的字符串中的特殊字符。
下列字符受影响：
`\x00`
`\n`
`\r`
`\`
`'`
`"`
`\x1a`
如果成功，则该函数返回被转义的字符串。如果失败，则返回 false。
语法
`mysql_real_escape_string(string,connection)`
| 参数 | 描述 |
| --- | --- |
| string<span class="Apple-tab-span" style="white-space:pre"></span> | 必需。规定要转义的字符串。 |
| connection | 可选。规定 MySQL 连接。如果未规定，则使用上一个连接。 |

解决方法二：`string mysql_escape_string ( string $unescaped_string )`
> `mysql_escape_string()` 并不转义 `%` 和 `_`。 本函数和 `mysql_real_escape_string()` 完全一样，除了 `mysql_real_escape_string()` 接受的是一个连接句柄并根据当前字符集转移字符串之外。`mysql_escape_string()` 并不接受连接参数，也不管当前字符集设定。

解决方法三：
`string addslashes ( string $str )`
返回字符串，该字符串为了数据库查询语句等的需要在某些字符前加上了反斜线。这些字符是单引号（'）、双引号（"）、反斜线（\）与 NUL（NULL 字符）。

解决方法四：
面向对象风格
`string mysqli::escape_string ( string $escapestr )`
`string mysqli::real_escape_string ( string $escapestr )`

过程化风格
`string mysqli_real_escape_string ( mysqli $link , string $escapestr )`