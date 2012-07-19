//
//  QuizViewController.h
//  BNRQuiz
//
//  Created by Daniel Barden on 7/19/12.
//  Copyright (c) 2012 Daniel Barden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *questionField;
@property (nonatomic, strong) IBOutlet UILabel *answerField;

// IBActions
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
