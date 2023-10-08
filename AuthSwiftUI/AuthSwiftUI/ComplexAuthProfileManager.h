//
//  ComplexAuthProfileManager.h
//  Useroutput
//
//  Created by Shivansh Singh on 07/10/23.
//

#import <Foundation/Foundation.h>

@interface ComplexAuthProfileManager : NSObject

@property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *username;

- (instancetype)initWithUserId:(NSString *)userId username:(NSString *)username;
- (BOOL)loginWithUsername:(NSString *)username andPassword:(NSString *)password;
- (void)logout;
- (BOOL)registerWithUsername:(NSString *)username andPassword:(NSString *)password;
- (void)updateProfileInformation:(NSString *)newUsername;

@end
