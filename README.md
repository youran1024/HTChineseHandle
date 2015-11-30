#HTFirstLetter 
![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)


#### 说明


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

> Hug the girl, write the code


>> Power by [Mr.Yang][1]

[1]: http:www.github.com/youran1024 "Hello, boy"