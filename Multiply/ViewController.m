//
//  ViewController.m
//  Multiply
//
//  Created by Jose Garcia on 3/9/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *mutiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@end

@implementation ViewController
- (IBAction)selectedSegment:(id)sender {

}

- (IBAction)onSliderMoved:(id)sender {
    NSString *slideNumber = [NSString stringWithFormat:@"%.1f",self.sliderValue.value];

    self.mutiplierLabel.text = slideNumber;


}

- (IBAction)onCalculateButtonPressed:(id)sender {
    int calculation;
    int numberOne = self.numberTextField.text.intValue;
    int numberTwo = self.mutiplierLabel.text.intValue;
    if (self.operatorSegmentControl.selectedSegmentIndex == 0){

        calculation = numberOne * numberTwo;
    }
    else if (self.operatorSegmentControl.selectedSegmentIndex == 1){
        calculation = numberOne / numberTwo;
    }


    NSString *calculationText = [NSString stringWithFormat:@"%i",calculation];
    self.answerLabel.text = calculationText;

    if (calculation >= 20){
        self.view.backgroundColor = [UIColor greenColor];
    }

    else if (calculation < 20){
        self.view.backgroundColor = [UIColor whiteColor];
    }

    if (calculation % 3 == 0){
        self.answerLabel.text = @"fizz";
    }

    if (calculation % 5 == 0){

        self.answerLabel.text = @"buzz";
    }

    if (calculation % 3 == 0 && calculation % 5 == 0){

        self.answerLabel.text = @"fizzbuzz";
    }

    [self.numberTextField resignFirstResponder]; 


}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
