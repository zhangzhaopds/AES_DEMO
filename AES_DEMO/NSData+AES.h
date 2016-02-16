//
//  NSData+AES.h
//  加密Demo
//
//  Created by 张昭 on 15/12/24.
//  Copyright © 2015年 张昭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES)

- (NSData *)AES256EncryptWithKey:(NSString *)key;   //加密
- (NSData *)AES256DecryptWithKey:(NSString *)key;   //解密

@end
