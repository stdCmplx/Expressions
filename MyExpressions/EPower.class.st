Class {
	#name : 'EPower',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EPower class >> fivePowerThree [
	<sampleInstance>
	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	^ self new left: ep1 ; right: ep2

]

{ #category : 'instance creation' }
EPower class >> left: anExp1 right: anExp2 [
	
	^ self new left: anExp1 ; right: anExp2

]

{ #category : 'public access' }
EPower >> evaluate [

	^ (left evaluate) ** (right evaluate)

]

{ #category : 'public access' }
EPower >> operatorString [

	^ ' ^ '

]

{ #category : 'public access' }
EPower >> printOn: aStream [
	"Printing a raising to power is: put an open parenthesis, print the
	 left expression, put ’ ^ ’, print the right expression and
	 put a closing parenthese in the stream."
	
	aStream
		nextPutAll: '( ';
		nextPutAll: left printString;
		nextPutAll: self operatorString;
		nextPutAll: right printString;
		nextPutAll: ' )'

]
