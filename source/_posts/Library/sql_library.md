layout: post
title: MySQL 经典SQL语句
date: 2015-12-10 01:49:13
tags:
- MySQL
---
## 随机推荐SQL
原生：`mysql> select goods_id,goods_name from sh_goods order by rand() limit 5;`

ThinkPHP：`$this->field('goods_id,goods_name,goods_thumb,goods_price')->where($where)->order('rand()')->limit($limit)->select();`

## 字段拼接
`select group_concat(concat(b.attr_name,':',a.goods_attr_values) separator '<br/>' ) as ga from sh_goods_atr a left join sh_attribute b on a.attr_id = b.attr_id where a.id in (36,41);`

## 集合优化
方法一：通过模糊查询
``select * from goods where `goods_status` like '%hot%';``

模糊查询，以%百分号开头的查询无法使用索引，只能是全表扫描。效率低下

方法二：使用find_in_set(值，集合)
``select * from goods where find_in_set('best',`goods_status`);``

优化了方法一，效率提高了。但find_in_set()函数本身是个全表扫描的函数

方法三：使用位运算符
查找best：
``select * from goods where goods_status & 1;``
查找既有best又有hot同时存在：
``select * from goods where goods_status & 1 and goods_status & 4``