HTLetterManger
==============

//处理汉语拼音的首字母，并排序， 处理汉语全拼
// 有了此神器，妈妈再也不用担心我的拼音啦。哈哈~

//1.实现了去汉语拼音首字母，并排序。 
2.取汉语拼音的全拼  例。中国， zhongguo

//----------------------------------------------
char pinyinFirstLetter(unsigned short hanzi);

@interface HTFirstLetter : NSObject
//获取汉字首字母，如果参数既不是汉字也不是英文字母，则返回 @“#”
+ (NSString *)firstLetter:(NSString *)chineseString;

//返回参数中所有汉字的首字母，遇到其他字符，则用 # 替换
+ (NSString *)firstLetters:(NSString *)chineseString;

//---------------------------------------------------------

//输入中文，返回全拼。
+ (NSString *) Convert:(NSString *) hzString;

//-------------------------------------------------------
