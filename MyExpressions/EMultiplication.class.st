Class {
	#name : 'EMultiplication',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
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
EMultiplication >> left: anExpression [
	"Set an expression at the left subexpression."

	left := anExpression

]

{ #category : 'accessing' }
EMultiplication >> right: anExpression [
	"Set an expression at the right subexpression."

	right := anExpression

]
