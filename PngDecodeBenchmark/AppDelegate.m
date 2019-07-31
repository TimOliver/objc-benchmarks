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

    NSArray *files = @[@"Baseline.png",
                        @"ImageMagick.png",
                        @"ImageOptim-trim.png",
                        @"Imagemagick_Channel.png",
                        @"Pixelmator-trim.png",
                        @"ImageOptim.png",
                        @"ImageMagick-trim.png"];

    for (NSString *fileName in files) {
        uint64_t time = [ImageBenchmark runBenchmarkForImageWithName:fileName];
        NSLog(@"Average time for %@ -> %llu μs", fileName, (time/1000));
    }

    return YES;
}

@end
