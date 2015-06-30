//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.

#import <Foundation/Foundation.h>


@interface TicTacToe : NSObject

-(void) setGameLevel: (int  *)gameLevel;
-(int *)gameLevel;

-(void) setUserMode: (int  *)userMode;
-(int *)userMode;
@end


@implementation TicTacToe

    int *_gameLevel;
    int *_userMode;


-(void) setGameLevel:(int *)gameLevel{
    _gameLevel = gameLevel;
}


-(int *) gameLevel {
    return _gameLevel;
}


-(void) setUserMode: (int *)userMode{
    _userMode = userMode;
}
    
-(int *) userMode {
    return _userMode;
}


@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        int *userSkill = 0;
        int *playerMode = 0;
            NSLog(@"Choose skill level \n 1 = have fun \n 2 = go hard \n 3 = Terror Dome ");
            scanf("%i", userSkill);
            fpurge(stdin);
        
        NSLog(@"Choose playerMode [1 or 2 player ");
        scanf("%i", playerMode);
        fpurge(stdin);


        
        TicTacToe *runGame = [[TicTacToe alloc] init];
        [runGame setGameLevel:(userSkill,playerMode)];
        

        
        
        
//        NSLog(@"Homework, redone");
//        
//        Person *carl = [[Person alloc] init];
//        Person *mike = [[Person alloc] init];
//        
//        [carl setName:@"Carl"];
//        
//        [carl setCity:@"Okinawa"];
//        [mike setCity:@"New York"];
        
        
        //display grid numbers for users and instructions
        NSLog (@" 1 | 2 | 3");
        NSLog (@"-----------");
        NSLog (@" 4 | 5 | 6");
        NSLog (@"-----------");
        NSLog (@" 7 | 8 | 9");
        NSLog (@"\n");
        
        
        //create and initialize mutableArray
        //FUNCTION create the array
        int gridSize;
        //let this value come from gameLevel [ easy =9 [3x3 grid] / harder = 16 [4x4 grid] / hardest 25 [5x5 grid]
        gridSize = 9;
        
        NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:gridSize];
        
        
        
        
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
                

                
                //working grid for playing the game
                for (int i =0; i<gridSize/3; i++){
                NSLog (@"\t%@",boxes[i]);
                NSLog (@"\t\t%@",boxes[i]);
                NSLog (@"\t\t\t\t%@",boxes[i]);
                NSLog (@" ----|-----|-----");
                 NSLog (@"\n");
              
                };
                
               
                
                int boxesChecked = 0;
              
                int resetCounter = 0;
                int userLevel = 2;
                
                
                
                
                
              
                
                
//                while (boxesChecked < gridSize){
//                    int xCount = 0;
//                    int oCount =0;
//                    int oTotalCount;
//                    int xTotalCount;
//
//                  
//                    
//                    for(int i=0; i<(gridSize); i++){
//                        if ([boxes[adjInputForOffset] isEqualToString:@"x"]){
//                            xCount = xCount+1;
//                        } else if ([boxes[adjInputForOffset] isEqualToString:@"o"]){
//                            oCount = oCount+1;
//                        }
//                        oTotalCount = oCount/gridSize;
//                        xTotalCount = xCount/gridSize;
//                        
//
//                    }//end for loop
//                   
//                    
//                    NSLog(@"%d xTotalCount ",xTotalCount);
//                    NSLog(@"%d oTotalCount ",oTotalCount);
//                    boxesChecked = boxesChecked + 1;
//                    NSLog(@"%d boxesChecked\n\n\n",boxesChecked);
//                }//end while loop
                
                    
                
            
             }
            
            
        }
                
       
        } // end of while
     }

   // }

    return 0;
}



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//8:30

//
//  main.m
//  TicTacToe
//
//  Created by Michael Kavouras on 6/25/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//
//#import <Foundation/Foundation.h>
//
//
//@interface TicTacToe : NSObject
//
//-(void) setName: (NSString *)name;
//-(NSString *)name;
//
//-(void) setUserMode: (NSString *)userMode;
//-(NSString *)userMode;
//
//@end
//
//
//@implementation TicTacToe
//NSString *_name;
//NSString *_userMode;
//
//-(void) setName: (NSString *)name{
//    _name = name;
//}
//
//-(NSString *) name {
//    return _name;
//}
//
//
//-(void) setUserMode: (NSString *)userMode{
//    _userMode = userMode;
//
//
//    //create and initialize mutableArray
//    NSMutableArray *boxes = [NSMutableArray arrayWithCapacity:9];
//    for (int i=0; i<9; i++) {
//        boxes[i] = @" ";
//    }
//    
//    //get a number a number from user [1-9]
//    int number;
//    char * userOption;
//    NSString *oxChoice;
//    //create grid size; (9 = 3x3 grid)
//    for (int i =0; i<9; i++){
//        
//        
//        //run game until all boxes are filled up
//        while ([boxes[i] isEqualTo:@" "]) {
//            printf ("Enter a number ");
//            scanf("%d", &number);
//            
//            
//            //check for empty boxes before entering user selected options
//            if ([boxes[number-1] isNotEqualTo:@" "]){
//                NSLog(@"please choose another box");
//            }
//            
//            
//            //if box is empty enter user selection
//            else if ([boxes[number-1] isEqualTo:@" "]){
//                boxes[number-1] = oxChoice;
//            }
//            
//            //working grid for playing the game
//            NSLog (@" %@ | %@ | %@ ", boxes[0],boxes[1],boxes[2]);
//            NSLog (@"-----------");
//            NSLog (@" %@ | %@ | %@ ", boxes[3],boxes[4],boxes[5]);
//            NSLog (@"-----------");
//            NSLog (@" %@ | %@ | %@ ", boxes[6],boxes[7],boxes[8]);
//            NSLog (@"\n\n\n\n");
//            
//            
//            if ([oxChoice isEqualToString:@"x"])
//                oxChoice = @"o";
//            else
//                (oxChoice = @"x");
//            
//            
//            
//            
//            
//        }
//        
//        
//    }//end of for LOOP
//    
//    
//    
//}
//@end
//
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        
//        int singleOrMultiplayer;
//        int singlePlayerLevel, multiplePlayerLevel;
//        char player1Name[30], player2Name[30];
//        NSString *nsConversion ;
//        
//        
//        while (true) {
//            NSLog (@"1. Single player");
//            NSLog (@"2. Multiple players");
//            scanf("%d", &singleOrMultiplayer);
//            fpurge(stdin);
//            
//            
//            if (singleOrMultiplayer == 1) {
//                NSLog (@"1. Level 1: Computer is totally dumb.");
//                NSLog (@"2. Level 2: Computer is smarter.");
//                NSLog (@"3. Level 3: You MAY win (only when you start).");
//                NSLog (@"4. Level 4: Computer NEVER loses.");
//                scanf ("%d", &singlePlayerLevel);
//                break;
//            }
//            else if (singleOrMultiplayer == 2) {
//                NSLog (@"1. Level 1: Easy level");
//                NSLog (@"2. Level 2: Loose your turn if you pick up an occupied box");
//                scanf ("%d", &multiplePlayerLevel);
//                break;
//            }
//            else if ((singleOrMultiplayer != 1) || (singleOrMultiplayer != 2)) {
//                NSLog (@"Wrong choice! ");
//                continue;
//            }
//            
//        } //end of while
//        
//        
//        if (singleOrMultiplayer == 1) {
//            NSLog(@"Player 1 Name:  ");
//            scanf ("%s", player1Name);
//            fpurge(stdin);
//            
//            if (singlePlayerLevel == 1) {
//                
//            } //end of if (singlePlayerLevel == 1)
//            else if (singlePlayerLevel == 2) {
//                
//            } //end of if (singlePlayerLevel == 2)
//            
//            else if (singlePlayerLevel == 3) {
//                
//            } //end of if (singlePlayerLevel == 3)
//            
//            else if (singlePlayerLevel == 2) {
//                
//            } //end of if (singlePlayerLevel == 3)
//            
//            else if (singlePlayerLevel == 4) {
//                
//            } //end of if (singlePlayerLevel == 4)
//            
//            
//            
//        } // end of if (singleOrMultiplayer == 1)
//        
//        
//        else if (singleOrMultiplayer == 2) {
//            NSLog(@"Player 1 Name:  ");
//            scanf ("%s", player1Name);
//            NSLog(@"Player 2 Name:  ");
//            scanf ("%s", player2Name);
//            fpurge(stdin);
//            
//            
//            if (multiplePlayerLevel == 1) {
//                // play the game without loosing your turn
//            } //end of if (multiplePlayerLevel == 1)
//            
//            else if (multiplePlayerLevel == 2) {
//                // play the game and loose your turn
//            } // end of if (multiplePlayerLevel == 2)
//            
//            
//            
//        } // end of if (singleOrMultiplayer == 2)
//        
//        
//        //display grid numbers for users and instructions
//        NSLog (@" 1 | 2 | 3");
//        NSLog (@"-----------");
//        NSLog (@" 4 | 5 | 6");
//        NSLog (@"-----------");
//        NSLog (@" 7 | 8 | 9");
//        NSLog (@"\n");
//        
//        char * userOption;
//        NSString *oxChoice;
//        
//        
//        while (true) {
//            
//            NSLog(@"Choose x or o: ");
//            scanf("%s", userOption);
//            fpurge(stdin);
//            
//            // convert userOption to nsstring
//            nsConversion = [NSString stringWithCString: userOption encoding: NSASCIIStringEncoding];
//            
//            
//            //check nsConversion for good input x/o, regject everything else
//            if ([nsConversion length] == 1 && ([nsConversion isEqualToString:@"x"] || [nsConversion isEqualToString:@"o"])) {
//                NSLog(@"This is your choice: %@",nsConversion);
//                break;
//            }
//            else  {
//                NSLog (@"Wrong choice! ");
//                continue;
//            } //end nsConversion filter check
//            
//        } // end of while
//        
//        
//        TicTacToe *user1 = [[TicTacToe alloc] init];
//        
//        [user1 setUserMode:nsConversion];
//        
//    }
//    return 0;
//}
