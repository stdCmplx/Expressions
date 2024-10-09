Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2

]

{ #category : 'instance creation' }
EMultiplication class >> left: anExp1 right: anExp2 [
	
	^ self new left: anExp1 ; right: anExp2

]

{ #category : 'accessing' }
EMultiplication >> evaluate [
	"The evaluate method for multiplication."

	^ (left evaluate) * (right evaluate)

]

{ #category : 'accessing' }
EMultiplication >> operatorString [

	^ ' * '

]

{ #category : 'accessing' }
EMultiplication >> printOn: aStream [
	"Printing a multiplication is: put an open parenthesis, print the
	 left expression, put ’ * ’, print the right expression and
	 put a closing parenthese in the stream."
	
	aStream
		nextPutAll: '( ';
		nextPutAll: left printString;
		nextPutAll: ' * ';
		nextPutAll: right printString;
		nextPutAll: ' )'

]
