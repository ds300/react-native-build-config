
#import "RNConfig.h"

@implementation RNConfig

RCT_EXPORT_MODULE()

static NSDictionary *_config = nil;

+ (void)initialize {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"reactNativeBuildConfig" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    if (data == nil) {
        [NSException raise:@"Build Config Error" format:@"Unable to find reactNativeBuildConfig.json"];
    }
    _config = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

+ (NSDictionary *)env {
    return _config;
}

+ (NSString *)envFor: (NSString *)key {
    NSString *value = (NSString *)[_config objectForKey:key];
    return value;
}

- (NSDictionary *)constantsToExport {
    return _config;
}

@end
