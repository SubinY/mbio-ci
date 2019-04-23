# 常用正则表达式

#### 长度为8-20位的数字字母或特殊符号组合
```js
const passwordReg = /^((?=.*\d)(?=.*[\W_])|(?=.*[\W_])(?=.*[a-zA-Z])|(?=.*\d)(?=.*[a-zA-Z])).{8,20}$/
```


#### 匹配N个1zts开头后面12位数字结尾
```js
/(1zts)\d{12}/g
```


#### 用正则匹配字符串中重复的字符或符号，不限制重复的次数
```js
var str="aabb..ccee!!!";
var reg=/(.)\1+/ig;
//获取匹配到的重复的字符串或符号：
var str_match=str.match(reg);    //结果为：(6) ["aa", "bb", "..", "cc", "ee", "!!!"]
//把匹配到的重复的字符串或符号替换为单一的：
var str_replace=str.replace(reg,"$1");        //结果为：ab.ce!
```

<html>
<p style='color: red'>\1  表示的是正则里，第一个小括号捕获到的内容。</p>
</html>

