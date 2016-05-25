//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */
-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *preferredIceCream = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                         
                                         @"Tim" : @"Natural Vanilla",
                                         
                                         @"Sophie" : @"Mexican Chocolate",
                                         
                                         @"Deniz" : @"Natural Vanilla",
                                         
                                         @"Tom" : @"Mexican Chocolate",
                                         
                                         @"Jim" : @"Natural Vanilla",
                                         
                                         @"Mark" : @"Cookies 'n Cream" };
    
    NSArray *resultIceCream = [preferredIceCream allKeysForObject:iceCream];
    
    
    return resultIceCream;
}


//NSLog(@"%@",preferredIceCream[@"Deniz"]);



-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    //return a dictionary - create a dictionary to return
    //ice cream is the key
    //use my method to get list of names - returns array
    //count the names in the array
    //int -> nsnumber
    //return dictionary
    
    //we created a dictionary to return. that's empty so we can fill it in our for loop
    NSMutableDictionary *resultIceCream = [[NSMutableDictionary alloc]init];
    
    //we need ice cream names. all values gives us an array of icecream names
    NSArray *iceCreams = [iceCreamByName allValues];
    
    for (NSUInteger i = 0; i < [iceCreams count]; i++){

        NSArray *returnArrayIceCream = [self namesForIceCream:iceCreams[i]];
        NSNumber *countNames = @([returnArrayIceCream count]);
        resultIceCream[iceCreams[i]] = countNames;
    }

    

    return resultIceCream;
}
@end




















