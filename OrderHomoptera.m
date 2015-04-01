//
//  OrderHomoptera.m
//  LessonTwo
//
//  Created by Admin on 01.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "OrderHomoptera.h"

@implementation OrderHomoptera


//свойства отряда Равнокрылые (Homoptera) по крыльям, лапкам и ротовому аппарату:

- (void) determination_Homoptera {
    [self determination_Wings];
    [self determination_Paws];
    [self determination_Oral];
}

//определяем отряд по крыльям:
- (void) determination_Wings {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Насекомые с двумя парами крыльев, или крылья отсутствуют. Крылья без чешуек (голые или покрытые мучнистым налетом) или передние крылья ороговевшие. По крайней мере, передний край передних крыльев без бахромы из длинных волосков.");
}

//определяем отряд по лапкам:
- (void) determination_Paws {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Лапки с коготками.");
    
}

//определяем отряд по ротовому аппарату:
- (void) determination_Oral {
    
    //в дальнейшем здесь будут условия
    
    NSLog(@"Ротовой аппарат колюще-сосущий в виде членистого хоботка. Хоботок причленяется к задней части головы.");

}

@end
