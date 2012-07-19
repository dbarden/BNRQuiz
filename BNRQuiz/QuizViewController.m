//
//  QuizViewController.m
//  BNRQuiz
//
//  Created by Daniel Barden on 7/19/12.
//  Copyright (c) 2012 Daniel Barden. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController (){
    NSMutableArray *_questions;
    NSMutableArray *_answers;
    
    int currentQuestionIndex;
}
@end

@implementation QuizViewController

@synthesize questionField = _questionField;
@synthesize answerField   = _answerField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
        _answers   = [[NSMutableArray alloc] init];

        [_questions addObject:@"What is 7+7?"];
        [_answers addObject:@"14"];

        [_questions addObject:@"What is the capital of Vermont?"];
        [_answers addObject:@"Montpelier"];

        [_questions addObject:@"From what Cognac is made"];
        [_answers addObject:@"grapes"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    
    if (currentQuestionIndex == _questions.count)
        currentQuestionIndex = 0;
    
    NSString *question = [_questions objectAtIndex:currentQuestionIndex];
    
    _questionField.text = question;
    _answerField.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [_answers objectAtIndex:currentQuestionIndex];
    _answerField.text = answer;
}
@end
