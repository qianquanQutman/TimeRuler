# TimeRuler
### iOS仿萤石云视频时间选择尺
因公司接入萤石云摄像头,参考了萤石云视频的UI界面, 在开发过程中觉得时间选择尺比较有意思, 于是单独拿出来做个记录。



![滑动gif.gif](https://upload-images.jianshu.io/upload_images/1428756-8fda5aeda0fa8355.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/375)

![缩放gif.gif](https://upload-images.jianshu.io/upload_images/1428756-d7afccdea9e6aff4.gif?imageMogr2/auto-orient/strip%7CimageView2/2/w/375)



- 缩放时根据当前尺子宽度绘制不同级别的刻度
- 计算时间标记是否需要显示, 当时间Text排不开的时候只显示小时或者每四个小时显示一个时间
- 缩放的时候始终保持选中的时间处于中心位置, 所以需要在缩放的过程同时改变`ScrollView`的`contentOffset`值
````
private func contentOffset(current: Int) -> CGPoint{
        let proportion: CGFloat = CGFloat(integerLiteral: current) / (24 * 3600.0)
        let proportionWidth: CGFloat = (scrollView!.contentSize.width - sideOffset * 2) * proportion
        return CGPoint.init(x: proportionWidth - scrollView!.contentInset.left, y: scrollView!.contentOffset.y)
    }
````
