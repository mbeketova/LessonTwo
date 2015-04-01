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
    
    NSString * wingsI = @"Насекомые с двумя парами крыльев, или крылья отсутствуют.";
    NSString * wingsP = @"Крылья без чешуек (голые или покрытые мучнистым налетом) или передние крылья ороговевшие.";
    NSString * wingsB = @"По крайней мере, передний край передних крыльев без бахромы из длинных волосков.";
    
    //в дальнейшем здесь будет условие
    
    
    NSLog(@"%@ %@ %@", wingsI, wingsP, wingsB);
}

//определяем отряд по лапкам:
- (void) determination_Paws {
    
    NSString * paws = @"Лапки с коготками.";
    
    //в дальнейшем здесь будет условие
    
    NSLog(@"%@", paws);
    
}

//определяем отряд по ротовому аппарату:
- (void) determination_Oral {
    
    NSString * oralOne = @"Ротовой аппарат колюще-сосущий в виде членистого хоботка.";
    NSString * oralTwo = @"Хоботок причленяется к задней части головы.";
    
    //в дальнейшем здесь будут условия
    

    
    NSLog(@"%@ %@", oralOne, oralTwo);

}

//Выводим название отряда:
- (void) determination_OrderHomoptera : (NSString*) orderHomoptera {
    NSLog(@"Отряд Равнокрылые (Homoptera) %@", orderHomoptera);
}


@end
