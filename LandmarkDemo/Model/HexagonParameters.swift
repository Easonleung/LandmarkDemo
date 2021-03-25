//
//  HexagonParameters.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/24.
//

import CoreGraphics

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
        
        /* Note:
            这个结构是用来定义正六边形一侧的三个顶点，必须引入 CoreGraphics 来使用 CGPoint
            每条边都从前面的终点开始，以直线移动到第一个点，然后越过转角处的贝塞尔（Bézier）曲线移动到第二个点。
            第三个点控制曲线的形状。
         */
    }
    
    static let adjustment: CGFloat = 0.085
    /* Note:
        一个调整值，可以调整六边形的形状
     */
    
    static let segments = [
        /* Note:
            为六边形的每条边添加一个分段的数据。
            这些值以单位方框的分数形式存储，原点在左上角，正x在右边，正y在下面。稍后，您将使用这些分数来找出给定大小的六边形的实际点。
        */
        
        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]
}
