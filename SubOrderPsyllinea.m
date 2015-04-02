//
//  SubOrderPsyllinea.m
//  LessonTwo
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubOrderPsyllinea.h"

@implementation SubOrderPsyllinea

- (void) determination_Psyllinea {
    [super determination_Wings];
    [self determination_Wings];
    
    [super determination_Paws];
    [self determination_Paws];
    
    [super determination_Oral];
    [self determination_Mustache];
    
}

- (void) determination_Paws {
    NSString * paws = @"Лапки 1-2 члениковые или отсутствуют (обычно 2-х члениковые), всегда с парой коготков. Ноги короткие, задние ноги с утолщенными бедрами, прыгательные. ";
    NSLog(@"%@", paws);
    
}

- (void) determination_Wings {
    NSString * wings = @"Крылья, если развиты, без поперечных жилок. Крыльев две пары или они отсутствуют.";
    NSLog(@"%@", wings);
}

- (void) determination_Mustache {
    NSString * mustache = @"Антенны 10-члениковые";
    NSLog(@"%@", mustache);
}

- (void) determination_SubOrderPsyllinea : (NSString *) psyllinea {
    NSLog(@"Подотряд Листоблошки (Psyllinea)");
}

@end
