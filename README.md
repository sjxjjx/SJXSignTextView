# SJXSignTextView
在方形的View中自定义左上角或右上角的斜向文字标签
![](http://sjxjjx.lofter.com/post/1ed59e77_1c6e0b8e2#)

blog:[iOS项目之自定义斜向文字标签](https://www.cnblogs.com/sjxjjx/p/11253633.html)

## 引用方式
1. 使用cocoapods
```
    pod 'SJXSignTextView'
```
2. 直接将 SJXSignTextView 文件拖入项目

## 使用方式
```
    SJXSignTextView *testV = [[SJXSignTextView alloc] init];
    testV.frame = CGRectMake(0, 0, 40, 40);
    testV.directionType = TextDirectionTypeLeft;
    testV.text = @"测试文字";
    testV.textColor = [UIColor whiteColor];
    testV.bgColor = [UIColor blueColor];
    testV.textFont = 8;
    [self.view addSubview:testV];
```
