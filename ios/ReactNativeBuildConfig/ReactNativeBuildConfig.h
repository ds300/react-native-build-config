//
//  ReactNativeBuildConfig.h
//  ReactNativeBuildConfig
//
//  Created by David Sheldrick on 05/11/16.
//  Copyright © 2016 David Sheldrick. All rights reserved.
//

#import "RCTBridgeModule.h"

@interface ReactNativeBuildConfig : NSObject <RCTBridgeModule>

+ (NSDictionary *)env;
+ (NSString *)envFor: (NSString *)key;


@end
