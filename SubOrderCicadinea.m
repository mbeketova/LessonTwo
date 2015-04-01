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
    
    int pawsI = 3;
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Лапки %i-х члениковые", pawsI);
}

//определение по усикам:
- (void) determination_Mustache {
    
    int mustacheI = 3;
    NSString * mustacheL = @"очень короткие ";
    
    //в дальнейшем здесь будут условия
    
    
    NSLog(@"Антенны %@,%i-х члениковые.", mustacheL, mustacheI);

}

//дополнительное определение по крыльям
- (void) determination_Wings {
    
    NSString * wings = @"Крылья с продольными и поперечными жилками.";
   /*BOOL boolWings = YES;
    в дальнейшем здесь будет задаваться вопрос, сканироваться ответ и создаваться условие на выполнение условия: (!=boolWings)*/
    
    NSLog(@"%@", wings);
}

//выводим название подотряда: 
- (void) determination_SubOrderCicadinea : (NSString *) subOrderCicadinea{
    NSLog(@"Подотряд Цикадовые (Cicadinea)%@", subOrderCicadinea);
}

@end
