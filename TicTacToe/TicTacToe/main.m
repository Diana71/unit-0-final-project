//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.

#import <Foundation/Foundation.h>


@interface TicTacToe : NSObject

-(void) setGameLevel:(int *)gameLevel;
-(int *)gameLevel;

-(void) setSingleOrMultiMode:(int *)singleOrMultiMode;
-(int *)singleOrMultiMode;



-(char)parseData:(NSString *)parsedData;


@end


@implementation TicTacToe

int *_gameLevel;
int *_singleOrMultiMode;


-(void)setGameLevel:(int *)gameLevel {
_gameLevel = gameLevel;
}


-(int *) gameLevel {
return _gameLevel;
}


-(void)setSingleOrMultiMode:(int *)singleOrMultiMode {
_singleOrMultiMode = singleOrMultiMode;
}

-(int *)singleOrMultiMode {
return _singleOrMultiMode;
}



-(char)parseData:(NSString *)dataToParse {
    //declare variable for use holding x and o
//    char  oXchoice[2];
   NSString * ns_oXchoice ;
    
    
    /*-------------------------------------------start data parse ------------------------------------------------*/
    
    //
    //
    while (true) {
        
//        NSLog(@"Choose x or o: ");
//        scanf("%s", oXchoice);
//        fpurge(stdin);
        
        // convert userOption to nsstring
        //ns_oXchoice= [NSString stringWithCString: dataToParse encoding: NSASCIIStringEncoding];
        
        
        //check nsConversion for good input x/o, regject everything else
        if ([ns_oXchoice length] == 1 && ([ns_oXchoice isEqualToString:@"x"] || [ns_oXchoice isEqualToString:@"o"])) {
            NSLog(@"This is your choice: %@",ns_oXchoice);
            //break;
        }
        else  {
            NSLog (@"Wrong choice! ");
            continue;
        } //end nsConversion filter check
        


    }return ns_oXchoice;
}
@end


int main(int argc, const char * argv[]) {
@autoreleasepool {
    
    
    
    NSLog(@"Choose skill level \n 1 = 3x3 Grid \n 2 = 4x4 grid \n 3 = custom ");
    scanf("%d",& _gameLevel);
    fpurge(stdin);

    NSLog(@"Choose playerMode [1 or 2 player ");
    scanf("%d", &_singleOrMultiMode);
    fpurge(stdin);
    

    //TicTacToe *gameX = [[TicTacToe alloc] init];
    //[gameX setGameLevel:_gameLevel];
   // [gameX setSingleOrMultiMode:_singleOrMultiMode];
    if(_gameLevel == 1){
    //display grid numbers for users and instructions
    NSLog (@" 1 | 2 | 3");
    NSLog (@"-----------");
    NSLog (@" 4 | 5 | 6");
    NSLog (@"-----------");
    NSLog (@" 7 | 8 | 9");
    NSLog (@"\n");
    }
    else if(_gameLevel == 2){
        NSLog (@" 1  |  2  | 3  |  4");
        NSLog (@"-------------------");
        NSLog (@" 5  |  6  | 7  | 8");
        NSLog (@"--------------------");
        NSLog (@" 9  | 10  | 11 | 12 ");
        NSLog (@"--------------------");
        NSLog (@" 13 | 14  | 15 | 16 ");
        NSLog (@"\n");

    }
    
    //create and initialize mutableArray
    //FUNCTION create the array
    int x = 0;
    int gridSize;
    //let this value come from gameLevel [ 1 = [3x3 grid] / 2 = 16 [4x4 grid] / [5x5 grid]
    if (_gameLevel == 1){
        x = 3;
    }
        else if (_gameLevel == 2){
        x = 4;

    }
    gridSize = x;
    
    
        
    NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:gridSize];
    
    
    char RawCharToEnodeToNSString[2];
    NSString * encodedNSStringSentFunction;
    NSString *parsedDataFromFunction;
    
    NSString *testME;
    testME = @"someWord";
    
//    NSLog(@"Choose x or o: ");
//    scanf("%s", RawCharToEnodeToNSString);
//    //fpurge(stdin);
//
//     encodedNSStringSentFunction = [NSString stringWithCString: RawCharToEnodeToNSString encoding: NSASCIIStringEncoding];
//    
//    
//    TicTacToe *gameOne = [[TicTacToe alloc] init];
//    [gameOne parseData: testME];
//    NSLog (@"print out testME %@",testME);
    
    
    //declare variable for use holding x and o
    char  oXchoice[2];
    NSString * ns_oXchoice ;
            
    
     /*-------------------------------------------start data parse ------------------------------------------------*/

//
//
         while (true) {

            NSLog(@"Choose x or o: ");
            scanf("%s", oXchoice);
            fpurge(stdin);

            // convert userOption to nsstring
            ns_oXchoice= [NSString stringWithCString: oXchoice encoding: NSASCIIStringEncoding];


            //check nsConversion for good input x/o, regject everything else
            if ([ns_oXchoice length] == 1 && ([ns_oXchoice isEqualToString:@"x"] || [ns_oXchoice isEqualToString:@"o"])) {
                NSLog(@"This is your choice: %@",ns_oXchoice);
                //break;
            }
            else  {
                NSLog (@"Wrong choice! ");
                continue;
            } //end nsConversion filter check
                            
        
        /*--------------------------------------------------------------------------------------------------------------------------------------*/
                    


        
     
   for (int i=0; i<gridSize; i++) {
        boxes[i] = @" ";
    }
//
//get a number a number from user [1-9] to choose a single grid box
    int number;
 /*-------------------------------------------------------Run the Game With 3x3 Grid size is coded into for loop-------------------------------------*/
   
    
   for (int i =0; i<gridSize; i++){
   
       //run game until all boxes are filled up
        while ([boxes[i] isEqualTo:@" "]) {
            NSLog(@"Enter a number ");
            scanf("%d", &number);
            fpurge(stdin);
            int adjInputForOffset;
            adjInputForOffset = number-1;
            //check for empty boxes before entering user selected options
            if ([boxes[adjInputForOffset] isNotEqualTo:@" "]){
                NSLog(@"please choose another box");
            }
            
            
            //if box is empty enter user selection
            else if ([boxes[adjInputForOffset] isEqualTo:@" "]){
                boxes[adjInputForOffset] = ns_oXchoice;
            }
            
            //x's and o's are transposed but still work in game
            if ([ns_oXchoice isEqualToString:@"x"]){
                ns_oXchoice = @"o";
            }
            else {
                ns_oXchoice = @"x";
            
            }
            //3x3 grid
             for (int i =0; i<gridSize; i++){
                 if (_gameLevel ==1){
               
                    NSLog(@" ----|-----|-----");
            NSLog (@"\n");
                 }
              //4x4 grid
                else if(_gameLevel == 2 ) {
                NSLog (@" -----|-----|------|-----");
                NSLog (@"\n");
                
                }
                
            }
      
            
            int boxesChecked = 0;
          
            int resetCounter = 0;
            int userLevel = 2;
            
            
            
            while (boxesChecked < gridSize){
                int xCount = 0;
                int oCount =0;
                int oTotalCount;
                int xTotalCount;

              
                
                for(int i=0; i<(gridSize); i++){
                    if ([boxes[adjInputForOffset] isEqualToString:@"x"]){
                        xCount = xCount+1;
                    } else if ([boxes[adjInputForOffset] isEqualToString:@"o"]){
                        oCount = oCount+1;
                    }
                    oTotalCount = oCount/gridSize;
                    xTotalCount = xCount/gridSize;
                    

                }//end for loop
               
                
                NSLog(@"%d xTotalCount ",xTotalCount);
                NSLog(@"%d oTotalCount ",oTotalCount);
                boxesChecked = boxesChecked + 1;
                NSLog(@"%d boxesChecked\n\n\n",boxesChecked);
            }//end while loop
            
                
            
        
         }
        
        
    }
            
   
    } // end of while
 }


return 0;
}


