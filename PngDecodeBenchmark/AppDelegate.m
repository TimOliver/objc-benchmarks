//
//  AppDelegate.m
//  PNGDecodeBenchmark
//
//  Created by Tim Oliver on 1/8/19.
//  Copyright © 2019 Tim Oliver. All rights reserved.
//

#import "AppDelegate.h"
#import "ImageBenchmark.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSArray *files = @[ @"Baseline",
                        @"Baseline",
                        @"ImageMagick",
                        @"ImageMagick",
                        @"ImageOptim-trim",
                        @"ImageOptim-trim",
                        @"Imagemagick_Channel",
                        @"Imagemagick_Channel",
                        @"Pixelmator-trim",
                        @"Pixelmator-trim",
                        @"ImageOptim",
                        @"ImageOptim",
                        @"ImageMagick-trim",
                        @"ImageMagick-trim",
                        @"Baseline",
                        @"Baseline"];

    for (NSString *fileName in files) {
        uint64_t time = [ImageBenchmark runBenchmarkForImageWithName:fileName];
        NSLog(@"Average time for %@ -> %llu μs", fileName, (time/1000));
    }

    return YES;
}

@end
