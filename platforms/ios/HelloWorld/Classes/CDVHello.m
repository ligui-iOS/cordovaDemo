//
//  CDVHello.m
//  HelloWorld
//
//  Created by ligui on 16/8/25.
//
//

#import "CDVHello.h"

@implementation CDVHello
- (void)sendMessageToNative:(CDVInvokedUrlCommand *)command
{
    NSArray *arr = command.arguments;
    if (arr && [arr count] > 0) {
        NSDictionary *param = [arr lastObject];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"来自H5的消息" message:param[@"msg"] delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
    }
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"hahahaha"];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
@end
