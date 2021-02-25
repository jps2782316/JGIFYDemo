//
//  GiphyGifFormatItem.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation
import SwiftyJSON


struct GiphyGifItemInfo {
    
    ///此GIF的可公开访问的直接URL
    var url: String?
    ///此GIF的宽度，以像素为单位
    var width: Int?
    ///此GIF的高度，以像素为单位
    var height: Int?
    ///此GIF的大小，以字节为单位
    var size: Int?
    
    ///此GIF的URL为.MP4​​格式
    var mp4: String?
    ///与此GIF对应的.MP4文件的大小（以字节为单位）
    var mp4_size: Int?
    
    ///格式为.webp的此GIF的URL
    var webp: String?
    ///与此GIF对应的.webp文件的大小（以字节为单位）
    var webp_size: String?
    
    
    
}






/*
 图片对象:
 在GIF对象中找到的Images对象包含一系列Rendition对象。这些呈现对象包括我们为每个GIF提供的许多不同呈现形式的URL和大小。有关选择适合您的最佳图像格式的更多信息和最佳做法，请参阅我们的“翻译指南”。（请注意，某些GIF并不具备所有可用的属性。）
 */
struct GiphyGifFormatItem {
    
    ///此GIF版本的数据，固定高度为200像素。适用于移动设备。
    var fixed_height: GiphyGifItemInfo?
    
    ///此GIF静态图像上的数据，固定高度为200像素
    var fixed_height_still: GiphyGifItemInfo?
    
    ///此GIF版本的数据，其固定高度为200像素，并且帧数减少为6
    var fixed_height_downsampled: GiphyGifItemInfo?
    
    ///此GIF版本的数据，固定宽度为200像素。适用于移动设备
    var fixed_width: GiphyGifItemInfo?
    
    ///此GIF静态图像上的数据，具有200像素的固定宽度
    var fixed_width_still: GiphyGifItemInfo?
    
    ///此GIF版本的数据，其固定宽度为200像素，并且帧数减少为6
    var fixed_width_downsampled: GiphyGifItemInfo?
    
    
    ///此GIF版本的数据，其固定高度为100像素。适用于移动键盘
    var fixed_height_small: GiphyGifItemInfo?
    
    ///此GIF静态图像上的数据，其固定高度为100像素
    var fixed_height_small_still: GiphyGifItemInfo?
    
    ///此GIF版本的数据，其固定宽度为100像素。适用于移动键盘
    var fixed_width_small: GiphyGifItemInfo?
    
    
    ///此GIF静态图像上的数据，其固定宽度为100像素
    var fixed_width_small_still: GiphyGifItemInfo?
    
    
    ///此GIF版本的数据减小到2mb以下
    var downsized: GiphyGifItemInfo?
    
    ///此GIF缩小版本的静态预览图像上的数据
    var downsized_still: GiphyGifItemInfo?
    
    ///此GIF版本的数据减小到8mb以下
    var downsized_large: GiphyGifItemInfo?
    
    
    ///此GIF版本的数据减小到5mb以下
    var downsized_medium: GiphyGifItemInfo?
    
    
    ///此GIF版本的数据减小到200kb以下
    var downsized_small: GiphyGifItemInfo?
    
    
    ///此GIF原始版本上的数据。适合桌面使用
    var original: GiphyGifItemInfo?
    
    ///原始GIF的静态预览图像上的数据
    var original_still: GiphyGifItemInfo?
    
    
    ///有关GIF循环15秒版本的数据
    var looping: GiphyGifItemInfo?
    
    
    ///有关此GIF版本的数据，.MP4格式限制为50kb，显示GIF的前1-2秒
    var preview: GiphyGifItemInfo?
    
    ///此GIF版本上的数据限制为50kb，只能显示GIF的前1-2秒
    var preview_gif: GiphyGifItemInfo?
    
    
    
    
    
    
    
    
    
    
    
    
    
}
