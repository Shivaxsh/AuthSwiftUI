//
//  ComplexAuthProfileManager.m
//  Useroutput
//
//  Created by Shivansh Singh on 07/10/23.
//

#import "ComplexAuthProfileManager.h"

@interface ComplexAuthProfileManager ()

@property (nonatomic, assign) BOOL isLoggedIn;

@end

@implementation ComplexAuthProfileManager

- (instancetype)initWithUserId:(NSString *)userId username:(NSString *)username {
    self = [super init];
    if (self) {
        _userId = userId;
        _username = username;
        _isLoggedIn = NO;
    }
    return self;
}

- (BOOL)loginWithUsername:(NSString *)username andPassword:(NSString *)password {
    // Simulate login logic here
    if ([username isEqualToString:self.username] && [password isEqualToString:@"password123"]) {
        self.isLoggedIn = YES;
        return YES;
    }
    return NO;
}

- (void)logout {
    self.isLoggedIn = NO;
}

- (BOOL)registerWithUsername:(NSString *)username andPassword:(NSString *)password {
    // Simulate registration logic here
    self.username = username;
    return YES;
}

- (void)updateProfileInformation:(NSString *)newUsername {
    self.username = newUsername;
}

@end
