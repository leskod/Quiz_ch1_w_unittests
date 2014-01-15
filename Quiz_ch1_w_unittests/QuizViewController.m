//
//  QuizViewController.m
//  Quiz_ch1_w_unittests
//
//  Created by Lesko, Dereck on 1/15/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the init implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        //create 2 arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add data to the arrays
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
    }
    
    //return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count])
    {
        currentQuestionIndex = 0;
    }
    
    //get the string at the index in the question array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //log the string tothe console
    NSLog(@"displaying question: %@", question);
    
    //display the string in the question field
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    //what is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //display it
    [answerField setText:answer];
}

@end
