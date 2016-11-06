
#import "RCTBridgeModule.h"

@interface RNConfig : NSObject <RCTBridgeModule>
+ (NSDictionary *)env;
+ (NSString *)envFor: (NSString *)key;
@end
