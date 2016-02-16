//
//  SecurityUtil.h
//  加密Demo
//
//  Created by 张昭 on 15/12/24.
//  Copyright © 2015年 张昭. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecurityUtil : NSObject

#pragma mark - AES加密

+(NSString *)encryptAESData:(NSString*)string;

+(NSString*)decryptAESData:(NSString *)string;

#pragma mark - MD5加密
/**
 *	@brief	对string进行md5加密
 *
 *	@param 	string 	未加密的字符串
 *
 *	@return	md5加密后的字符串
 */
+ (NSString*)encryptMD5String:(NSString*)string;


@end
