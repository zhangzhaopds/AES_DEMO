//
//  NSString+MD5.h
//  加密Demo
//
//  Created by 张昭 on 15/12/24.
//  Copyright © 2015年 张昭. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface NSString (MD5)

- (NSString *)md5Encrypt;   //16位加密

@end
