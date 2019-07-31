//
//  ImageBenchmark.h
//  PNGDecodeBenchmark
//
//  Created by Tim Oliver on 1/8/19.
//  Copyright © 2019 Tim Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageBenchmark : NSObject

+ (uint64_t)runBenchmarkForImageWithName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
