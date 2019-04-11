//this is my first time messing around with obj-c/logos and I thought it might
// be fun to make a simple little godmode for happy wheels ;p.

//This is a full-fledged godmode for Happy Wheels! This will stop the player
// from dying and will also stop the vehicles from being able to be destroyed.

%hook Spikes
//hook spikes class and disable actions function
-(void) actions{

}

%end

%hook HomingMine

//disables homingmines completley

-(void) targetAdd:(id)id{

	id = 0;

}

-(void) explode{

}

-(void) actions{

}

%end

%hook Mine //this is landmine, not those homing mines

-(void) triggerSingleActivation{

}

-(void) frameAction{

}

-(void) singleAction{

}

%end

%hook HarpoonGun

//disable harpoons ability to target players

-(void) targetAdd:(id)id{

	id = 0;

}

-(void) targetAdd2:(id)id{

	id = 0;

}

%end

%hook ArrowGun

//disable arrow guns ability to target players

-(void) targetAdd:(id)id{

	id = 0;

}

-(void) targetAdd2:(id)id{

	id = 0;

}

%end

%hook CharacterB2D

//Godmode stuff

-(void) setDying:(bool)dying{

	dying = NO;

}

-(void) setDead:(bool)ded{

	ded = NO;

}

-(void) actions{

}

-(void) die{

}

-(bool) dying{

	return NO;

}

//important because for some reason even with the below function,
// player would still die?
-(void) headSmash{

}

//this stops sharp objects(knives, etc.) from killing the player
-(void) shapeImpale:(bool)b2Fixture fatal:(bool)fatal{

	fatal = NO;

}

%end

%hook Wheelchair

//disable wheelchair from being destroyed

-(void) handleContactResults{

}

-(void) frameSmash{

}

-(void) wheelSmash{

}

-(void) fueltankSmash{

}

-(void) jetSmash{

}

%end

%hook Bike

//disable bike from being destroyed

-(void) handleContactResults{

}

-(void) frameSmash{

}

-(void) frontWheelSmash{

}

-(void) backWheelSmash{

}

%end

%hook Segway

//disable segway from being destroyed

-(void) handleContactResults{

}

-(void) frameSmash{

}

%end


%hook MotorCart

//disable shoppingcart from being destroyed

-(void) handleContactResults{

}

-(void) frameSmash{

}

%end