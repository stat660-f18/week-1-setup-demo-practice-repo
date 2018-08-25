**always close the output window;
**Window menu on top --> Tile vertically, so that editor and log are simutaneously;

*data step; *proc step;
data _null_; /*_null_ prevents the output of a dataset*/
	put 'modified notes'; /*put statement outputs in the log, helpful debugging tool,determines how far a program has run before errors*/
run; /*terminate the data step*/

data _null_;
	do i=1 to 100; /*use loop to repeat an operation*/
		/*use branching logic to test the value of variable i*/
		if mod(i,3)=0 and mod(i,5)=0 then put 'Fizz Buzz';
		else if mod(i,3)=0 then put 'Fizz'; /*mod function*/
		else if mod(i,5)=0 then put 'Buzz';
		else put i=;
	end;
run;
