//
//  AppDelegate.m
//  LessonTwo
//
//  Created by Admin on 01.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "AppDelegate.h"
#import "SubOrderCicadinea.h"
#import "SubOrderPsyllinea.h"
#import "SubOrderAleurodinea.h"
#import "SubOrderAphidinea.h"
#import "SubOrderCoccinea.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
   //инициализируем все методы, которые будем использовать:
    SubOrderCicadinea * cicadinea = [[SubOrderCicadinea alloc]init];
    OrderHomoptera * homoptera = [[OrderHomoptera alloc]init];
    SubOrderPsyllinea * psyllinea = [[SubOrderPsyllinea alloc]init];
    SubOrderAleurodinea * aleurodinea = [[SubOrderAleurodinea alloc]init];
    SubOrderAphidinea * aphidinea = [[SubOrderAphidinea alloc]init];
    SubOrderCoccinea * coccinea = [[SubOrderCoccinea alloc]init];
    
    //Объявляем номер в справочнике и название:
    //NSInteger i = 1;
    //NSString * item = [NSString stringWithFormat:@"%ld", i];
    //Нумерацию справочника пока убрала за ненадобностью.
    
    
    //Выводим на экран параграф и оглавление в справочнике (их берем из OrderHomoptera.m и SubOrderCicadinea.m):
    NSString * orderHomoptera;
    [homoptera determination_OrderHomoptera:orderHomoptera];
    NSString * subOrderCicadenia = @"- определение по взрослой особи.";
    [cicadinea determination_SubOrderCicadinea:subOrderCicadenia];
    //вызываем метод определения подотряда Цикадовых:
    [cicadinea determination_Cicadinea];
   
    
    //Выводим на экран следующий подотряд: Листоблошки (SubOrderPsyllinea):
    NSString * subOrderPsyllinea;
    [psyllinea determination_SubOrderPsyllinea:subOrderPsyllinea];
    [psyllinea determination_Psyllinea];
    
    //Выводим на экран следующий подотряд: Белокрылки (SubOrderAleurodinea):
    NSString * subOrderAleurodinea;
    [aleurodinea determination_SubOrderAleurodinea:subOrderAleurodinea];
    [aleurodinea determination_Aleurodinea];
                
    
    //Выводим на экран следующий подотряд: Тли (Aphidinea)
    NSString * subOrderAphidinea;
    [aphidinea determination_SubOrderAphidinea:subOrderAphidinea];
    [aphidinea determination_Aphidinea];
    
    //Выводим на экран следующий подотряд: Подотряд Кокциды (Coccinea)
    NSString * subOrderCoccinea;
    [coccinea determination_SubOrderCoccinea:subOrderCoccinea];
    [coccinea determination_Coccinea];
    
        
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

#pragma mark - Core Data stack

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "Admin.LessonTwo" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"LessonTwo" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and return a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"LessonTwo.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}


- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] init];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

@end
