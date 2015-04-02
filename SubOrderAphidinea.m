//
//  SubOrderAphidinea.m
//  LessonTwo
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubOrderAphidinea.h"

@implementation SubOrderAphidinea

- (void) determination_Aphidinea {
    [super determination_Wings];
    [self determination_Wings];
    
    [super determination_Paws];
    [self determination_Paws];
    
    [super determination_Oral];
    [self determination_Mustache];
}

- (void) determination_Mustache {
    NSString * mustache = @"Антенны 3-6 члениковые";
    NSLog(@"%@", mustache);
}

- (void) determination_Wings {
    NSString * wings = @"Крылья прозрачные, задние крылья меньше передних";
    NSLog(@"%@", wings);
}

- (void) determination_Paws {
    NSString * paws = @"Лапки обычно 2-члениковые, всегда с парой коготков. Ноги удлиненные, с тонкими бедрами.";
    NSLog(@"%@", paws);
}

- (void) determination_SubOrderAphidinea : (NSString *) subOrderAphidinea {
    NSLog(@"Подотряд Тли (Aphidinea)");
}

@end
