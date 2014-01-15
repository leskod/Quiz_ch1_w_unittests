//
//  QuizViewController.h
//  Quiz_ch1_w_unittests
//
//  Created by Lesko, Dereck on 1/15/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController

{
    
    int currentQuestionIndex;
    
    //the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //the view objects - don't worry about iboutlet
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end
