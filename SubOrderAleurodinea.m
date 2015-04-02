//
//  SubOrderAleurodinea.m
//  LessonTwo
//
//  Created by Admin on 02.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubOrderAleurodinea.h"

@implementation SubOrderAleurodinea

- (void) determination_Aleurodinea {
    [super determination_Wings];
    [self determination_Wings];
    
    [super determination_Paws];
    [self determination_Paws];
    
    [super determination_Oral];
    [self determination_Mustache];
}

- (void) determination_Paws {
    NSString * paws = @"Ноги удлиненные, с тонкими бедрами";
    NSLog(@"%@", paws);
}

- (void) determination_Mustache {
    NSString * mustache = @"Антенны 7-и члениковые.";
    NSLog(@"%@", mustache);
}

- (void) determination_Wings {
    NSString * wings = @"Обе пары крыльев покрыты белым налетом, непрозрачные";
    NSLog(@"%@", wings);
}

- (void) determination_SubOrderAleurodinea : (NSString *) subOrderAleurodinea {
    NSLog(@"Подотряд Белокрылки (Aleurodinea)");
}

@end
