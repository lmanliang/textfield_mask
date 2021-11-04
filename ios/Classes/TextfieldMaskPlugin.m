#import "TextfieldMaskPlugin.h"
#if __has_include(<textfield_mask/textfield_mask-Swift.h>)
#import <textfield_mask/textfield_mask-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "textfield_mask-Swift.h"
#endif

@implementation TextfieldMaskPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTextfieldMaskPlugin registerWithRegistrar:registrar];
}
@end
