//
//  CDVHello.h
//  HelloWorld
//
//  Created by ligui on 16/8/25.
//
//

#import <Foundation/Foundation.h>
#import "Cordova/CDV.h"

@interface CDVHello : CDVPlugin
- (void)sendMessageToNative:(CDVInvokedUrlCommand *)command;
@end
