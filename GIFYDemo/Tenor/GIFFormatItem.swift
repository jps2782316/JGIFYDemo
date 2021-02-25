//
//  GIFFormatItem.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation
import SwiftyJSON

/*
 GIF格式
 Tenor的API提供了3种不同尺寸的基本格式-GIF，MP4和webm。MP4和webm格式将只播放一次剪辑-loopedmp4除外，它将播放几次剪辑。GIF格式将连续播放片段。
 */

struct GIFFormatItem {
    
    /*
     分辨率和大小：高质量GIF格式，最大文件大小
     尺寸：原始上传尺寸（无限制）
     使用说明： 此大小用于桌面上的GIF共享
     */
    var gif: GIFMediaItem?
    
    /*
    分辨率和大小： GIF格式的大小略有减少
    尺寸：原始上传尺寸（无限制），但压缩率更高
    使用注意事项： 使用此大小在桌面上进行GIF预览
    */
    var mediumgif: GIFMediaItem?
    
    /*
    分辨率和大小：缩小的GIF格式
    尺寸：最大220像素宽，高度缩放并保留宽高比
    使用注意事项： 使用此大小可在移动设备上进行GIF预览和共享
    */
    var tinygif: GIFMediaItem?
    
    /*
    分辨率和大小： GIF格式的最小大小
    尺寸：最高90像素，宽度按比例缩放并保留宽高比
    使用注意事项： 使用此大小可在移动设备上进行GIF预览
    */
    var nanogif: GIFMediaItem?
    
    /*
    分辨率和大小：最高质量的视频格式，最大的视频格式，但小于GIF
    尺寸：类似于gif，但填充以适合视频容器规格（通常为8像素）
    使用说明： 使用此大小可在台式机上进行MP4预览和共享
    */
    var mp4: GIFMediaItem?
    
    /*
    分辨率和大小：最高质量的视频格式，大于mp4
    尺寸：与mp4相同
    使用注意事项： 如果您希望视频剪辑运行几次而不是仅运行一次，则将此大小用于mp4共享
    */
    var loopedmp4: GIFMediaItem?
    
    /*
    分辨率和大小：减小mp4格式的大小
    尺寸：宽度和高度可变，最大边框为320x320
    使用说明： 使用此大小可在移动设备上进行mp4预览和共享
    */
    var tinymp4: GIFMediaItem?
    
    /*
    分辨率和大小： mp4格式的最小大小
    尺寸：宽度和高度可变，最大边框为150x150
    使用注意事项： 使用此大小可在移动设备上进行mp4预览
    */
    var nanomp4: GIFMediaItem?
    
    /*
    分辨率和大小：较低质量的视频格式，尺寸小于MP4
    尺寸：与mp4相同
    使用说明： 使用此大小在桌面上进行webm预览和共享
    */
    var webm: GIFMediaItem?
    
    /*
    分辨率和大小：减小webm格式的大小
    尺寸：与tinymp4相同
    使用注意事项： 将此大小用于移动设备上的GIF共享
    */
    var tinywebm: GIFMediaItem?
    
    /*
    分辨率和大小： webm格式的最小大小
    尺寸：与nanomp4相同
    使用注意事项： 使用此大小可在移动设备上进行GIF预览
    */
    var nanowebm: GIFMediaItem?
    
    
    
    
    init(json: JSON) {
        gif = GIFMediaItem(json: json["gif"])
        mediumgif = GIFMediaItem(json: json["mediumgif"])
        tinygif = GIFMediaItem(json: json["tinygif"])
        nanogif = GIFMediaItem(json: json["nanogif"])
        
        mp4 = GIFMediaItem(json: json["mp4"])
        loopedmp4 = GIFMediaItem(json: json["loopedmp4"])
        tinymp4 = GIFMediaItem(json: json["tinymp4"])
        nanomp4 = GIFMediaItem(json: json["nanomp4"])
        
        webm = GIFMediaItem(json: json["webm"])
        tinywebm = GIFMediaItem(json: json["tinywebm"])
        nanowebm = GIFMediaItem(json: json["nanowebm"])
    }
    
    
    
}




