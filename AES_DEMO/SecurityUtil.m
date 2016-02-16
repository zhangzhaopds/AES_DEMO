//
//  SecurityUtil.m
//  加密Demo
//
//  Created by 张昭 on 15/12/24.
//  Copyright © 2015年 张昭. All rights reserved.
//

#import "SecurityUtil.h"
#import "NSData+AES.h"
#import "NSString+MD5.h"

#define APP_PUBLIC_PASSWORD     @"boundary"

@implementation SecurityUtil

#pragma mark - AES加密

+(NSString *)encryptAESData:(NSString*)string {
    
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    
    //  使用密码对nsdata进行加密
    NSData *encryptedData = [data AES256EncryptWithKey:APP_PUBLIC_PASSWORD];
    // 对加密后的输入进行base64加密
    NSString *base64String = [encryptedData base64EncodedStringWithOptions:0];
    
    return base64String;
}


+(NSString*)decryptAESData:(NSString *)string {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:string options:NSDataBase64DecodingIgnoreUnknownCharacters];
    //使用密码对data进行解密
    NSData *decryData = [data AES256DecryptWithKey:APP_PUBLIC_PASSWORD];
    //将解了密码的nsdata转化为nsstring
    NSString *str = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return str;
}

#pragma mark - MD5加密
/**
 *	@brief	对string进行md5加密
 *
 *	@param 	string 	未加密的字符串
 *
 *	@return	md5加密后的字符串
 */
+ (NSString*)encryptMD5String:(NSString*)string {
    return [string md5Encrypt];
}

@end
