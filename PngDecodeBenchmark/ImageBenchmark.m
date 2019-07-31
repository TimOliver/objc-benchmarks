//
//  ImageBenchmark.m
//  PNGDecodeBenchmark
//
//  Created by Tim Oliver on 1/8/19.
//  Copyright © 2019 Tim Oliver. All rights reserved.
//

#import "ImageBenchmark.h"
#import <UIKit/UIKit.h>

extern uint64_t dispatch_benchmark(size_t count, void (^block)(void));

@implementation ImageBenchmark

+ (uint64_t)runBenchmarkForImageWithName:(NSString *)fileName
{
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString *filePath = [resourcePath stringByAppendingPathComponent:fileName];

    uint64_t t = dispatch_benchmark(5, ^{
        @autoreleasepool {
            UIImage *image = [UIImage imageWithContentsOfFile:filePath];
            UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithSize:(CGSize){1, 1}];
            [renderer imageWithActions:^(UIGraphicsImageRendererContext *rendererContext) {
                [image drawAtPoint:CGPointZero];
            }];
        }
    });

    return t;
}

@end
