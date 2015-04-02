//
//  SubOrderCoccinea.m
//  LessonTwo
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubOrderCoccinea.h"

@implementation SubOrderCoccinea

- (void) determination_Coccinea {
    [super determination_Wings];
    [self determination_Wings];
    
    [super determination_Paws];
    [self determination_Paws];
    
    [super determination_Oral];
    
}

- (void) determination_Paws {
    NSString * paws = @"Лапки 1-члениковые, всегда с одним коготком";
    NSLog(@"%@", paws);
}

- (void) determination_Wings {
    NSString * wings = @"Крыльев одна пара или они отсутствуют";
    NSLog(@"%@", wings);
    
}

- (void) determination_SubOrderCoccinea : (NSString*) subOrderCoccinea {
    NSLog(@"Подотряд Кокциды (Coccinea)");
}

@end
