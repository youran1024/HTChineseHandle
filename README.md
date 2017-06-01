# HTChineseHandle
![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
![Badge w/ Version](https://img.shields.io/cocoapods/v/HTChineseHandle.svg)
![Badge w/ Platform](https://img.shields.io/cocoapods/p/HTChineseHandle.svg?style=flat)


#### Instruction

汉字拼音的处理方法，在一些需要提取汉字拼音首字母，或者通过汉字拼音首字母进行分类并排序的项目里，是非常有用的，希望大家喜欢~

### Installation

```
pod 'HTChineseLetter`

```

### Method Instruction

- **` @interface NSString (FirstLetter)`**

```
//  获取第一个汉字拼音首字母
- (NSString *)firstLetter;

//  获取所有汉字拼音首字母
- (NSString *)firstLetters;

```

- **`@interface NSArray (FirstLetterArray)`**

```

//	如果给定的数组对象里边都是字符串则调用此方法
- (NSDictionary *)sortedArrayUsingFirstLetter;

//	如果给定的数组里边是Model，或者字典则用这个，并且给出KeyPath
- (NSDictionary *)sortedArrayUsingFirstLetterByKeypath:(NSString *)keyPath;

```

### Thanks

**<font color=red>感谢提供pinyin文件的却未曾相识的George同志~ </font>**

>  write the code， enjoy the world


>> Power by [Mr.Yang][1]

[1]: http:www.github.com/youran1024 "Hello, boy"
