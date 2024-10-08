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
