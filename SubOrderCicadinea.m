//
//  SubOrderCicadinea.m
//  LessonTwo
//
//  Created by Admin on 01.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "SubOrderCicadinea.h"
#import "OrderHomoptera.h"


//определяем подотряд Цикадовые (Cicadinea) - отряда Равнокрылые (Homoptera)

@implementation SubOrderCicadinea

- (void) determination_Cicadinea {
    [super determination_Wings];
    [self determination_Wings];
    
    [super determination_Paws];
    [self determination_Paws];
    
    [super determination_Oral];
    [self determination_Mustache];
    
}

//дополнительное определение по лапкам:
- (void) determination_Paws {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Лапки 3-члениковые.");
}

//определение по усикам:
- (void) determination_Mustache {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Антенны очень короткие, 3-х члениковые.");

}

//дополнительное определение по крыльям
- (void) determination_Wings {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Крылья с продольными и поперечными жилками.");
}

@end
